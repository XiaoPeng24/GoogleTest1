package com.google.play.net.http.gmail;

import java.io.IOException;

import com.akdeniz.googleplaycrawler.GooglePlay.AndroidCheckinResponse;
import com.google.play.model.GmailInfo;

public interface GmailHttp {
    	
	public Boolean LoginGmail(GmailInfo gmailInfo);
	
	public AndroidCheckinResponse postCheckin(byte[] request)
			throws IOException;
	
	public String loginAC2DM(GmailInfo gmailInfo) throws IOException;
	
	public AndroidCheckinResponse checkin(GmailInfo gmailInfo) throws Exception;
}
