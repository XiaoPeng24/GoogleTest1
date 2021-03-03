package com.google.play.service.http.apk;

import java.util.List;

import com.google.play.model.ApkInfo;

public interface ApkHttpService {

	/**
	 * 从Google Play上获得应用的详细信息
	 * @param packageName
	 * @return
	 * @throws Exception
	 */
	public ApkInfo getApkFromGooglePlay(String packageName) throws Exception;

	/**
	 * 从Google Play上搜索应用
	 * @param query
	 * @param currentPage
	 * @param pageSize
	 * @return
	 * @throws Exception
	 */
	public List<ApkInfo> searchApkFromGooglePlay(String query,
			Integer currentPage, Integer pageSize) throws Exception;
	/**
	 * 从Google Play下载应用
	 * @param apkInfo
	 * @return
	 * @throws Exception
	 */
	public String downloadFromGooglePlay(ApkInfo apkInfo) throws Exception;
}
