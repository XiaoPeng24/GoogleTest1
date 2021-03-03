package com.google.play.service.http.category.impl;

import java.util.List;
import java.util.Map;

import com.google.play.cache.category.CategoryCache;
import com.google.play.model.ApkInfo;
import com.google.play.model.GmailInfo;
import com.google.play.net.http.category.CategoryHttp;
import com.google.play.service.gmail.GmailService;
import com.google.play.service.http.category.CategoryHttpService;

public class CategoryHttpServiceImpl implements CategoryHttpService {

	private GmailService gmailService;
	
	private CategoryHttp categoryHttp;
	
	private CategoryCache categoryCache;
	
	@Override
	public List<ApkInfo> getCategoryFromGoogleplay(String categoryId,
			String subCategoryId, Integer offset, Integer numberOfResult) throws Exception {
		Map<Integer,GmailInfo> gmail;
		Integer position;
		GmailInfo gmailInfo;
		List<ApkInfo> apks;
		
		while(true){

			gmail=gmailService.getLoginedGmail();
			position = gmail.keySet().iterator().next();
			gmailInfo = gmail.get(position);
			
			try{
				apks = categoryHttp.getCategoryApk(categoryId, subCategoryId, offset, numberOfResult, gmailInfo);
				return apks;
			}catch(Exception ex){
				if(! gmailInfo.count()){
					throw new Exception("The gmail has failed more than three times!");
				}else{
					gmailInfo.add();//失败次数加一
					gmailService.removeCacheGmailToken(position);
				}
			}
		}
	}
	
	@Override
	public List<ApkInfo> getMainCategoryFromGoogleplay(String categoryId,
			String subCategoryId, Integer offset, Integer numberOfResult)
			throws Exception {
		Map<Integer,GmailInfo> gmail;
		Integer position;
		GmailInfo gmailInfo;
		List<ApkInfo> apks;
		
		if(categoryCache.isCached(subCategoryId)){
			return categoryCache.getApks(subCategoryId);
		} else{
			while(true){

				gmail=gmailService.getLoginedAC2DMGmail();
				position = gmail.keySet().iterator().next();
				gmailInfo = gmail.get(position);
				
				try{
					apks = categoryHttp.getCategoryApk(categoryId, subCategoryId, offset, numberOfResult, gmailInfo);
					categoryCache.putApks(subCategoryId, apks);
					return categoryCache.getApks(subCategoryId);
				}catch(Exception ex){
					if(! gmailInfo.count()){
						throw new Exception("The gmail has failed more than three times!");
					}else{
						gmailInfo.add();//失败次数加一
						gmailService.removeCacheGmailToken(position);
					}
				}
			}
		}
	}
	
	/*
	 * 定时更新
	 * @see com.google.play.service.http.category.CategoryHttpService#updateMainCategoryOntime()
	 */
	public void updateMainCategoryOntime() throws Exception {
		Map<Integer,GmailInfo> gmail;
		Integer position;
		GmailInfo gmailInfo;
		
		while(true){

			gmail=gmailService.getLoginedAC2DMGmail();
			position = gmail.keySet().iterator().next();
			gmailInfo = gmail.get(position);
			
			try{
				categoryCache.putApks("apps_topselling_paid", categoryHttp.
						 getCategoryApk(null, "apps_topselling_paid", 0, 6, gmailInfo));
				categoryCache.putApks("apps_topselling_free", categoryHttp.
		                 getCategoryApk(null, "apps_topselling_free", 0, 6, gmailInfo));
				categoryCache.putApks("apps_topgrossing", categoryHttp.
		                 getCategoryApk(null, "apps_topgrossing", 0, 6, gmailInfo));
				categoryCache.putApks("apps_topselling_new_paid", categoryHttp.
		                 getCategoryApk(null, "apps_topselling_new_paid", 0, 6, gmailInfo));
				categoryCache.putApks("apps_topselling_new_free", categoryHttp.
		                 getCategoryApk(null, "apps_topselling_new_free", 0, 6, gmailInfo));
				categoryCache.putApks("apps_movers_shakers", categoryHttp.
		                 getCategoryApk(null, "apps_movers_shakers", 0, 6, gmailInfo));
				break;
			}catch(Exception ex){
				if(! gmailInfo.count()){
					throw new Exception("The gmail has failed more than three times!");
				}else{
					gmailInfo.add();//失败次数加一
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

	public CategoryHttp getCategoryHttp() {
		return categoryHttp;
	}

	public void setCategoryHttp(CategoryHttp categoryHttp) {
		this.categoryHttp = categoryHttp;
	}

	public CategoryCache getCategoryCache() {
		return categoryCache;
	}

	public void setCategoryCache(CategoryCache categoryCache) {
		this.categoryCache = categoryCache;
	}


}
