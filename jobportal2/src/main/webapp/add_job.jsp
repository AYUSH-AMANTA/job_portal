<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add jobs</title>
 <%@include file="all_component/all_css.jsp" %>
</head>
<body>

<c:if test="${userobj.role ne 'admin' }">
    <c:redirect url="login.jsp"></c:redirect>
</c:if>
         
         <%@include file="all_component/navbar.jsp" %>
          
         
         
         
         <div class="container p-2">
    <div class="col-md-10 offset-md-1 mt-4">
        <div class="card">
            <div class="card-body">
                <div class="text-center text-success">
                    <i class="fas fa-user-friends fa-3x"></i>

                    <c:if test="${not empty msg}">
                        <div class="alert alert-success" role="alert">${msg}</div>
                        <c:remove var="msg" />
                    </c:if>

                </div>

                <h5>Add Jobs</h5>

                <form action="add_job" method="post">
                    <div class="form-group">
                        <label>Enter Title</label>
                        <input type="text" name="title" required="required" class="form-control">
                  </div>
                  
                  <div class="form-row">
                        <div class="form-group col-md-4">
                            <label>Location</label>
                            <select name="location" class="custom-select" id="inlineFormCustomSelectPref">
                                <option selected>Choose...</option>
                                <option value="Odisha">Odisha</option>
                                <option value="Jharkhand">Jharkhand</option>
                                <option value="Gujarat">Gujarat</option>
                                <option value="Bhubaneswar">Bhubaneswar</option>
                                <option value="Delhi">Delhi</option>
                                <option value="Bangalore">Bangalore</option>
                                <option value="Chennai">Chennai</option>
                                <option value="Hyderabad">Hyderabad</option>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label>Category</label>
                            <select name="category" class="custom-select" id="inlineFormCustomSelectPref">
                                <option selected>Choose...</option>
                                <option value="IT">IT</option>
                                <option value="Developer">Developer</option>
                                <option value="Banking">Banking</option>
                                <option value="Engineer">Engineer</option>
                                <option value="Teacher">Teacher</option>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label>Status</label>
                            <select name="status" class="form-control">
                                <option class="Active" value="Active">Active</option>
                                <option class="Inactive" value="Inactive">Inactive</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label>Enter Description</label>
                        <textarea required="required" rows="6" cols="4" name="description" class="form-control"></textarea>
                    </div>

                    <button class="btn btn-primary" type="submit">Publish Job</button>
                </form>
            </div>
        </div>
    </div>
</div>
                        
                  
</body>
</html>