<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp"%> 	

<div class="container" ng-app="cartApp">
<div class="row">
	<div class="col-sm-6">
		<img alt="Image not Found" src="<c:url value="/resources/images/${product.productID}.png"/>" class="img-responsive">		
	</div>
	<div class="col-sm-6"  style="padding:50px;">
		<div class="row">
			<h3>${product.productName}</h3>		
		</div>
		<div class="row">
			<p class="fa fa-inr">${product.price}</p>
		</div>
		<div class="row">
			<p>Quantity:- ${product.quantity}</p>
		</div>
		<div class="row">
			<p><span style="text-decoration: bold">Description:-</span> ${product.productDescription}</p>
		</div>
		<div>
		<div ng-controller="cartCtrl" class="row">
		<a href="#" class="btn btn-warning btn-large" ng-click="addToCart('${product.productID}')"><span class="glyphicon glyphicon-shopping-cart"></span>Add to Cart</a>
		<a class="btn btn-primary" href="<c:url value="/allProducts"/>">Continue Shopping</a>
		</div>
		
		</div>
	</div>
</div>
</div>
<script src="<c:url value="/resources/js/controller.js?v3" /> "></script>
<%@ include file="footer.jsp"%>