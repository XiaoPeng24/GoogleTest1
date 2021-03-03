package com.google.play.model;

/**
 * ApkGmail entity. @author MyEclipse Persistence Tools
 */

public class ApkGmail {

	// Fields
	private Integer apkGmailId;
	private ApkInfo apkInfo;
	private GmailInfo gmailInfo;

	// Constructors

	/** default constructor */
	public ApkGmail() {
	}

	/** full constructor */
	public ApkGmail(ApkInfo apkInfo,GmailInfo gmailInfo) {
		this.apkInfo = apkInfo;
		this.gmailInfo = gmailInfo;
	}

	// Property accessors

	public Integer getApkGmailId() {
		return this.apkGmailId;
	}

	public void setApkGmailId(Integer apkGmailId) {
		this.apkGmailId = apkGmailId;
	}

	public ApkInfo getApkInfo() {
		return this.apkInfo;
	}

	public void setApkInfo(ApkInfo apkInfo) {
		this.apkInfo = apkInfo;
	}

	public GmailInfo getGmailInfo() {
		return this.gmailInfo;
	}

	public void setGmailInfo(GmailInfo gmailInfo) {
		this.gmailInfo = gmailInfo;
	}

}