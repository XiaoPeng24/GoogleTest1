package com.google.play.service.apk.impl;

import java.util.List;

import com.google.play.dao.apk.ApkDao;
import com.google.play.model.ApkInfo;
import com.google.play.service.apk.ApkService;

public class ApkServiceImpl implements ApkService {

	private ApkDao apkDao;

	public ApkInfo getApkByPackageName(String packageName) throws Exception {

		return apkDao.getApkByPackageName(packageName);
	}

	public Integer getApkNums() throws Exception{
		
		return apkDao.getApks().size();
	}
	
	@Override
	public void saveOrUpdateApkInfo(ApkInfo apkInfo) throws Exception {

		try{
			System.out.println("service--"+apkInfo.getApkId()+"--"+apkInfo.getDownloadPath());
			apkDao.saveOrUpdateApkInfo(apkInfo);
		}catch(Exception ex){
			ex.printStackTrace();
		}
		

	}

	@Override
	public void updateApkDownloadPath(ApkInfo apkInfo) throws Exception {
		apkDao.updateApkPath(apkInfo);
	}

	public List<ApkInfo> getCategoryApk(Integer id) throws Exception {

		List<ApkInfo> apkInfo = apkDao.getApkByCategoryId(id);
		
		return apkInfo;

	}

	public ApkDao getApkDao() {
		return apkDao;
	}

	public void setApkDao(ApkDao apkDao) {
		this.apkDao = apkDao;
	}

}
