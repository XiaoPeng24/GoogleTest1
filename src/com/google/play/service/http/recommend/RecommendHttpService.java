package com.google.play.service.http.recommend;

import java.util.List;

import com.google.play.model.ApkInfo;

public interface RecommendHttpService {
	
	public List<ApkInfo> getRecommendationsFromGoogleplay(String packageName,
			Integer type, Integer offset, Integer numberOfResult) throws Exception;

}
