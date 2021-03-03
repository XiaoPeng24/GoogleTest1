package com.google.play.action.apk;

import java.util.List;


import com.google.play.action.base.BaseAction;
import com.google.play.model.ApkInfo;
import com.google.play.service.apk.ApkService;
import com.google.play.service.http.apk.ApkHttpService;
import com.google.play.service.http.category.CategoryHttpService;
import com.google.play.service.http.recommend.RecommendHttpService;
import com.google.play.util.other.Constants;
import com.google.play.util.other.ToolUtils;
import com.google.play.util.parse.ParseStringUtil;

public class ApkAction extends BaseAction {

	private static final long serialVersionUID = 5431707993139724423L;

	private ParseStringUtil parseString;
	/** 搜索字符 */
	private String q;
	/** 类型名称 */
	private String cat;
	/** 首页上的类型值 */
	private String MainCategory;
	/** 刷新类型, 1:全局刷新，非1:局部刷新 */
	private int ref = 1;
	/** APK包名或者URL */
	private String id;
	/** 结果集： APK的详细信息 */
	private ApkInfo apkInfo;
	/** 结果集： APK集合 */
	private List<ApkInfo> apkInfos;
	/** 结果集：APk的下载地址 */
	private String apkURL;
	
	private ApkService apkService;
	private ApkHttpService apkHttpService;
	private CategoryHttpService categoryHttpService;
	private RecommendHttpService recommendHttpService;

	/**
	 * 首页的Action
	 * 
	 * @return
	 * @throws Exception
	 */
	public String index() throws Exception {
		return SUCCESS;
	}

	/**
	 * 根据首页上类型获取APK信息
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getMainApk() throws Exception {
		apkInfos = categoryHttpService.getMainCategoryFromGoogleplay(null,
				MainCategory, 0, Constants.MAIN_ITEM_SIZE);
		System.out.println("MainCategory: " + MainCategory + "--"
				+ apkInfos.size());
		return SUCCESS;
	}

	/**
	 * 根据类型获得APK信息
	 * 
	 * @return ajax：局部刷新界面	category：全局刷新界面
	 * @throws Exception
	 */
	public String getCategoryApk() throws Exception {
		System.out.println("categoryName: " + cat);
		if (ref != 1) {
			apkInfos = categoryHttpService.getCategoryFromGoogleplay(cat,
					"apps_topselling_free", 
					(getCurrentPage() - 1) * Constants.CATEGORY_PAGE_SIZE,
					Constants.CATEGORY_PAGE_SIZE);
			return "ajax";
		} else {
			return "category";
		}
	}
	/**
	 * 根据字符串进行搜索
	 * @return
	 * @throws Exception
	 */
	public String searchApk() throws Exception {
		q = new String(q.getBytes("iso-8859-1"), "UTF-8");
		if(ref != 1) {
			apkInfos = apkHttpService.searchApkFromGooglePlay(q,
					getCurrentPage(), Constants.SEARCH_PAGE_SIZE);
			return "ajax";
		}else {
			return "search";
		}
	}
	/**
	 * 根据包名获得应用的详细信息
	 * @throws Exception
	 */
	public String getApkdetail() throws Exception {
		System.out.println("packageNameOrUrl: " + id);
		if(ref != 1) {
			//从URL中解析出包名，使用正则表达式
			String packageName = id;
			
			ApkInfo databaseData = apkService.getApkByPackageName(packageName);
			/* 1.数据库中不存在该应用
			 * 2.数据库中存在，该应用为免费应用，却没有下载地址
			 * 3.应用到了更新周期
			 */
			if(databaseData == null || databaseData.isOutOfDate()|| 
					(databaseData.isEnableDownload() && ToolUtils.isEmpty(databaseData.getDownloadPath()))) {
				
				ApkInfo httpData = apkHttpService.getApkFromGooglePlay(packageName);
				if(httpData != null ) {
					apkInfo = httpData;
					return "ajax";
				}
			}
			/* 可能的情况
			 * 1.应用在数据库中存在，信息完整，不需要更新
			 * 2.Google Play上不存在该应用，但数据库中保存了应用信息
			 * 3.该应用在Google Play和数据库中都不存在
			 */
			apkInfo = databaseData;
			apkURL = apkInfo.getDownloadPath();
			return "ajax";
		}else {
			return "detail";
		}
	}
	/**
	 * 获得APK的下载地址
	 * @return
	 * @throws Exception
	 */
	public String getDownloadURL() throws Exception {
		System.out.println("packageNameOrUrl: "+id);
		//从URL中解析出包名，使用正则表达式
		String packageName = id;
		
		apkInfo = apkService.getApkByPackageName(packageName);
		if(apkInfo.getDownloadPath() != null){
			apkURL = apkInfo.getDownloadPath();
			return SUCCESS;
		}else{
			String path = apkHttpService.downloadFromGooglePlay(apkInfo);
			if(!ToolUtils.isEmpty(path)){
				apkURL = path;
				return SUCCESS;
			}else{
				return "fail";
			}
		}
	}
	/**
	 * 根据当前浏览的应用进行推荐
	 * @return
	 * @throws Exception
	 */
	public String getRecommendApk() throws Exception {
		System.out.println("packageNameOrUrl: " + id);
		apkInfos = recommendHttpService.getRecommendationsFromGoogleplay(
				id, 1, 0, Constants.RECOMMEND_SIZE);
		System.out.println("recommend size: " + apkInfos.size());
		return SUCCESS;
	}


	/***************************************** get and set methods *****************************************/
	public ParseStringUtil getParseString() {
		return parseString;
	}

	public void setParseString(ParseStringUtil parseString) {
		this.parseString = parseString;
	}

	public ApkService getApkService() {
		return apkService;
	}

	public void setApkService(ApkService apkService) {
		this.apkService = apkService;
	}

	public ApkHttpService getApkHttpService() {
		return apkHttpService;
	}

	public void setApkHttpService(ApkHttpService apkHttpService) {
		this.apkHttpService = apkHttpService;
	}

	public CategoryHttpService getCategoryHttpService() {
		return categoryHttpService;
	}

	public void setCategoryHttpService(CategoryHttpService categoryHttpService) {
		this.categoryHttpService = categoryHttpService;
	}

	public RecommendHttpService getRecommendHttpService() {
		return recommendHttpService;
	}

	public void setRecommendHttpService(
			RecommendHttpService recommendHttpService) {
		this.recommendHttpService = recommendHttpService;
	}

	public ApkInfo getApkInfo() {
		return apkInfo;
	}

	public void setApkInfo(ApkInfo apkInfo) {
		this.apkInfo = apkInfo;
	}

	public List<ApkInfo> getApkInfos() {
		return apkInfos;
	}

	public void setApkInfos(List<ApkInfo> apkInfos) {
		this.apkInfos = apkInfos;
	}

	public String getMainCategory() {
		return MainCategory;
	}

	public void setMainCategory(String menuCategory) {
		MainCategory = menuCategory;
	}

	public String getQ() {
		return q;
	}

	public void setQ(String q) {
		this.q = q;
	}

	public String getCat() {
		return cat;
	}

	public void setCat(String cat) {
		this.cat = cat;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getApkURL() {
		return apkURL;
	}

	public void setApkURL(String apkURL) {
		this.apkURL = apkURL;
	}

	

}
