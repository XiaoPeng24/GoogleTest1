package com.google.play.dao.base.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.type.Type;

import com.google.play.dao.base.BaseDao;


public class BaseDaoImpl<T, K extends Serializable> implements BaseDao<T, K> {
	
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public T loadEntity(Class<T> claze, K id) throws Exception {
		return (T) getCurrentSession().load(claze, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public T getEntity(Class<T> claze, K id) throws Exception {
		return (T) getCurrentSession().get(claze, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findEntity(String hql, Object[] params, Type[] types)
			throws Exception {
		System.out.println("hql==" + hql);
		Query query = getCurrentSession().createQuery(hql);
		query.setParameters(params, types);
		return query.list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findEntity(String hql, Object[] params, Type[] types,
			int startPos, int size) throws Exception {
		Query query = getCurrentSession().createQuery(hql);
		query.setParameters(params, types);
		query.setFirstResult(startPos).setMaxResults(size);
		return query.list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findEntity(String hql) throws Exception {
		return getCurrentSession().createQuery(hql).list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findPageEntity(String hql, int startPostion, int size)
			throws Exception {
		return getCurrentSession().createQuery(hql)
				.setFirstResult(startPostion).setMaxResults(size).list();
	}

	public void saveOrUpdate(T t)
			throws Exception {
			getCurrentSession().saveOrUpdate(t);
	}

	public void Save(T t)
	        throws Exception {
		    getCurrentSession().save(t);
	}
	
	public void Update(T t)
	        throws Exception {
		    getCurrentSession().update(t);
	}
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
