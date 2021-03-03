package com.google.play.cache.category;

import java.util.List;

import com.google.play.model.ApkInfo;


//将首页Apk保存在内存

public interface CategoryCache {

	//内存中是否存在Apk
	public Boolean isCached(String category) throws Exception; 
	
	//添加Apk
	public void putApks(String category,List<ApkInfo> apks) throws Exception;
	
	//更新Apk
	public void updateApks(String category,List<ApkInfo> apks) throws Exception; 
	
	//查找Apk
	public List<ApkInfo> getApks(String category) throws Exception;
	
}
