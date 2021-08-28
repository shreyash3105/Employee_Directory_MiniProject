package dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import entities.User;

public class UserDaoImpl implements UserDao {

	private Session getSession() {
		Configuration config = new Configuration();
		config.configure("hibernate.cfg.xml");
		SessionFactory sf = config.buildSessionFactory();
		Session session = sf.openSession();
		return session;
	}

	public User getUser(String uname) {
		Session session=getSession();
		Transaction tr = session.beginTransaction();
		User user = session.get(User.class, uname);
		tr.commit();
		session.close();
		System.out.println(user);
		return user;
	}


}
