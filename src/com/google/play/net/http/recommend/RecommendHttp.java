package com.google.play.net.http.recommend;

import java.util.List;

import com.google.play.model.ApkInfo;
import com.google.play.model.GmailInfo;

public interface RecommendHttp {

	public List<ApkInfo> getRecomendApks(String packageName,
			Integer type, Integer offset, Integer numberOfResult, GmailInfo gmailInfo) throws Exception;
}
