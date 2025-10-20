package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.User;
@WebServlet("/login")
public class LoginServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		try {
			String email=req.getParameter("em");
			String pass=req.getParameter("ps");
			User u = new User();
			HttpSession session=req.getSession();
			
			if("ayush@gmail.com".equals(email) && "1234".equals(pass)) {
				session.setAttribute("userobj", u);
				u.setRole("admin");
				resp.sendRedirect("admin.jsp");
			}
			else {
				
			}
	
	
	
	

              }
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}}
