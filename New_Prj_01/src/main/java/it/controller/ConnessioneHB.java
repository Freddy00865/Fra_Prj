package it.controller;
import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.hibernate.Transaction;
import it.model.Login;


@SuppressWarnings({"rawtypes" })
public class ConnessioneHB {

	private Session session;
	private SessionFactory sessionFactory;
	private Query query;

	public ConnessioneHB() {
		Configuration configuration = new Configuration();
		configuration.configure("hibernate.cfg.xml");
		sessionFactory = configuration.buildSessionFactory();
		session = sessionFactory.openSession();
		
	}
	
	public boolean verificaCredenziali(String user, String password) {
		Transaction transaction = null;
		
		try {
			transaction = session.beginTransaction();
			query = session.createQuery("FROM Login WHERE user = :user AND password = :password");
			query.setParameter("user", user);
			query.setParameter("password", password);
			
			Login login = (Login)query.uniqueResult();
			transaction.commit();
			return (login != null);
				
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
			return false;
			
		}
			
	}
		
	 public void close() {
	        session.close();
	        sessionFactory.close();
	    }

	}
	
	

