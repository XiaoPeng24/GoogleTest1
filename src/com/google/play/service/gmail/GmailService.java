package com.google.play.service.gmail;

import java.util.Map;

import com.google.play.model.GmailInfo;

public interface GmailService {
		
	public Map<Integer,GmailInfo> getLoginedAC2DMGmail() throws Exception;
	
	public Map<Integer,GmailInfo> getLoginedGmail() throws Exception;
	
	public void removeCacheGmailToken(Integer position) throws Exception;
}
