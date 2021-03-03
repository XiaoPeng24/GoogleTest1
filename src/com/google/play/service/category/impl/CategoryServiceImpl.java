package com.google.play.service.category.impl;

import com.google.play.dao.category.CategoryDao;
import com.google.play.model.Category;
import com.google.play.service.category.CategoryService;

public class CategoryServiceImpl implements CategoryService{
	
	private CategoryDao categoryDao;

	public Category getCategoryByName(String categoryName) throws Exception {
	
		return categoryDao.getCategoryByName(categoryName);
				
	}
	
		
	public CategoryDao getCategoryDao() {
		return categoryDao;
	}
	public void setCategoryDao(CategoryDao categoryDao) {
		this.categoryDao = categoryDao;
	}

}
