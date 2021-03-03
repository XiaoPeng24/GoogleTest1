package com.google.play.model;

import java.util.HashSet;
import java.util.Set;

/**
 * GmailInfo entity. @author MyEclipse Persistence Tools
 */

public class GmailInfo implements java.io.Serializable {

	// Fields

	private static final long serialVersionUID = 3930806856736506495L;
	private Integer gmailId;
	private String gmailAccout;
	private String gmailPsw;
	private String gmailEmail;
	private String deviceId;
	private String securityToken;
	private String gmailState;
	private String loginToken;
	private Set<ApkGmail> apkGmails = new HashSet<ApkGmail>(0);

	private int times = 0;

	// Constructors

	/** default constructor */
	public GmailInfo() {
	}

	/** full constructor */
	public GmailInfo(Integer gmailId,String gmailAccout, String gmailPsw, String gmailEmail,
			         String gmailState, String deviceId) {
		this.gmailId = gmailId;
		this.gmailAccout = gmailAccout;
		this.gmailPsw = gmailPsw;
		this.gmailEmail = gmailEmail;
		this.gmailState = gmailState;
		this.deviceId = deviceId;
	}

	// Property accessors
	public Boolean count() {

		if (getTimes() > 3) {
			return false;
		}
		return true;
	}

	public void add() {
		
		times = getTimes();
		setTimes(++times);
		
	}
	
	public void cut() {
		
		times = getTimes();
		setTimes(--times);
		
	}

	public Integer getGmailId() {
		return this.gmailId;
	}

	public void setGmailId(Integer gmailId) {
		this.gmailId = gmailId;
	}

	public String getGmailAccout() {
		return this.gmailAccout;
	}

	public void setGmailAccout(String gmailAccout) {
		this.gmailAccout = gmailAccout;
	}

	public String getGmailPsw() {
		return this.gmailPsw;
	}

	public void setGmailPsw(String gmailPsw) {
		this.gmailPsw = gmailPsw;
	}

	public String getGmailEmail() {
		return this.gmailEmail;
	}

	public void setGmailEmail(String gmailEmail) {
		this.gmailEmail = gmailEmail;
	}

	public String getDeviceId() {
		return this.deviceId;
	}

	public void setDeviceId(String deviceId) {
		this.deviceId = deviceId;
	}
	

	public String getSecurityToken() {
		return securityToken;
	}

	public void setSecurityToken(String securityToken) {
		this.securityToken = securityToken;
	}


	public String getGmailState() {
		return this.gmailState;
	}

	public void setGmailState(String gmailState) {
		this.gmailState = gmailState;
	}

	public String getLoginToken() {
		return this.loginToken;
	}

	public void setLoginToken(String loginToken) {
		this.loginToken = loginToken;
	}

	public Set<ApkGmail> getApkGmails() {
		return this.apkGmails;
	}

	public void setApkGmails(Set<ApkGmail> apkGmails) {
		this.apkGmails = apkGmails;
	}

	public int getTimes() {
		return times;
	}

	public void setTimes(int times) {
		this.times = times;
	}

}