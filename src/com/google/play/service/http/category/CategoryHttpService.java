package com.google.play.service.http.category;

import java.util.List;

import com.google.play.model.ApkInfo;

public interface CategoryHttpService {

	public List<ApkInfo> getCategoryFromGoogleplay(String categoryId,
			String subCategoryId, Integer offset, Integer numberOfResult) throws Exception;
	
	public List<ApkInfo> getMainCategoryFromGoogleplay(String categoryId,
			String subCategoryId, Integer offset, Integer numberOfResult) throws Exception;
	
	public void updateMainCategoryOntime() throws Exception;
}
