<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
<%@include file="all_component/all_css.jsp" %>
<title>Login Page</title>
</head>
<body style="background-color:#f0f1f2;">
<%@include file="all_component/navbar.jsp" %>

<div class="container-fluid">
    <div class="row row-5">
        <div class="col-md-4 offset-md-4 mt-5">
            <div class="card">
                <div class="card-body">
                    <div class="text-center">
                        <i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
                        <h5>Login Page</h5>
                    </div>
                    <c:if test="${not empty msg}">
                        <h4 class="text-center text-danger">${msg}</h4>
                        <c:remove var="msg" scope="session" />
                    </c:if>
                       
                        

                    <form action="login" method="post">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Enter Email</label>
                            <input type="email" required="required" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="em">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Enter Password</label>
                            <input type="password" required="required" class="form-control" id="exampleInputPassword1" name="ps">
                        </div>
                        <button type="submit" class="btn btn-primary badge-pill btn-block">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>