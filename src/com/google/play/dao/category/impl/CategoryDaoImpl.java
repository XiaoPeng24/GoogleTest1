package com.google.play.dao.category.impl;

import java.util.List;

import org.hibernate.type.StringType;
import org.hibernate.type.Type;

import com.google.play.dao.base.impl.BaseDaoImpl;
import com.google.play.dao.category.CategoryDao;
import com.google.play.model.Category;

public class CategoryDaoImpl extends BaseDaoImpl<Category, Integer> implements
		CategoryDao {

	public Category getCategoryByName(String categoryName) throws Exception {

		String hql = "SELECT new Category(categoryCode, categoryName, parentCategory) FROM Category WHERE categoryName = ?";
		Object[] params = { categoryName };
		Type[] types = { new StringType() };

		List<Category> list = findEntity(hql, params, types);
		if (list.isEmpty()) {
			return null;
		} else {
			return list.get(0);
		}
	}

}
