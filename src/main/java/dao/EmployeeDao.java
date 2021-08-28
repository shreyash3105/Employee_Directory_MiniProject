package dao;

import java.util.List;

import entities.Employee;

public interface EmployeeDao {

	void insert(Employee employee);

	List<Employee> getAll();

	void updateStudent(Employee employee);

	void deleteStud(int id);
}
