package com.google.play.dao.gmail.impl;

import java.util.List;

import org.hibernate.type.StringType;
import org.hibernate.type.Type;

import com.google.play.dao.base.impl.BaseDaoImpl;
import com.google.play.dao.gmail.GmailDao;
import com.google.play.model.GmailInfo;

public class GmailDaoImpl extends BaseDaoImpl<GmailInfo, Integer> implements GmailDao {

	@Override
	public List<GmailInfo> getGmails() throws Exception {
		
		String hql="SELECT new GmailInfo(gmailId,gmailAccout,gmailPsw,gmailEmail,"
				+ "gmailState,deviceId) from  GmailInfo where gmailState = ?";
		Object[] params = {"true"};
		Type[] types = {new StringType()};
		int position = (int) (Math.random() * 9);
		System.out.println("position in table: "+position);
		int size = 5;
		return findEntity(hql,params,types, position, size);
	}

	@Override
	public void updateLoginedToken(GmailInfo gmailInfo) throws Exception {
		
		saveOrUpdate(gmailInfo);
	}

	@Override
	public void updateGmailState(GmailInfo gmailInfo) throws Exception {

		saveOrUpdate(gmailInfo);

	}

}
