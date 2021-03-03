package com.google.play.net.http.category;

import java.util.List;

import com.google.play.model.ApkInfo;
import com.google.play.model.GmailInfo;

public interface CategoryHttp {

	public List<ApkInfo> getCategoryApk(String categoryId, String subCategoryId,
			Integer offset, Integer numberOfResult, GmailInfo gmailInfo) throws Exception;
}
