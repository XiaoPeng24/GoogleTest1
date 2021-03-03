package com.google.play.service.category;

import com.google.play.model.Category;

public interface CategoryService {
	
	public Category getCategoryByName(String categoryName) throws Exception;
}
