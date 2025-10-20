package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.jobDAO;
import com.db.db;
@WebServlet("/delete")
public class DeleteJobServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			int id =Integer.parseInt(req.getParameter("id"));
			HttpSession session=req.getSession();
            jobDAO dao = new jobDAO(db.getconnet());
            boolean f = dao.deleteJobs(id);
            
            if(f==true) {
            	session.setAttribute("msg", "JOB DELETED SUCESSFULLY..");
            	resp.sendRedirect("view_job.jsp");
            	
            }else {
            	session.setAttribute("msg", "SOMETHING WRONG ON SERVER..");
            	resp.sendRedirect("view_job.jsp");
            	
            }
            
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
	}
	

}}
