package com.google.play.dao.category;

import com.google.play.model.Category;

public interface CategoryDao {
	
	// according to the categoryCode to get the information of category
	public Category getCategoryByName(String categoryCode) throws Exception;

}
