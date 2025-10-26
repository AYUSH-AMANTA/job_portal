package com.servlet;
import com.dao.jobDAO;
import com.db.db;
import com.entity.Jobs;
import com.dao.UserDAO;

import com.db.db;
import com.entity.User;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/update_profile")
public class UpdateUserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
          
            int id = Integer.parseInt(req.getParameter("id"));
            String name = req.getParameter("name");
            String qua = req.getParameter("qualification");
            String email = req.getParameter("email");
            String ps = req.getParameter("ps");

           
            UserDAO dao = new UserDAO(db.getconnet());
            User u = new User();
            u.setEmail(email);
            u.setId(id);
            u.setName(name);
            u.setPassword(ps);
            u.setQualification(qua);
            
      
            boolean f = dao.updateUser(u);

       
            HttpSession session = req.getSession();

            if (f) {
                session.setAttribute("msg", "Profile Update Successfully");
                resp.sendRedirect("home.jsp");
            } else {
                session.setAttribute("msg", "Something wrong on server");
                resp.sendRedirect("home.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}