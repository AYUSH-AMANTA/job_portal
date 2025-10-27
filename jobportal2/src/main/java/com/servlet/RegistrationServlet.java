package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDAO;
import com.dao.jobDAO;
import com.db.db;
import com.entity.Jobs;
import com.entity.User;

@WebServlet("/add_user")
public class RegistrationServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			        String name = req.getParameter("name");
			        String qualification = req.getParameter("qua");
			        String email = req.getParameter("email");
			        String password = req.getParameter("ps");
			        
			        UserDAO dao = new UserDAO(db.getconnet());
			    	User u = new User(name,email,password,qualification,"User");
			    	
			    	HttpSession session =req.getSession();
		            
		            boolean f = dao.addUser(u);
		            
		            if(f==true) {
		            	session.setAttribute("msg", "Registration SUCESSFULL.");
		            	resp.sendRedirect("registration.jsp");
		            	
		            }else {
		            	session.setAttribute("msg", "Registration SUCESSFULL.");
		            	resp.sendRedirect("registration.jsp");
		            	
		            	
		            }
			
			
			
		}
		
		catch(Exception e){
			
			e.printStackTrace();
			
		}
	}
	
	
	

}