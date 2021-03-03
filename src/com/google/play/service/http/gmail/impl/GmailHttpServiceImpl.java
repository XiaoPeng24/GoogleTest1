package com.google.play.service.http.gmail.impl;

import com.google.play.model.GmailInfo;
import com.google.play.net.http.gmail.GmailHttp;
import com.google.play.service.http.gmail.GmailHttpService;

public class GmailHttpServiceImpl implements GmailHttpService{
	
	private GmailHttp gmailHttp;

	public GmailHttp getGmailHttp() {
		
		return gmailHttp;
		
	}

	public void setGmailHttp(GmailHttp gmailHttp) {
		this.gmailHttp = gmailHttp;
	}

	public Boolean loginGmail(GmailInfo gmailInfo) {
		
		return gmailHttp.LoginGmail(gmailInfo);
	}

}
