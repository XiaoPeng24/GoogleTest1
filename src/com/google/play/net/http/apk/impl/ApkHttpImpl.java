package com.google.play.net.http.apk.impl;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.http.HttpEntity;

import com.akdeniz.googleplaycrawler.GooglePlay;
import com.akdeniz.googleplaycrawler.GooglePlay.AggregateRating;
import com.akdeniz.googleplaycrawler.GooglePlay.AndroidAppDeliveryData;
import com.akdeniz.googleplaycrawler.GooglePlay.AppDetails;
import com.akdeniz.googleplaycrawler.GooglePlay.BuyResponse;
import com.akdeniz.googleplaycrawler.GooglePlay.DetailsResponse;
import com.akdeniz.googleplaycrawler.GooglePlay.DocV2;
import com.akdeniz.googleplaycrawler.GooglePlay.HttpCookie;
import com.akdeniz.googleplaycrawler.GooglePlay.Image;
import com.akdeniz.googleplaycrawler.GooglePlay.Offer;
import com.akdeniz.googleplaycrawler.GooglePlay.ResponseWrapper;
import com.akdeniz.googleplaycrawler.GooglePlay.SearchResponse;
import com.google.play.model.ApkInfo;
import com.google.play.model.GmailInfo;
import com.google.play.net.http.apk.ApkHttp;
import com.google.play.net.http.base.impl.BaseHttpImpl;
import com.google.play.util.file.FileUtil;
import com.google.play.util.other.Constants;
import com.google.play.util.other.ToolUtils;

public class ApkHttpImpl extends BaseHttpImpl implements ApkHttp {

	public FileUtil getFileUtil() {
		return fileUtil;
	}

	public void setFileUtil(FileUtil fileUtil) {
		this.fileUtil = fileUtil;
	}

	private FileUtil fileUtil;

	@Override
	public ApkInfo getApkDetail(String packageName, GmailInfo gmailInfo) throws Exception{
		try {
			HttpEntity entity = executeGet(
					Constants.URL_DETAILS,
					new String[][] { { "doc", packageName } },
					getHeaderParameters(gmailInfo.getLoginToken(),
							gmailInfo.getDeviceId(),
							Constants.HEAD_CONTENT_TYPE,
							Constants.HEAD_LOCALIZATION));
			DetailsResponse detailsResponse = GooglePlay.ResponseWrapper
					.parseFrom(entity.getContent()).getPayload()
					.getDetailsResponse();
			ApkInfo apkInfo = new ApkInfo();

			DocV2 docV2 = detailsResponse.getDocV2();
			apkInfo.setPackageName(docV2.getDocid());
			apkInfo.setTitle(docV2.getTitle());
			apkInfo.setCreator(docV2.getCreator());
			apkInfo.setDescription(docV2.getDescriptionHtml());

			Offer offer = docV2.getOffer(0);
			apkInfo.setCurrencyCode(offer.getCurrencyCode());
			apkInfo.setFormattedAmount(offer.getFormattedAmount());
			apkInfo.setCheckoutFlowRequired(String.valueOf(offer
					.getCheckoutFlowRequired()));
			apkInfo.setOfferType(offer.getOfferType());

			List<Image> images = docV2.getImageList();
			for (int i = 0; i < images.size(); i++) {
				Image image = images.get(i);
				if (image.getImageType() == 0) {
					apkInfo.setHdResIconPath(image.getImageUrl());
					;
				}
				if (image.getImageType() == 4) {
					apkInfo.setLdResIconPath(image.getImageUrl());
					if(apkInfo.getHdResIconPath() == null){
						//如果高清图标为空，则设置为默认的
						apkInfo.setHdResIconPath("https://lh4.ggpht.com/YE18fn9C7TwUawWMzLP6jylOHumLfj37EbdiwJ6RQr3b46pce52WJI32Veb11b63dxU");
					}
				}
			}

			AppDetails details = docV2.getDetails().getAppDetails();
			apkInfo.setVersionCode(details.getVersionCode());
			apkInfo.setVersionString(details.getVersionString());
			// apkInfo.setCategory(details.getAppCategory(0));
			apkInfo.setInstallationSize(String.valueOf(details.getInstallationSize()));
			// apkInfo.setPermissions(details.getPermissionList());
			apkInfo.setDeveloperEmail(details.getDeveloperEmail());
			apkInfo.setDeveloperWebsite(details.getDeveloperWebsite());
			apkInfo.setNumDownloads(details.getNumDownloads());
			apkInfo.setUploadDate(details.getUploadDate());

			AggregateRating rating = docV2.getAggregateRating();
			apkInfo.setStarRating(rating.getStarRating() + "");
			apkInfo.setRatingCount(String.valueOf(rating.getRatingsCount()));

			return apkInfo;

		} catch (Exception e) {
			
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public Boolean downloadApk(ApkInfo apkInfo, GmailInfo gmailInfo) throws Exception{
		try {
			HttpEntity entity = executePost(
					Constants.URL_PURCHASE,
					new String[][] {
							{ "ot", String.valueOf(apkInfo.getOfferType()) },
							{ "doc", apkInfo.getPackageName() },
							{ "vc", String.valueOf(apkInfo.getVersionCode()) } },
					getHeaderParameters(gmailInfo.getLoginToken(),
							gmailInfo.getDeviceId(),
							Constants.HEAD_CONTENT_TYPE,
							Constants.HEAD_LOCALIZATION));

			ResponseWrapper responseWrapper = GooglePlay.ResponseWrapper
					.parseFrom(entity.getContent());
			BuyResponse buyResponse = responseWrapper.getPayload()
					.getBuyResponse();

			AndroidAppDeliveryData appDeliveryData = buyResponse
					.getPurchaseStatusResponse().getAppDeliveryData();

			HttpCookie downloadAuthCookie = appDeliveryData
					.getDownloadAuthCookie(0);

			HttpEntity httpEntity = executeGet(
					appDeliveryData.getDownloadUrl(), null,
					getDownloadHeaderParameters(downloadAuthCookie.getName()
							+ "=" + downloadAuthCookie.getValue()));
			InputStream inputStream = httpEntity.getContent();
            
			String path = fileUtil.write2File(inputStream, Constants.APK_SAVE_DIR,
					apkInfo.getPackageName(), ".apk");
			
			System.out.println("下载完成--" +path);
			
			
			
			return true;

		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return false;
	}
	// 下载完后并未更新 数据库信息，漏洞
	public void downloadApkImgs(ApkInfo apkInfo) throws Exception {
		try {
			HttpEntity httpEntity = executeGet(apkInfo.getHdResIconPath(), null, 
					getCommonHearderParameters());
			InputStream inputStream = httpEntity.getContent();
			System.out.println(inputStream);
			String path = fileUtil.write2File(inputStream, Constants.IMG_SAVE_DIR, 
					ToolUtils.encodeByMd5(apkInfo.getHdResIconPath()), ".png");
			
			httpEntity = executeGet(apkInfo.getLdResIconPath(), null, getCommonHearderParameters());
			inputStream = httpEntity.getContent();
			path = fileUtil.write2File(inputStream, Constants.IMG_SAVE_DIR, 
					ToolUtils.encodeByMd5(apkInfo.getLdResIconPath()), ".png");
			String hdResIconPath = ToolUtils.encodeByMd5(apkInfo.getLdResIconPath());
			apkInfo.setHdResIconPath(Constants.IMG_SAVE_URL+hdResIconPath+".png");
			System.out.println("下载完成--"+path);
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
	
	@Override
	public List<ApkInfo> searchApk(String query, Integer offset,
			Integer numberOfResult , GmailInfo gmailInfo) throws Exception{
		try {
			HttpEntity entity = executeGet(Constants.URL_SEARCH,
				new String[][] {
						{ "c", "3" },
						{ "q", query },
						{ "o", (offset == null) ? null : String.valueOf(offset) },
						{"n",(numberOfResult == null) ? null : String.valueOf(numberOfResult) } },
				getHeaderParameters(gmailInfo.getLoginToken(), gmailInfo.getDeviceId(), 
					Constants.HEAD_CONTENT_TYPE, Constants.HEAD_LOCALIZATION));
			
			
			ResponseWrapper responseWrapper =GooglePlay.ResponseWrapper.parseFrom(entity.getContent());
			SearchResponse searchResponse = responseWrapper.getPayload().getSearchResponse();
			List<ApkInfo> apkInfos = new ArrayList<ApkInfo>();
			List<DocV2> infos = searchResponse.getDoc(0).getChildList();
			Iterator<DocV2> iterator = infos.iterator();
			while(iterator.hasNext()) {
				DocV2 docV2 = iterator.next();
				ApkInfo apkInfo = new ApkInfo();
				apkInfo.setPackageName(docV2.getDocid());
				apkInfo.setTitle(docV2.getTitle());
				apkInfo.setCreator(docV2.getCreator());
				Offer offer = docV2.getOffer(0);
				apkInfo.setCurrencyCode(offer.getCurrencyCode());
				apkInfo.setFormattedAmount(offer.getFormattedAmount());
				List<Image> images = docV2.getImageList();
				for (int i = 0; i < images.size(); i++) {
					Image image = images.get(i);
					if(image.getImageType() == 0) {
						apkInfo.setHdResIconPath(image.getImageUrl());;
					}
					if(image.getImageType() == 4) {
						apkInfo.setLdResIconPath(image.getImageUrl());
					}
				}
				
				AppDetails appDetails = docV2.getDetails().getAppDetails();
				apkInfo.setInstallationSize(String.valueOf(appDetails.getInstallationSize()));
				apkInfo.setNumDownloads(appDetails.getNumDownloads());
				apkInfo.setUploadDate(appDetails.getUploadDate());
				
				AggregateRating rating = docV2.getAggregateRating();
				apkInfo.setStarRating(rating.getStarRating()+"");
				apkInfo.setRatingCount(String.valueOf(rating.getRatingsCount()));
				
				apkInfos.add(apkInfo);
			}
			return apkInfos;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;

	}

	/**
	 * 获取头信息
	 * 
	 * @param token
	 * @param DeviceId
	 * @param contentType
	 * @param localization
	 * @return
	 */
	private String[][] getHeaderParameters(String token, String DeviceId,
			String contentType, String localization) {
		System.out.println("获取头信息");
		return new String[][] {
				{ "Accept-Language",
					(localization != null) ? localization : "en-EN" },
				{ "Authorization", "GoogleLogin auth=" + token },
				{ "X-DFE-Enabled-Experiments",
						"cl:billing.select_add_instrument_by_default" },
				{
						"X-DFE-Unsupported-Experiments",
						"nocache:billing.use_charging_poller,market_emails,buyer_currency,prod_baseline,checkin.set_asset_paid_app_field,shekel_test,content_ratings,buyer_currency_in_app,nocache:encrypted_apk,recent_changes" },
				{ "X-DFE-Device-Id", DeviceId },
				{ "X-DFE-Client-Id", "am-android-google" },
				{
						"User-Agent",
						"Android-Finsky/3.10.14 (api=3,versionCode=8016014,sdk=15,device=GT-I9300,hardware=aries,product=GT-I9300)" },
				{ "X-DFE-SmallestScreenWidthDp", "320" },
				{ "X-DFE-Filter-Level", "3" },
				{ "Host", "android.clients.google.com" },
				{
						"Content-Type",
						(contentType != null) ? contentType
								: "application/x-www-form-urlencoded; charset=UTF-8" } };
	}

	private String[][] getCommonHearderParameters() {
		return new String[][] {
				{ "Accept",
						"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8" },
				{
						"User-Agent",
						"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36" } };
	}

	/**
	 * 获得下载时的头信息
	 * 
	 * @param cookie
	 * @return
	 */
	private String[][] getDownloadHeaderParameters(String cookie) {
		String[][] headerParams = new String[][] {
				{ "Cookie", cookie },
				{ "User-Agent",
						"AndroidDownloadManager/4.1.1 (Linux; U; Android 4.1.1; Nexus S Build/JRO03E)" } };
		return headerParams;
	}

}
