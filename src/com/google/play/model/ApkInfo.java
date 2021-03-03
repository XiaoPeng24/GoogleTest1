package com.google.play.model;

import java.util.HashSet;
import java.util.Set;

import com.google.play.util.other.Constants;
import com.google.play.util.other.ToolUtils;

/**
 * ApkInfo entity. @author MyEclipse Persistence Tools
 */

public class ApkInfo implements java.io.Serializable {

	// Fields
	private static final long serialVersionUID = 5414201589595705777L;
	private Integer apkId;
	private Category category;
	private String packageName;
	private String title;
	private String creator;
	private String description;
	private String currencyCode;
	private String formattedAmount;
	private String checkoutFlowRequired;
	private Integer offerType;
	private String hdResIconPath;
	private String ldResIconPath;
	private Integer versionCode;
	private String versionString;
	private String installationSize;
	private String developerEmail;
	private String developerWebsite;
	private String numDownloads;
	private String uploadDate;
	private String starRating;
	private String  ratingCount;
	private String isUpdate;
	private String downloadPath;
	private Set<ApkGmail> apkGmails = new HashSet<ApkGmail>();
//	private Set<ApkPermission> apkPermissions = new HashSet<ApkPermission>(0);

	// Constructors

	/** default constructor */
	public ApkInfo() {
	}
	
	public boolean isOutOfDate() {
		long day = ToolUtils.compare(getUploadDate());
		if(day > Constants.UPDATE_NUM) {
			return true;
		}else {
			return false;
		}
	}
	
	public boolean isEnableDownload() {
		if(checkoutFlowRequired.equals("false")) {
			return true;
		}
		return false;
	}
	
	/** full constructor */
	public ApkInfo(Integer apkId,String packageName, String title,String creator, String currencyCode,String checkoutFlowRequired,
			String formattedAmount, Integer offerType, String hdResIconPath, Integer versionCode, String versionString, String installationSize,
			String developerEmail,String developerWebsite,String uploadDate,String description,String ratingCount,String downloadPath) {
		this.apkId = apkId;
		this.packageName = packageName;
		this.title = title;
		this.creator = creator;
		this.currencyCode = currencyCode;
		this.formattedAmount = formattedAmount;
		this.offerType = offerType;
		this.checkoutFlowRequired = checkoutFlowRequired;
		this.hdResIconPath = hdResIconPath;
		this.versionCode = versionCode;
		this.versionString = versionString;
		this.installationSize = installationSize;
		this.developerEmail = developerEmail;
		this.developerWebsite = developerWebsite;
		this.uploadDate = uploadDate;
		this.description = description;
		this.ratingCount = ratingCount;
		this.downloadPath = downloadPath;
	}
	/** full constructor */
	public ApkInfo(Category category, String packageName, String title,
			String creator, String description, String currencyCode,
			String formattedAmount, String checkoutFlowRequired,
			Integer offerType, String hdResIconPath, String ldResIconPath,
			Integer versionCode, String versionString,
			String installationSize, String developerEmail,
			String developerWebsite, String numDownloads,String uploadDate,
			String starRating, String  ratingCount, String isUpdate, Set<ApkGmail> apkGmails) {
		this.category = category;
		this.packageName = packageName;
		this.title = title;
		this.creator = creator;
		this.description = description;
		this.currencyCode = currencyCode;
		this.formattedAmount = formattedAmount;
		this.checkoutFlowRequired = checkoutFlowRequired;
		this.offerType = offerType;
		this.hdResIconPath = hdResIconPath;
		this.ldResIconPath = ldResIconPath;
		this.versionCode = versionCode;
		this.versionString = versionString;
		this.installationSize = installationSize;
		this.developerEmail = developerEmail;
		this.developerWebsite = developerWebsite;
		this.numDownloads = numDownloads;
		this.uploadDate = uploadDate;
		this.starRating = starRating;
		this.ratingCount = ratingCount;
		this.isUpdate = isUpdate;
		this.apkGmails = apkGmails;
//		this.apkPermissions = apkPermissions;
	}

	// Property accessors

	public Integer getApkId() {
		return this.apkId;
	}

	public void setApkId(Integer apkId) {
		this.apkId = apkId;
	}

	public Category getCategory() {
		return this.category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getPackageName() {
		return this.packageName;
	}

	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCreator() {
		return this.creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCurrencyCode() {
		return this.currencyCode;
	}

	public void setCurrencyCode(String currencyCode) {
		this.currencyCode = currencyCode;
	}

	public String getFormattedAmount() {
		return this.formattedAmount;
	}

	public void setFormattedAmount(String formattedAmount) {
		this.formattedAmount = formattedAmount;
	}

	public String getCheckoutFlowRequired() {
		return this.checkoutFlowRequired;
	}

	public void setCheckoutFlowRequired(String checkoutFlowRequired) {
		this.checkoutFlowRequired = checkoutFlowRequired;
	}

	public Integer getOfferType() {
		return this.offerType;
	}

	public void setOfferType(Integer offerType) {
		this.offerType = offerType;
	}

	public String getHdResIconPath() {
		return this.hdResIconPath;
	}

	public void setHdResIconPath(String hdResIconPath) {
		this.hdResIconPath = hdResIconPath;
	}

	public String getLdResIconPath() {
		return this.ldResIconPath;
	}

	public void setLdResIconPath(String ldResIconPath) {
		this.ldResIconPath = ldResIconPath;
	}

	public Integer getVersionCode() {
		return this.versionCode;
	}

	public void setVersionCode(Integer versionCode) {
		this.versionCode = versionCode;
	}

	public String getVersionString() {
		return this.versionString;
	}

	public void setVersionString(String versionString) {
		this.versionString = versionString;
	}

	public String getInstallationSize() {
		return this.installationSize;
	}

	public void setInstallationSize(String installationSize) {
		this.installationSize = installationSize;
	}

	public String getDeveloperEmail() {
		return this.developerEmail;
	}

	public void setDeveloperEmail(String developerEmail) {
		this.developerEmail = developerEmail;
	}

	public String getDeveloperWebsite() {
		return this.developerWebsite;
	}

	public void setDeveloperWebsite(String developerWebsite) {
		this.developerWebsite = developerWebsite;
	}

	public String getNumDownloads() {
		return this.numDownloads;
	}

	public void setNumDownloads(String numDownloads) {
		this.numDownloads = numDownloads;
	}

	public String getUploadDate() {
		return this.uploadDate;
	}

	public void setUploadDate(String uploadDate) {
		this.uploadDate = uploadDate;
	}

	public String getStarRating() {
		return this.starRating;
	}

	public void setStarRating(String starRating) {
		this.starRating = starRating;
	}

	public String  getRatingCount() {
		return this.ratingCount;
	}

	public void setRatingCount(String ratingCount) {
		this.ratingCount = ratingCount;
	}

	public String getIsUpdate() {
		return this.isUpdate;
	}

	public void setIsUpdate(String isUpdate) {
		this.isUpdate = isUpdate;
	}

	public Set<ApkGmail> getApkGmails() {
		return this.apkGmails;
	}

	public void setApkGmails(Set<ApkGmail> apkGmails) {
		this.apkGmails = apkGmails;
	}

//	public Set<ApkPermission> getApkPermissions() {
//		return this.apkPermissions;
//	}
//
//	public void setApkPermissions(Set<ApkPermission> apkPermissions) {
//		this.apkPermissions = apkPermissions;
//	}
	public String getDownloadPath() {
		return downloadPath;
	}
	public void setDownloadPath(String downloadPath) {
		this.downloadPath = downloadPath;
	}

}