<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp"%> 	

<div class="container">
<div class="row">
	<div class="col-sm-6">
		<img alt="${product.imageName}" src="<c:url value="/resources/images/${product.imageName}"/>" class="img-responsive">		
	</div>
	<div class="col-sm-6">
		<div class="row">
			<h2>${product.productName}</h2>		
		</div>
		<div class="row">
			<h3>${product.price}</h3>
		</div>
		<div>
			<h4>${product.quantity}</h4>
		</div>
		<div>
			<h4>${product.productDescription}</h4>
		</div>
		<div>
		<a class="btn btn-default" href="">Add to Cart</a><a class="btn btn-default" href="<c:url value="/allProducts"/>">Continue Shopping</a>
		</div>
	</div>
</div>
</div>

<%@ include file="footer.jsp"%>