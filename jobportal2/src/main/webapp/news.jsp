<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*, com.entity.News" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Latest News & Articles</title>

    <!-- Bootstrap 4 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
        }

        .split-container {
            display: flex;
            min-height: 100vh;
            background-color: #f8f9fa;
        }

        /* Left Half (Background Image) */
        .left-bg {
            flex: 1;
            background-image: url('images/admin_back.jpeg');
            background-size: cover;
            background-position: center;
            filter: brightness(0.85);
        }

        /* Right Half (Content) */
        .right-content {
            flex: 1;
            padding: 50px 40px;
            overflow-y: auto;
        }

        h3 {
            font-weight: bold;
        }

        .card {
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            border: none;
            transition: transform 0.2s ease-in-out;
        }

        .card:hover {
            transform: translateY(-4px);
        }

        @media (max-width: 768px) {
            .split-container {
                flex-direction: column;
            }
            .left-bg {
                height: 200px;
            }
        }
    </style>
</head>

<body>
    <%@ include file="all_component/navbar.jsp" %>

    <div class="split-container">
        <!-- Left Side Background -->
        <div class="left-bg"></div>

        <!-- Right Side Content -->
        <div class="right-content">
            <h3 class="text-primary mb-4">
                <i class="fas fa-newspaper"></i> Latest Articles & Job News
            </h3>

            <c:if test="${empty newsList}">
                <div class="alert alert-info text-center">No news available right now!</div>
            </c:if>

            <c:forEach var="n" items="${newsList}">
                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="card-title text-dark font-weight-bold">${n.title}</h5>
                        <p class="card-text text-secondary">${n.content}</p>
                        <small class="text-muted"><i class="far fa-clock"></i> Posted on: ${n.postDate}</small>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>