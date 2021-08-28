package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import entities.Employee;

public class EmployeeDaoImpl implements EmployeeDao {
	
	private Session getSession() {
		Configuration config = new Configuration();
		config.configure("hibernate.cfg.xml");
		SessionFactory sf = config.buildSessionFactory();
		Session session = sf.openSession();
		return session;
	}

	public void insert(Employee employee) {
		Session session=getSession();
		Transaction tr = session.beginTransaction();
		session.save(employee);
		tr.commit();
		session.close();
		//sf.close();
	}

	public List<Employee> getAll() {
		Session session=getSession();
		Transaction tr = session.beginTransaction();
		@SuppressWarnings("unchecked")
		List<Employee> list=session.createQuery("from Employee").getResultList();
		tr.commit();
		return list;
		
	}

	public void updateStudent(Employee employee) {
		Session session=getSession();
		Transaction tr = session.beginTransaction();
		session.update(employee);
		tr.commit();
		session.close();
		
	}

	public void deleteStud(int id) {
		Session session=getSession();
		Transaction tr = session.beginTransaction();
		Employee employee=(Employee) session.get(Employee.class, id);
		session.delete(employee);
		tr.commit();
		session.close();
		
	}

}
