package com.google.play.service.gmail.impl;


import java.util.Map;

import com.google.play.cache.gmail.GmailCache;
import com.google.play.dao.gmail.GmailDao;
import com.google.play.model.GmailInfo;
import com.google.play.net.http.gmail.GmailHttp;
import com.google.play.service.gmail.GmailService;

public class GmailServiceImpl implements GmailService{
	
	private GmailCache gmailCache;
	
	private GmailDao gmailDao;
	
	private GmailHttp gmailHttp;
	


	@Override
	public void removeCacheGmailToken(Integer position) throws Exception{
		
		Map<Integer,GmailInfo> gmail = gmailCache.getGmail(position);
		gmail.get(position).setLoginToken(null);
		gmailCache.updateGmail(gmail);
		
	}
	
	@Override
	public Map<Integer,GmailInfo> getLoginedGmail() throws Exception {
		
		while(true){
			
			if(! gmailCache.isCached()) gmailCache.putGmails();
			
			Map<Integer,GmailInfo> gmail = gmailCache.getRandomGmail();
			Integer position = gmail.keySet().iterator().next();
			GmailInfo gmailInfo = gmail.get(position);
			
			if(null == gmailInfo.getLoginToken()){
				
				if(! gmailHttp.LoginGmail(gmailInfo)){
					
					gmailInfo.add();
					if(! gmailInfo.count()){
						throw new Exception("The gmail has failed more than three times!");
					}else{
						
						gmailCache.removeGmail(position);
						gmailInfo.setGmailState("false");
						gmailDao.updateGmailState(gmailInfo);
					}
				}else{
					
					gmailCache.updateGmail(gmail);
					return gmail;
				}
			
			}else{return gmail;}
		}
		
	}
	
	@Override
	public Map<Integer, GmailInfo> getLoginedAC2DMGmail() throws Exception {
		
		while(true){
			
			if(! gmailCache.isCached()) gmailCache.putGmails();
			
			Map<Integer,GmailInfo> gmail = gmailCache.getRandomGmail();
			Integer position = gmail.keySet().iterator().next();
			GmailInfo gmailInfo = gmail.get(position);
				
				gmailHttp.checkin(gmailInfo);
				if(! gmailHttp.LoginGmail(gmailInfo)){
					
					gmailInfo.add();
					if(! gmailInfo.count()){
						throw new Exception("The gmail has failed more than three times!");
					}else{
						
						gmailCache.removeGmail(position);
						gmailInfo.setGmailState("false");
						gmailDao.updateGmailState(gmailInfo);
					}
				}else{
					
					gmailCache.updateGmail(gmail);
					return gmail;
				}
		}
		
	}


	public GmailCache getGmailCache() {
		return gmailCache;
	}

	public void setGmailCache(GmailCache gmailCache) {
		this.gmailCache = gmailCache;
	}

	public GmailDao getGmailDao() {
		return gmailDao;
	}

	public void setGmailDao(GmailDao gmailDao) {
		this.gmailDao = gmailDao;
	}

	public GmailHttp getGmailHttp() {
		return gmailHttp;
	}

	public void setGmailHttp(GmailHttp gmailHttp) {
		this.gmailHttp = gmailHttp;
	}
	
	
}
