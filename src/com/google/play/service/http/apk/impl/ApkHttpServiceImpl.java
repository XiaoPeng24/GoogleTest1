package com.google.play.service.http.apk.impl;

import java.util.List;
import java.util.Map;

import com.google.play.model.ApkInfo;
import com.google.play.model.GmailInfo;
import com.google.play.net.http.apk.ApkHttp;
import com.google.play.service.apk.ApkService;
import com.google.play.service.gmail.GmailService;
import com.google.play.service.http.apk.ApkHttpService;
import com.google.play.util.other.Constants;

public class ApkHttpServiceImpl implements ApkHttpService {

	private GmailService gmailService;
	private ApkHttp apkHttp;
	private ApkService apkService;

	@Override
	public ApkInfo getApkFromGooglePlay(String packageName) throws Exception {

		Map<Integer, GmailInfo> gmail;
		Integer position;
		GmailInfo gmailInfo;
		ApkInfo apkInfo;

		while (true) {
			// Get a logined gmailInfo
			gmail = gmailService.getLoginedGmail();
			position = gmail.keySet().iterator().next();
			gmailInfo = gmail.get(position);

			try {
				apkInfo = apkHttp.getApkDetail(packageName, gmailInfo);
				apkHttp.downloadApkImgs(apkInfo);
			} catch (Exception ex) {
				if (!gmailInfo.count()) {
					throw new Exception(
							"The gmail has failed more than three times!");
				} else {
					gmailInfo.add();// 失败次数加一
					gmailService.removeCacheGmailToken(position);
					continue;
				}
			}
			break;
		}

		if (null == apkInfo) {
			System.out.println("该应用不存在");
			return null;
		}

		apkInfo.setApkId(apkService.getApkNums() + 1);
		apkService.saveOrUpdateApkInfo(apkInfo);
		return apkInfo;
	}

	@Override
	public String downloadFromGooglePlay(ApkInfo apkInfo) throws Exception {

		Map<Integer, GmailInfo> gmail;
		Integer position;
		GmailInfo gmailInfo;
		String path = null;

		if (apkInfo.isEnableDownload()) {
			while (true) {

				gmail = gmailService.getLoginedAC2DMGmail();
				position = gmail.keySet().iterator().next();
				gmailInfo = gmail.get(position);

				if (apkHttp.downloadApk(apkInfo, gmailInfo)) {
					path = Constants.APK_DOWNLOAD_URL + apkInfo.getPackageName() + ".apk";
					apkInfo.setDownloadPath(path);
					apkService.updateApkDownloadPath(apkInfo);
					
					return path;
				} else {
					if (!gmailInfo.count()) {
						throw new Exception(
								"The gmail has failed more than three times!");
					} else {
						gmailInfo.add();// 失败次数加一
						gmailService.removeCacheGmailToken(position);
					}
					return path;
				}

			}
		}

		return path;
	}

	@Override
	public List<ApkInfo> searchApkFromGooglePlay(String query,
			Integer currentPage, Integer pageSize) throws Exception {

		Map<Integer, GmailInfo> gmail;
		Integer position;
		GmailInfo gmailInfo;
		List<ApkInfo> apks;

		while (true) {

			gmail = gmailService.getLoginedAC2DMGmail();
			position = gmail.keySet().iterator().next();
			gmailInfo = gmail.get(position);

			Integer offet = (currentPage - 1) * pageSize;

			try {
				apks = apkHttp.searchApk(query, offet, pageSize, gmailInfo);
				return apks;
			} catch (Exception ex) {
				if (!gmailInfo.count()) {
					throw new Exception(
							"The gmail has failed more than three times!");
				} else {
					gmailInfo.add();// 失败次数加一
					gmailService.removeCacheGmailToken(position);
				}
			}
		}
	}

	public GmailService getGmailService() {
		return gmailService;
	}

	public void setGmailService(GmailService gmailService) {
		this.gmailService = gmailService;
	}

	public ApkHttp getApkHttp() {
		return apkHttp;
	}

	public void setApkHttp(ApkHttp apkHttp) {
		this.apkHttp = apkHttp;
	}

	public ApkService getApkService() {
		return apkService;
	}

	public void setApkService(ApkService apkService) {
		this.apkService = apkService;
	}
}
