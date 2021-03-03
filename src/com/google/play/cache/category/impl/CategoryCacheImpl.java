package com.google.play.cache.category.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.google.play.cache.category.CategoryCache;
import com.google.play.model.ApkInfo;

public class CategoryCacheImpl implements CategoryCache {

	private Map<String,List<ApkInfo>> apkmap = new HashMap<String,List<ApkInfo>>();
	
	@Override
	public Boolean isCached(String category) throws Exception {
		
		if(apkmap.get(category) == null){
			return false;
		}else{
			return true;
		}
		
	}
	
    @Override
    public List<ApkInfo> getApks(String category) throws Exception {
    	
    	return apkmap.get(category);
    }

	@Override
	public void putApks(String category,List<ApkInfo> apks) throws Exception {
		
		apkmap.put(category, apks);

	}

	@Override
	public void updateApks(String category,List<ApkInfo> apks) throws Exception {
		
		apkmap.put(category, apks);

	}

}
