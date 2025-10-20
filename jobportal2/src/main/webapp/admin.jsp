<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
</head>
 <%@include file="all_component/all_css.jsp" %>
 <style type="text/css">
 
 .back-img{
 
  background-image: url("images/img2.jpg");  
  background-size: cover;  
  height:100vh;
  width:100%;                
        
  background-repeat: no-repeat;   
 
 
 }
 
  .bg-custom2{
 
     background: #4894EB  !important;
     width:fit-content;
    
 }
 
 </style>

 
<body>

<c:if test="${userobj.role ne 'admin' }">
    <c:redirect url="login.jsp"></c:redirect>
</c:if>

  <%@include file="all_component/navbar.jsp" %>
  
  
      <div class="container-fluid back-img">
              <div class="text-center">
                   <h1 class="text-white p-4  bg-custom2">Welcome Admin</h1>
              </div>
          </div>

</body>
</html>