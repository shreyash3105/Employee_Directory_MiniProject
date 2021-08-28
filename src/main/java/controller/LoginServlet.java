package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import dao.UserDaoImpl;
import entities.User;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String uname=request.getParameter("uname");
		 String upass=request.getParameter("upass");
		
		UserDao dao = new UserDaoImpl();
		User user= dao.getUser(uname);
		System.out.println(user);
		if(user.getuName().equals(uname)&&user.getuPass().equals(upass)) {
			HttpSession session = request.getSession();
			session.setAttribute("uname", uname);
			response.sendRedirect("Home.jsp");
		}
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			PrintWriter p=response.getWriter();
			p.print("<h3>invalid password</h3>");
			rd.forward(request, response);
		}
	}

}
