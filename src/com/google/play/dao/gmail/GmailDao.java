package com.google.play.dao.gmail;

import java.util.List;

import com.google.play.model.GmailInfo;

public interface GmailDao {
	
	public List<GmailInfo> getGmails() throws Exception;
	
	public void updateLoginedToken(GmailInfo gmailInfo) throws Exception;

	public void updateGmailState(GmailInfo gmailInfo) throws Exception;
}
