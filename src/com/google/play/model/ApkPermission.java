package com.google.play.model;

/**
 * ApkPermission entity. @author MyEclipse Persistence Tools
 */

public class ApkPermission implements java.io.Serializable {

	private static final long serialVersionUID = -8849117192565658714L;
	// Fields

	private Integer apkPerId;
	private ApkInfo apkInfo;
	private Permission permission;

	// Constructors

	/** default constructor */
	public ApkPermission() {
	}

	/** full constructor */
	public ApkPermission(ApkInfo apkInfo, Permission permission) {
		this.apkInfo = apkInfo;
		this.permission = permission;
	}

	// Property accessors

	public Integer getApkPerId() {
		return this.apkPerId;
	}

	public void setApkPerId(Integer apkPerId) {
		this.apkPerId = apkPerId;
	}

	public ApkInfo getApkInfo() {
		return this.apkInfo;
	}

	public void setApkInfo(ApkInfo apkInfo) {
		this.apkInfo = apkInfo;
	}

	public Permission getPermission() {
		return this.permission;
	}

	public void setPermission(Permission permission) {
		this.permission = permission;
	}

}