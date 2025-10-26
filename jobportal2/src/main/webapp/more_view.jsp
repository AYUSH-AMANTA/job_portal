<%@page import="com.entity.Jobs"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
<c:if test="${empty userobj }">
     <c:redirect url="login.jsp"></c:redirect>
</c:if>


<%@include file="/all_component/navbar.jsp" %>

<div class="container">
	<div class="row">
		<div class="col-md-12">
			<h5 class="text-center text-primary">All Jobs</h5>

			<%
			String loc = request.getParameter("loc");
			String cat = request.getParameter("cat");
			String msg = "";

			jobDAO dao = new jobDAO(db.getconnet());
			List<Jobs> list = null;

			if ("lo".equals(loc) && "ca".equals(cat)) {
				list = new ArrayList<Jobs>();
				msg = "Job Not Available";
			}  else if ("lo".equals(loc) || !"ca".equals(cat))  {
				list = dao.getJobsByLocationORCategory(loc, cat);
				
			} else {
				list = dao.getJobsByLocationAndCategory(loc, cat);
			}

			

			if (list == null || list.isEmpty()) {
			%>
				<h4 class="text-center text-danger">Job Not Available</h4>
			<%
			} else {
				for (Jobs j : list) {
			%>
					<div class="card mt-2">
						<div class="card-body">
							<div class="text-center text-primary">
								<i class="fa fa-clipboard fa-2x"></i>
							</div>
							<h6><%=j.getTitle()%></h6>
							<p><%=j.getDescription()%></p>
							<div class="row form-row">
								<div class="form-group col-md-3">
									<input type="text" class="form-control form-control-sm"
										value="Location: <%=j.getLocation()%>" readonly>
								</div>
								<div class="form-group col-md-3">
									<input type="text" class="form-control form-control-sm"
										value="Category: <%=j.getCategory()%>" readonly>
								</div>
							</div>
							<h6 class="text-center text-dark">Publish Date: <%=j.getPdate().toString()%></h6>
							<div class="text-center">
								<a href="one_view.jsp?id=<%=j.getId()%>"
									class="btn btn-sm bg-success text-white">View</a>
							</div>
						</div>
					</div>
			<%
				} // close for
			} // close else
			%>

		</div>
	</div>
</div>


</body>
</html>