<%@page import="java.util.List"%>
<%@page import="com.db.db"%>
<%@page import="com.dao.jobDAO"%>
<%@page import="com.entity.Jobs"%>
<%@ page import="java.util.*,com.dao.jobDAO,com.entity.Jobs,com.db.db" %>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User View Jobs</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
   <c:if test="${empty userobj}">
       <c:redirect url="login.jsp" />
   </c:if>

   <%@include file="all_component/navbar.jsp"%>

   <div class="container mt-3">
      <div class="row">
         <div class="col-md-12">
            <h5 class="text-center text-primary">All Jobs</h5>

            <c:if test="${not empty msg}">
               <h4 class="text-center text-danger">${msg}</h4>
               <c:remove var="msg" scope="session"/>
            </c:if>

          
            <div class="card mb-4">
               <div class="card-body">
                  <form class="form-inline" action="more_view.jsp" method="get">

                     <div class="form-group col-md-5 mt-1">
                        <h5>Location</h5>
                        <select name="loc" class="custom-select">
                           <option selected value="lo">Choose...</option>
                           <option value="Odisha">Odisha</option>
                           <option value="Jharkhand">Jharkhand</option>
                           <option value="Gujurat">Gujurat</option>
                           <option value="Bhubaneswar">Bhubaneswar</option>
                           <option value="Delhi">Delhi</option>
                           <option value="Bonglore">Bonglore</option>
                           <option value="Chennai">Chennai</option>
                           <option value="Hyderobad">Hyderobad</option>
                        </select>
                     </div>

                     <div class="form-group col-md-5 mt-1">
                        <h5>Category</h5>
                        <select class="custom-select" name="cat">
                           <option value="ca" selected>Choose...</option>
                           <option value="IT">IT</option>
                           <option value="Developer">Developer</option>
                           <option value="Banking">Banking</option>
                           <option value="Engineer">Engineer</option>
                           <option value="Teacher">Teacher</option>
                        </select>
                     </div>

                     <div class="form-group col-md-2 mt-4">
                        <button class="btn btn-success btn-block" type="submit">Submit</button>
                     </div>

                  </form>
               </div>
            </div>

         
            <%
               jobDAO dao = new jobDAO(db.getconnet());
               List<Jobs> list = dao.getJobsByStatus();
               for (Jobs j : list) {
            %>
               <div class="card mb-3">
                  <div class="card-body">
                     <div class="text-center text-primary mb-2">
                        <i class="fa fa-clipboard fa-2x"></i>
                     </div>
                     <h6><%= j.getTitle() %></h6>

                     <p>
                        <%= j.getDescription().length() > 120 
                              ? j.getDescription().substring(0, 120) + "..." 
                              : j.getDescription() %>
                     </p>

                     <div class="form-row">
                        <div class="form-group col-md-3">
                           <input type="text" class="form-control form-control-sm" 
                                  value="Location: <%= j.getLocation() %>" readonly>
                        </div>
                        <div class="form-group col-md-3">
                           <input type="text" class="form-control form-control-sm" 
                                  value="Category: <%= j.getCategory() %>" readonly>
                        </div>
                     </div>

                     <h6>Publish Date: <%= j.getPdate().toString() %></h6>
                     <div class="text-center">
                        <a href="one_view.jsp?id=<%= j.getId() %>" 
                           class="btn btn-sm bg-success text-white">View More</a>
                     </div>
                  </div>
               </div>
            <%
               }
            %>

         </div>
      </div>
   </div>
</body>
</html>