package com.google.play.service.http.recommend.impl;

import java.util.List;
import java.util.Map;

import com.google.play.model.ApkInfo;
import com.google.play.model.GmailInfo;
import com.google.play.net.http.recommend.RecommendHttp;
import com.google.play.service.gmail.GmailService;
import com.google.play.service.http.recommend.RecommendHttpService;

public class RecommendHttpServiceImpl implements RecommendHttpService {

    private GmailService gmailService;

	private RecommendHttp recommendHttp;
	
	@Override
	public List<ApkInfo> getRecommendationsFromGoogleplay(String packageName,
			Integer type, Integer offset, Integer numberOfResult)
			throws Exception {
		Map<Integer,GmailInfo> gmail;
		Integer position;
		GmailInfo gmailInfo;
		List<ApkInfo> apks;
		
		while(true){

			gmail=gmailService.getLoginedGmail();
			position = gmail.keySet().iterator().next();
			gmailInfo = gmail.get(position);
			
			try{
				apks = recommendHttp.getRecomendApks(packageName, type, offset, numberOfResult, gmailInfo);
				return apks;
			}catch(Exception ex){
				if(! gmailInfo.count()){
					throw new Exception("The gmail has failed more than three times!");
				}else{
					gmailInfo.add();//失败次数加一
					gmailService.removeCacheGmailToken(position);
				}
			}
		}
	}
	
	public GmailService getGmailService() {
		return gmailService;
	}

	public void setGmailService(GmailService gmailService) {
		this.gmailService = gmailService;
	}

	public RecommendHttp getRecommendHttp() {
		return recommendHttp;
	}

	public void setRecommendHttp(RecommendHttp recommendHttp) {
		this.recommendHttp = recommendHttp;
	}

}
