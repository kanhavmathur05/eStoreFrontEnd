<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
                    <li><a href="<c:url value="/addProduct"/>">Add Product</a></li>
                  </ul>
                  <ul class="nav navbar-nav navbar-right">
                    <li><a href="<c:url value="/signUp"/>"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                    <li><a href="<c:url value="/login" />"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                  </ul>
                </div>
                </div>
              </nav>
                    
</header>