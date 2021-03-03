package com.google.play.model;
/**
 * Category entity. @author MyEclipse Persistence Tools
 */

public class Category implements java.io.Serializable {

	private static final long serialVersionUID = 8132153745523989L;
	private Integer categoryId;
	private String categoryCode;
	private String categoryName;
	private String parentCategory;
//	private Set<ApkInfo> apkInfos = new HashSet<ApkInfo>(0);

	// Constructors
	/** default constructor */
	public Category() {
	}

	/** full constructor */
	public Category(String categoryCode, String categoryName,String parentCategory) {
		this.categoryCode = categoryCode;
		this.categoryName = categoryName;
		this.parentCategory = parentCategory;
//		this.apkInfos = apkInfos;
	}

	// Property accessors

	public Integer getCategoryId() {
		return this.categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryCode() {
		return this.categoryCode;
	}

	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}

	public String getCategoryName() {
		return this.categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}


	public String getParentCategory() {
		return parentCategory;
	}

	public void setParentCategory(String parentCategory) {
		this.parentCategory = parentCategory;
	}
	
//	public Set<ApkInfo> getApkInfos() {
//		return this.apkInfos;
//	}
//
//	public void setApkInfos(Set<ApkInfo> apkInfos) {
//		this.apkInfos = apkInfos;
//	}

}