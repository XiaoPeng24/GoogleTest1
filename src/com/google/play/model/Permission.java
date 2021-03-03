package com.google.play.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Permission entity. @author MyEclipse Persistence Tools
 */

public class Permission implements java.io.Serializable {

	// Fields

	private static final long serialVersionUID = 651619089825957028L;
	private Integer permissionId;
	private String permissionValue;
	private String permissionDes;
	private Set<ApkPermission> apkPermissions = new HashSet<ApkPermission>(0);

	// Constructors

	/** default constructor */
	public Permission() {
	}

	/** full constructor */
	public Permission(String permissionValue, String permissionDes,
			Set<ApkPermission> apkPermissions) {
		this.permissionValue = permissionValue;
		this.permissionDes = permissionDes;
		this.apkPermissions = apkPermissions;
	}

	// Property accessors

	public Integer getPermissionId() {
		return this.permissionId;
	}

	public void setPermissionId(Integer permissionId) {
		this.permissionId = permissionId;
	}

	public String getPermissionValue() {
		return this.permissionValue;
	}

	public void setPermissionValue(String permissionValue) {
		this.permissionValue = permissionValue;
	}

	public String getPermissionDes() {
		return this.permissionDes;
	}

	public void setPermissionDes(String permissionDes) {
		this.permissionDes = permissionDes;
	}

	public Set<ApkPermission> getApkPermissions() {
		return this.apkPermissions;
	}

	public void setApkPermissions(Set<ApkPermission> apkPermissions) {
		this.apkPermissions = apkPermissions;
	}

}