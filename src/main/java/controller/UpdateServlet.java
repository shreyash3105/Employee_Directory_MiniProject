package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EmployeeDao;
import dao.EmployeeDaoImpl;
import entities.Employee;
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		String name=request.getParameter("name");
		String dept=request.getParameter("dept");
		String mobileNo=request.getParameter("mobileNo");
		String emailId=request.getParameter("emailId");
		Employee e=new Employee(id, name, dept, mobileNo, emailId);
		EmployeeDao dao=new EmployeeDaoImpl();
		dao.updateStudent(e);
		response.sendRedirect("Home.jsp");
	}

}
