<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.*,com.dao.jobDAO,com.entity.Jobs,com.db.db" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADMIN: VIEW_JOB</title>
 <%@include file="all_component/all_css.jsp" %>
</head>
<body style="background-color:#f0f1f2;">

<c:if test="${userobj.role ne 'admin' }">
    <c:redirect url="login.jsp"></c:redirect>
</c:if>
     
     <%@include file="all_component/navbar.jsp" %>
     
     <div class="container">
             <div class="row">
                <div class="col-md-12">

                    <c:if test="${not empty msg}">
                        <div class="alert alert-success" role="alert">${msg}</div>
                        <c:remove var="msg" />
                    </c:if>

            <h5 class="text-center text-primary mt-2">All Jobs</h5>
            <%jobDAO dao = new jobDAO(db.getconnet());

                      List<Jobs> list = dao.getAllJobs();
                      for(Jobs j:list){%>
                       
                 <div class="card mt-5">
                <div class="card-body ">
                    <div class="text-center text-primary">
                        <i class="fa fa-clipboard fa-2x"></i>
                    </div>
                    
                    <h6><%=j.getTitle() %></h6>
                    <p><%=j.getDescription() %></p>
                    <br>

                    <div class="form-row">
                        <div class="form-group col-md-3">
                            <input type="text" class="form-control form-control-sm" value="Location:<%= j.getLocation() %> " readonly>
                        </div>
                        <div class="form-group col-md-3">
                            <input type="text" class="form-control form-control-sm" value="Category:<%= j.getCategory() %>  " readonly>
                        </div>
                        <div class="form-group col-md-3">
                            <input type="text" class="form-control form-control-sm" value="Status:<%= j.getStatus() %>  " readonly>
                        </div>
                    </div>
                    
                    <h6>Publish Date: <%= j.getPdate() %> </h6>
                    <div class="text-center">
                        <a href="edit_jobs.jsp?id=<%=j.getId()%>" class="btn btn-sm bg-success text-white ">Edit</a>
                        <a href="delete?id=<%=j.getId()%>" class="btn btn-sm bg-danger text-white">Delete</a>
                    </div>
                </div>
            </div>
                    	  
                      <%}
                      %>
            
            
            
            
        </div>
    </div>
</div>
                        
     
     

</body>
</html>