package com.servlet;

import java.io.IOException;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import com.db.db;
import com.entity.News;
import com.dao.NewsDAO;

@WebServlet("/news")
public class NewsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        try {
            // Create DAO object
            NewsDAO dao = new NewsDAO(db.getconnet());

            // Fetch news list from DB
            List<News> list = dao.getAllNews();

            // Store it in request
            req.setAttribute("newsList", list);

            // Forward to JSP
            RequestDispatcher rd = req.getRequestDispatcher("news.jsp");
            rd.forward(req, resp);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
