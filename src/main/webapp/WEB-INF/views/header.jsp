<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<!DOCTYPE html>
<html>
<head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" >
</head>
<body>
<header>
        <nav class="navbar navbar-inverse"> 
                <div class="container-fluid">
                  <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>                        
                              </button>
                    <a class="navbar-brand" href="<c:url value="/"/>">E-Store</a>
                  </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                  <ul class="nav navbar-nav">
                    <li><a href="<c:url value="/"/>">Home</a></li>
                    <li><a href="<c:url value="/allProducts"/>">AllProducts</a></li>
                    <li><a href="<c:url value="/aboutUs"/>">About Us</a>
                    </li>
                    <li><a href="<c:url value="/contactUs"/>">Contact Us</a></li>
                    <security:authorize access="hasRole('ROLE_ADMIN')">
                    <li><a href="<c:url value="/admin/addProduct"/>">Add Product</a></li>
                	</security:authorize>
                  </ul>
                  <ul class="nav navbar-nav navbar-right">
                    <c:if test="${pageContext.request.userPrincipal.name != null}">
				<li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
				<li><a href="<c:url value="/perform_logout" />">Logout</a></li>

				<security:authorize access="hasRole('ROLE_USER')">
					<li><a href="<c:url value="/customer/cart" />">Cart</a></li>
				</security:authorize>

				<security:authorize access="hasRole('ROLE_ADMIN')">
					<li><a href="<c:url value="/admin" />">Admin Page</a></li>
				</security:authorize>

			</c:if>

			<c:if test="${pageContext.request.userPrincipal.name == null}">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="<c:url value="/login" />"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
				<li><a href="<c:url value="/register" />"><span class="glyphicon glyphicon-log-in"></span>Sign Up</a></li>
			</ul>
			</c:if>
                  </ul>
                </div>
                </div>
              </nav>
                    
</header>