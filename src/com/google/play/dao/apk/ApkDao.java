package com.google.play.dao.apk;

import java.util.List;

import com.google.play.model.ApkInfo;
import com.google.play.model.Permission;

public interface ApkDao {
	
	//根据包名获取Apk信息
	public ApkInfo getApkByPackageName(String packageName) throws Exception;

	//获取数据库中Apk的总数
	public List<ApkInfo> getApks() throws Exception;
	
	//更新或者保存Apk信息
	public void saveOrUpdateApkInfo(ApkInfo apkInfo)throws Exception;
	
	//获得Apk的Permission值
	public Permission getApkPermissionByValue(String permissionValue)throws Exception;
	
	//保存或者更新Permission信息
	public void saveOrUpdateApkPermission(Permission permission)throws Exception;
	
	//更新Apk的保存路径
	public void updateApkPath(ApkInfo apkInfo)throws Exception;
	
	
	public List<ApkInfo> getApkByCategoryId(Integer Id)throws Exception;
}
