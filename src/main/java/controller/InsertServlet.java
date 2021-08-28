package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EmployeeDao;
import dao.EmployeeDaoImpl;
import entities.Employee;

public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InsertServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("name");
		String dept=request.getParameter("dept");
		String mobileNo=request.getParameter("mobileNo");
		String emailId=request.getParameter("emailId");
		Employee e=new Employee(name, dept, mobileNo, emailId);
		EmployeeDao dao=new EmployeeDaoImpl();
		dao.insert(e);
		response.sendRedirect("Home.jsp");
	}

}
