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
import com.entity.Jobs;
@WebServlet("/update")
public class UpdateJobServlet extends HttpServlet  {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		
		try {
			int id =Integer.parseInt(req.getParameter("id"));
			String title = req.getParameter("title");
            String location = req.getParameter("location");
            String category = req.getParameter("category");
            String status = req.getParameter("status");
            String description = req.getParameter("description");
            Jobs j = new Jobs();
            j.setId(id);
            j.setTitle(title);
            j.setDescription(description);
            j.setLocation(location);
            j.setCategory(category);
            j.setStatus(status);
            HttpSession session=req.getSession();
            jobDAO dao = new jobDAO(db.getconnet());
            boolean f = dao.updateJobs(j);
            
            if(f==true) {
            	session.setAttribute("msg", "JOB UPDATED SUCESSFULLY..");
            	resp.sendRedirect("view_job.jsp");
            	
            }else {
            	session.setAttribute("msg", "SOMETHING WRONG ON SERVER..");
            	resp.sendRedirect("view_job.jsp");
            	
            }
            

			
            
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
			
		}


}

}
