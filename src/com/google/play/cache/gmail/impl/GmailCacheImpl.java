package com.google.play.cache.gmail.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.google.play.cache.gmail.GmailCache;
import com.google.play.dao.gmail.GmailDao;
import com.google.play.model.GmailInfo;

public class GmailCacheImpl implements GmailCache {

	private List<GmailInfo> gmailList = new ArrayList<GmailInfo>();

	private GmailDao gmailDao;

	public GmailDao getGmailDao() {
		return gmailDao;
	}

	public void setGmailDao(GmailDao gmailDao) {
		this.gmailDao = gmailDao;
	}

	@Override
	public Boolean isCached() throws Exception {

		if (gmailList.isEmpty()) {

			return false;
		}
		return true;
	}

	@Override
	public void putGmails() throws Exception {

		gmailList = gmailDao.getGmails();

	}

	public Map<Integer,GmailInfo> getRandomGmail() throws Exception {

		Map<Integer,GmailInfo> gmail = new HashMap<>();
		
		int position = (int) (Math.random() * (gmailList.size()-1));
		GmailInfo gmailInfo = gmailList.get(position);
		gmail.put(position, gmailInfo);
		
		System.out.println("random gmail :"+gmailInfo.getGmailAccout());
		return gmail;
	}

	public void removeGmail(int position) throws Exception {

		gmailList.remove(position);

	}
	
	public Map<Integer,GmailInfo> getGmail(int position){
		
		Map<Integer,GmailInfo> gmail = new HashMap<>();
		gmail.put(position, gmailList.get(position));
		return gmail;
	}

	@Override
	public void updateGmail(Map<Integer,GmailInfo> gmailInfo) throws Exception {
			
			Integer position = gmailInfo.keySet().iterator().next();
			gmailList.set(position, gmailInfo.get(position));

	}
}
