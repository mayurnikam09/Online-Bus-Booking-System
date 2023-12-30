package com.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.model.BusDetail;
import com.model.SignUp;
import com.util.HibernateUtility;

public class BusBookingDAOImpl implements BusBookingDAO{

	@Override
	public void saveSignUp(SignUp signup) {
		
		SessionFactory factory=HibernateUtility.getSessionFactory();
		Session session=factory.openSession();
		
		Transaction tx=session.beginTransaction();
		
		session.save(signup);
		System.out.println("SignUp Successfully!!");
		tx.commit();
		session.close();
	}

	@Override
	public SignUp checkLogin(String email,String password) {
		
		SessionFactory factory=HibernateUtility.getSessionFactory();
		Session session=factory.openSession();
		
		Transaction tx=session.beginTransaction();
		
		return session.createQuery("From SignUp WHERE email =: email and password =: password",SignUp.class)
				.setParameter("email", email).setParameter("password", password).uniqueResult();
	}

	@Override
	public void saveBusDetail(BusDetail busdetail) {
		
		SessionFactory factory=HibernateUtility.getSessionFactory();
		Session session=factory.openSession();
		
		Transaction tx=session.beginTransaction();
		
		session.save(busdetail);
		tx.commit();
		session.close();
	}

	@Override
	public List<BusDetail> getAllBusDetail() {
		
		SessionFactory factory=HibernateUtility.getSessionFactory();
		Session session=factory.openSession();
		
		Transaction tx=session.beginTransaction();
		Criteria criteria=session.createCriteria(BusDetail.class);
		List<BusDetail> list=criteria.list();
		tx.commit();
		session.close();
		System.out.println("Data Read");
		return list;
	}

	@Override
	public List<BusDetail> SearchBusDetail(String fromcity, String tocity) {
		
		SessionFactory factory=HibernateUtility.getSessionFactory();
		Session session=factory.openSession();
		Transaction tx=session.beginTransaction();
		
		String hql="SELECT bd FROM BusDetail bd WHERE bd.fromcity =: fromcity And bd.tocity=: tocity";
		Query query=session.createQuery(hql);
		query.setParameter("fromcity", fromcity);
		query.setParameter("tocity", tocity);
		List<BusDetail> list=query.list();
		
		System.out.println("Bus Search");
		return list;
	}
}
