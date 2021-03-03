package com.google.play.dao.base;

import java.io.Serializable;
import java.util.List;

import org.hibernate.type.Type;

public interface BaseDao <T, K extends Serializable> {
	/**
	 * 加载实体对象<br/>
	 * 只有当真正用到实体中的数据时才到数据库中进行查询
	 * @param claze
	 * @param id
	 * @throws Exception
	 */
	public T loadEntity(Class<T> claze, K id) throws Exception;
	/**
	 * 获得实体对象<br/>
	 * 直接到数据库中进行查询
	 * @param claze
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public T getEntity(Class<T> claze, K id) throws Exception;
	/**
	 * 获得实体对象
	 * @param hql
	 * @param params
	 * @param types
	 * @return
	 * @throws Exception
	 */
	public List<T> findEntity(String hql, Object[] params, Type[] types) throws Exception;
	/**
	 * 获得实体对象集合
	 * @param hql
	 * @param params
	 * @param types
	 * @return
	 * @throws Exception
	 */
	public List<T> findEntity(String hql, Object[] params, Type[] types, int startPos, int pos) throws Exception;
	/**
	 * 通过hql语句查找实体集合
	 * @param hql
	 * @return
	 * @throws Exception
	 */
	public List<T> findEntity(String hql) throws Exception;
	/**
	 * 分页查询实体 
	 * @param hql
	 * @param currentPage
	 * @param pageSize
	 * @return
	 * @throws Exception
	 */
	public List<T> findPageEntity(String hql, int startPostion, int size) throws Exception; 
	
	//更新或者保存
	public void saveOrUpdate(T t)throws Exception;
	
	public void Save(T t) throws Exception;
	
	public void Update(T t) throws Exception;

}

