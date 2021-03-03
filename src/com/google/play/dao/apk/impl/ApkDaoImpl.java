package com.google.play.dao.apk.impl;

import java.util.List;

import org.hibernate.type.StringType;
import org.hibernate.type.Type;

import com.google.play.dao.apk.ApkDao;
import com.google.play.dao.base.impl.BaseDaoImpl;
import com.google.play.model.ApkInfo;
import com.google.play.model.Permission;

public class ApkDaoImpl extends BaseDaoImpl<ApkInfo, Integer> implements ApkDao {

	@Override
	public ApkInfo getApkByPackageName(String packageName) throws Exception {
		String hql = "SELECT new ApkInfo(apkId ,packageName, title,creator, currencyCode,checkoutFlowRequired, formattedAmount,"
				+ "offerType, hdResIconPath, versionCode, versionString, installationSize,developerEmail,developerWebsite,"
				+ " uploadDate, description, ratingCount,downloadPath) FROM ApkInfo WHERE packageName = ?";
		Object[] params = {packageName};
		Type[] types = {new StringType()};
		
		List<ApkInfo> apkInfos = findEntity(hql, params, types);
		if(apkInfos.isEmpty()){
			return null;
		}else {
			return apkInfos.get(apkInfos.size()-1);
		}
	}

	public List<ApkInfo> getApks() throws Exception {
		
		String hql = "from ApkInfo";
		
		List<ApkInfo> apkInfos = findEntity(hql);
		
		return apkInfos;
	}
	
	@Override
	public void saveOrUpdateApkInfo(ApkInfo apkInfo) throws Exception {
		try {
			saveOrUpdate(apkInfo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

	@Override
	public Permission getApkPermissionByValue(String permissionValue) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void saveOrUpdateApkPermission(Permission permission) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateApkPath(ApkInfo apkInfo) throws Exception {

		try {
			Update(apkInfo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public List<ApkInfo> getApkByCategoryId(Integer Id)throws Exception{
		String hql = "from ApkInfo apkInfo where apkInfo.offerType = 1 ";
		
		List<ApkInfo> apkInfos = findEntity(hql);
		return apkInfos;
	}

}
