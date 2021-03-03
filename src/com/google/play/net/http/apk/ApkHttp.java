package com.google.play.net.http.apk;

import java.util.List;

import com.google.play.model.ApkInfo;
import com.google.play.model.GmailInfo;

public interface ApkHttp {

	public ApkInfo getApkDetail(String packageName, GmailInfo gmailInfo)
			throws Exception;

	public Boolean downloadApk(ApkInfo apkInfo, GmailInfo gmailInfo)
			throws Exception;
	
	public void downloadApkImgs(ApkInfo apkInfo) throws Exception;
	
	public List<ApkInfo> searchApk(String query,Integer offset,
			Integer numberOfResult , GmailInfo gmailInfo) throws Exception;

}
