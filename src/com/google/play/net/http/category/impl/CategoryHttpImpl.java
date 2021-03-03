package com.google.play.net.http.category.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.http.HttpEntity;

import com.akdeniz.googleplaycrawler.GooglePlay;
import com.akdeniz.googleplaycrawler.GooglePlay.AggregateRating;
import com.akdeniz.googleplaycrawler.GooglePlay.AppDetails;
import com.akdeniz.googleplaycrawler.GooglePlay.DocV2;
import com.akdeniz.googleplaycrawler.GooglePlay.Image;
import com.akdeniz.googleplaycrawler.GooglePlay.ListResponse;
import com.akdeniz.googleplaycrawler.GooglePlay.Offer;
import com.akdeniz.googleplaycrawler.GooglePlay.ResponseWrapper;
import com.google.play.model.ApkInfo;
import com.google.play.model.GmailInfo;
import com.google.play.net.http.base.impl.BaseHttpImpl;
import com.google.play.net.http.category.CategoryHttp;
import com.google.play.util.other.Constants;

public class CategoryHttpImpl extends BaseHttpImpl implements CategoryHttp {

	@Override
	public List<ApkInfo> getCategoryApk(String categoryId,
			String subCategoryId, Integer offset, Integer numberOfResult,
			GmailInfo gmailInfo) throws Exception {
		try {
			HttpEntity entity = executeGet(Constants.URL_LIST,
					new String[][] {
					{"bt", "4" },
					{ "c", "3" },
					{ "cat", categoryId },
					{ "ctr", subCategoryId },
					{ "o", (offset == null) ? null : String.valueOf(offset) },
					{
							"n",
							(numberOfResult == null) ? null : String
									.valueOf(numberOfResult) }, },
					getHeaderParameters(gmailInfo.getLoginToken(), gmailInfo.getDeviceId(), 
						Constants.HEAD_CONTENT_TYPE, Constants.HEAD_LOCALIZATION));
			
			ResponseWrapper responseWrapper =GooglePlay.ResponseWrapper.parseFrom(entity.getContent());
			ListResponse ListResponse = responseWrapper.getPayload().getListResponse();
			List<ApkInfo> apkInfos = new ArrayList<ApkInfo>();
			List<DocV2> infos = ListResponse.getDoc(0).getChildList();
			System.out.println("docv2 size: "+infos.size());
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

}
