<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Job Portal</title>

<%@include file="all_component/all_css.jsp" %>

<style type="text/css">

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}

body {
  background: #f4f7fb;
  color: #333;
}

/* Navbar */
header {
  background: #004aad;
  color: white;
  padding: 15px 50px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  position: sticky;
  top: 0;
  z-index: 10;
}

header h1 {
  font-size: 28px;
}

nav ul {
  list-style: none;
  display: flex;
  gap: 25px;
}

nav ul li a {
  text-decoration: none;
  color: white;
  font-weight: 500;
  transition: color 0.3s;
}

nav ul li a:hover {
  color: #ffcc00;
}

/* Hero Section */
.hero {
  background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), 
  url('images/back.jpeg') no-repeat center/cover;
  color: white;
  text-align: center;
  padding: 100px 20px;
}

.hero h2 {
  font-size: 42px;
  margin-bottom: 20px;
}

.hero p {
  font-size: 18px;
  margin-bottom: 30px;
}

/* Stats Section */
.stats {
  background: #ffffff;
  display: flex;
  justify-content: space-around;
  flex-wrap: wrap;
  text-align: center;
  padding: 60px 20px;
  box-shadow: 0 2px 10px rgba(0,0,0,0.1);
}

.stats div {
  margin: 20px;
}

.stats h3 {
  font-size: 36px;
  color: #004aad;
}

.stats p {
  font-size: 18px;
  color: #555;
}

/* Categories */
.categories {
  padding: 60px 50px;
  text-align: center;
}

.categories h2 {
  margin-bottom: 30px;
  color: #004aad;
}

.category-container {
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
  gap: 25px;
}

.category {
  background: white;
  padding: 30px;
  width: 220px;
  border-radius: 10px;
  box-shadow: 0 3px 8px yellow;
  transition: transform 0.3s;
}

.category:hover {
  transform: translateY(-10px);
}

/* ✅ Featured Companies - Updated Section */
.companies {
  background: #f5f8ff;
  padding: 60px 50px;
  text-align: center;
}

.companies h2 {
  margin-bottom: 40px;
  color: #003366;
  font-weight: 600;
  font-size: 28px;
}

/* Logo Grid */
.company-logos {
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
  gap: 40px;
}

/* Logo Cards */
.company-logos img {
  width: 120px;
  height: 120px;
  object-fit: contain;
  padding: 20px;
  background: #ffffff;
  border-radius: 16px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
  filter: grayscale(100%) saturate(0%);
  opacity: 0.8;
  transition: all 0.4s ease;
}

/* Hover Animation */
.company-logos img:hover {
  filter: grayscale(0%) saturate(100%);
  opacity: 1;
  transform: translateY(-6px) scale(1.03);
  box-shadow: 0 6px 18px rgba(0, 0, 0, 0.15);
}

/* Testimonials */
.testimonials {
  padding: 60px 50px;
  text-align: center;
  background: #ffffff;
}

.testimonials h2 {
  margin-bottom: 30px;
  color: #004aad;
}

.testimonial-cards {
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
  gap: 30px;
}

.testimonial {
  background: #f4f7fb;
  padding: 25px;
  width: 300px;
  border-radius: 10px;
  box-shadow: 0 3px 10px rgba(0,0,0,0.1);
}

.testimonial p {
  font-style: italic;
  margin-bottom: 15px;
}

.testimonial h4 {
  color: #004aad;
}

/* Call to Action */
.cta {
  background: #004aad;
  color: white;
  text-align: center;
  padding: 70px 20px;
}

.cta h2 {
  margin-bottom: 20px;
  font-size: 32px;
}

.cta button {
  background: #ffcc00;
  border: none;
  padding: 15px 30px;
  font-size: 18px;
  border-radius: 8px;
  cursor: pointer;
  transition: background 0.3s;
}

.cta button:hover {
  background: #ffc107;
}

/* Top Job Categories styling */
.category-card {
  border: 2px solid rgba(0, 0, 128, 0.1); /* Subtle navy tone outline */
  border-radius: 12px;
  padding: 20px;
  text-align: center;
  background-color: #fff;
  font-weight: 600; /* Bold text */
  color: #0d1b66; /* Professional navy text */
  box-shadow: 0 2px 6px rgba(0, 0, 0, 0.08);
  transition: all 0.3s ease-in-out;
}

/* Hover effect for smooth pop + color balance */
.category-card:hover {
  transform: translateY(-5px);
  border-color: #3b57ff; /* Highlight color matching navbar theme */
  box-shadow: 0 6px 15px rgba(59, 87, 255, 0.25);
  color: #2d2d2d; /* Slightly darker for contrast */
  background: #f8faff; /* Subtle tone to show hover */
}

/* Section title enhancement */
.top-job-title {
  font-weight: 700;
  color: #13206d; /* Deep navy */
  text-align: center;
  margin-bottom: 30px;
  letter-spacing: 0.5px;
}

</style>
</head>

<body>

<%@include file="all_component/navbar.jsp" %>

<section class="hero">
  <h2>Find your dream job today.</h2>
  <p>Thousands of opportunities are waiting for you. Start your journey now!</p>
</section>

<!-- Stats Section -->
<section class="stats">
  <div>
    <h3>500+</h3>
    <p>Recruiters</p>
  </div>
  <div>
    <h3>5,000+</h3>
    <p>Applicants</p>
  </div>
  <div>
    <h3>2,000+</h3>
    <p>Jobs Grabbed Successfully</p>
  </div>
</section>

<!-- ================= Top Job Categories Section ================= -->
<section>
  <h2 class="top-job-title">Top Job Categories</h2>

  <div class="category-container">
    <div class="category-card">Software Development</div>
    <div class="category-card">UI/UX Design</div>
    <div class="category-card">Marketing</div>
    <div class="category-card">Finance</div>
    <div class="category-card">Human Resources</div>
    <div class="category-card">Data Science</div>
  </div>
</section>
<!-- =============================================================== -->


<!-- ✅ Featured Companies -->
<section class="companies">
  <h2>Featured Companies</h2>
  <div class="company-logos">
    <img src="images/Capgemini.jpeg" alt="Capgemini">
    <img src="images/Accenture-Logo.jpeg" alt="Accenture">
    <img src="images/wipro.jpeg" alt="Wipro">
    <img src="images/cognizant.jpeg" alt="Cognizant">
    <img src="images/Deloitte.jpeg" alt="Deloitte">
    <img src="images/TechM.jpeg" alt="Tech Mahindra">
    <img src="images/tcs.jpeg" alt="TCS">
  </div>
</section>

<!-- Testimonials -->
<section class="testimonials">
  <h2>What Our Users Say</h2>
  <div class="testimonial-cards">
    <div class="testimonial">
      <p>“I got hired within two weeks using JobConnect! Highly recommended.”</p>
      <h4>- Ayush Amanta</h4>
    </div>
    <div class="testimonial">
      <p>“Amazing platform for job seekers and recruiters alike.”</p>
      <h4>- Anurag Patel</h4>
    </div>
    <div class="testimonial">
      <p>“Simple, fast, and effective. Love the interface and job suggestions.”</p>
      <h4>- Krish Gaurav</h4>
    </div>
  </div>
</section>

<!-- Call to Action -->
<section class="cta">
  <h2>Join now and find the right opportunity.</h2>
  <form action="registration.jsp">
    <button>Register Today</button>
  </form>
</section>

<%@include file="all_component/footer.jsp" %>

</body>
</html>

