package com.google.play.service.apk;

import java.util.List;

import com.google.play.model.ApkInfo;

public interface ApkService {

	public ApkInfo getApkByPackageName(String packageName)  throws Exception ;
	
	public Integer getApkNums() throws Exception;
	
	public void saveOrUpdateApkInfo(ApkInfo apkInfo)  throws Exception;
	
	public void updateApkDownloadPath(ApkInfo apkInfo)  throws Exception ;
	
	public List<ApkInfo> getCategoryApk(Integer id) throws Exception;
}
