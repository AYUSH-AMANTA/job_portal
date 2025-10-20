<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 
 
 <%@include file="all_component/all_css.jsp" %>
 <style type="text/css">
 
 .back-img{
 
  background-image: url("images/img.jpg");  
  background-size: cover; 
  width:100%;
  height:80vh;                 
        
  background-repeat: no-repeat;   
 
 
 }
 
  .bg-custom2{
 
     background: #4894EB  !important;
     width:fit-content;
    
 }
 
 </style>


 
</head>
<body>
          
          
          <%@include file="all_component/navbar.jsp" %>
          
        
          
          
          <div class="container-fluid back-img">
              <div class="text-start">
                   <h1 class="text-white p-4  bg-custom2"><i class="fa-solid fa-book"></i >Online Job Portal</h1>
              </div>
          </div>
          
           <%@include file="all_component/footer.jsp" %>
          
    

</body>
</html>