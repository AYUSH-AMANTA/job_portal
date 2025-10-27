<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
<title>Admin Dashboard</title>

<%@include file="all_component/all_css.jsp" %>

<style>

.btn:hover i {
  filter: saturate(2);
  transform: scale(1.1);
  transition: 0.3s ease;
}


/* Background section styling */
.hero-section {
  background: linear-gradient(rgba(0,0,50,0.5), rgba(0,0,50,0.5)), url("images/admin_back.jpeg") no-repeat center center/cover;
  color: white;
  height: 60vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.hero-section h1 {
  font-size: 3rem;
  font-weight: 700;
}

/* Cards section */
/* ===== Cards Section ===== */
.dashboard-cards {
  background-color: #f8f9fc;
  padding: 60px 0;
}

.card-custom {
  border: none;
  border-radius: 15px;
  box-shadow: 0 4px 8px rgba(0,0,0,0.08);
  transition: all 0.3s ease;
  background: #ffffff;
  text-align: center;
  padding: 40px 20px;
  overflow: hidden;
}

.card-custom:hover {
  transform: translateY(-5px);
  box-shadow: 0 8px 16px rgba(0,0,0,0.15);
}

/* ===== Icon Styling ===== */
.card-icon {
  font-size: 32px;                /* Smaller, cleaner size */
  color: #4894EB;
  margin-bottom: 15px;
  filter: grayscale(100%) saturate(0);
  transition: all 0.4s ease;
}

/* ===== Hover Effect: Icon Color Animation ===== */
.card-custom:hover .card-icon {
  filter: grayscale(0%) saturate(1.2);
  transform: scale(1.05);
}

/* ===== Text Styling ===== */
.card-title {
  font-size: 1.2rem;
  font-weight: 600;
  color: #333;
  margin-bottom: 8px;
}

.card-text {
  font-size: 0.95rem;
  color: #666;
}

</style>
</head>

<body>

<!-- Restrict Access -->
<c:if test="${userobj.role ne 'admin' }">
  <c:redirect url="login.jsp"></c:redirect>
</c:if>

<!-- Navbar -->
<%@include file="all_component/navbar.jsp" %>

<!-- Hero Section -->
<section class="hero-section">
  <div>
    <h1>Welcome, Admin!</h1>
    <p class="lead mt-3">Manage jobs, recruiters, and applicants all in one place.</p>
  </div>
</section>

<!-- Dashboard Cards Section -->

<div class="container mt-5 text-center">
  <h3 class="mb-4">Manage Jobs</h3>
  
  <div class="d-flex justify-content-center gap-3 flex-wrap">
    <!-- Post Job Button -->
    <a href="add_job.jsp" class="btn btn-primary btn-lg px-4 py-2">
      <i class="bi bi-plus-circle me-2"></i> Post Job
    </a>

    <!-- View Job Button -->
    <a href="view_job.jsp" class="btn btn-success btn-lg px-4 py-2">
      <i class="bi bi-eye me-2"></i> View Jobs
    </a>
  </div>
</div>


<section class="dashboard-cards">
  <div class="container">
    <div class="row text-center">

      <div class="col-md-3 mb-4">
        <div class="card card-custom py-4">
          <i class="fa fa-briefcase card-icon"></i>
          <h5 class="card-title">Total Jobs</h5>
          <p class="card-text">120+ Active Listings</p>
        </div>
      </div>

      <div class="col-md-3 mb-4">
        <div class="card card-custom py-4">
          <i class="fa fa-users card-icon"></i>
          <h5 class="card-title">Total Applicants</h5>
          <p class="card-text">10,000+ Registered Users</p>
        </div>
      </div>

      <div class="col-md-3 mb-4">
        <div class="card card-custom py-4">
          <i class="fa fa-user-tie card-icon"></i>
          <h5 class="card-title">Recruiters</h5>
          <p class="card-text">5,000+ Verified Recruiters</p>
        </div>
      </div>

      <div class="col-md-3 mb-4">
        <div class="card card-custom py-4">
          <i class="fa fa-check-circle card-icon"></i>
          <h5 class="card-title">Jobs Filled</h5>
          <p class="card-text">2,500+ Positions Closed</p>
        </div>
      </div>

    </div>
  </div>
</section>

<!-- Optional: Footer (only if not already included globally) -->
<%@include file="all_component/footer.jsp" %>

</body>
</html>
