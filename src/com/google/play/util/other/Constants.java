package com.google.play.util.other;

public class Constants {
	public static final String URL_CHECKIN = "https://android.clients.google.com/checkin";
	public static final String URL_LOGIN = "https://android.clients.google.com/auth";
	public static final String URL_FDFE = "https://android.clients.google.com/fdfe/";
	public static final String URL_SEARCH = URL_FDFE + "search";
	public static final String URL_DETAILS = URL_FDFE + "details";
	public static final String URL_PURCHASE = URL_FDFE + "purchase";
	public static final String URL_LIST = URL_FDFE + "list";
	public static final String RECOMMEND_LIST = URL_FDFE + "rec";
	public static final String ACCOUNT_TYPE_HOSTED_OR_GOOGLE = "HOSTED_OR_GOOGLE";
	/**
	 * Localization string that will be used in each request to server. Using
	 * this option you can fetch localized informations such as reviews and
	 * descriptions.
	 * <p>
	 * Note that changing this value has no affect on localized application list
	 * that server provides. It depends on only your IP location.
	 * <p>
	 * 
	 * @param localization
	 *            can be <b>en-EN, en-US, tr-TR, fr-FR ... (default : en-EN)</b>
	 */
	public static final String HEAD_LOCALIZATION = "en-EN";
	public static final String HEAD_CONTENT_TYPE = "application/x-www-form-urlencoded; charset=UTF-8";
	
	
	public static final String SAVE_DIR = "E://apk//";
	/**
	 * apk保存的路径
	 */
	public static final String APK_SAVE_DIR = "D://Myeclipseworkspace//GoogleTest1//WebRoot//file//apks//";
	/**
	 * apk高清图标的保存路径
	 */
	public static final String IMG_SAVE_DIR = "D://Myeclipseworkspace//GoogleTest1//WebRoot//file//imgs//";
	
	/**
	 * apk访问的url
	 */
	public static final String APK_DOWNLOAD_URL= "./file/apks/";
	/**
	 * apk高清图标保存路径
	 */
	public static final String IMG_SAVE_URL= "./file/imgs/";
	/**
	 * 多久之后对应用进行更新
	 */
	public static final int UPDATE_NUM = 365;
	/**
	 * 首页上每种类型的数量
	 */
	public static final int MAIN_ITEM_SIZE = 6;
	/**
	 * 类型页上的APK数量
	 */
	public static final int CATEGORY_PAGE_SIZE = 60;
	/**
	 * 搜索结果也上APK数量
	 */
	public static final int SEARCH_PAGE_SIZE = 30;
	/**
	 * 推荐应用的数量
	 */
	public static final int RECOMMEND_SIZE = 5;
	

}
