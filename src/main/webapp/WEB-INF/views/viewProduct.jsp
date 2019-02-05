<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp"%> 	

<div class="container" ng-app="cartApp">
<div class="row">
	<div class="col-sm-6">
		<img alt="Image not Found" src="<c:url value="/resources/images/${product.productID}.png"/>" class="img-responsive">		
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
		<div ng-controller="cartCtrl">
		<a class="btn btn-default" href="#" class="btn btn-warning btn-large" ng-click="addToCart('${product.productID}')"><span class="glyphicon glyphicon-shopping-cart"></span>Add to Cart</a>
		<a class="btn btn-default" href="<c:url value="/allProducts"/>">Continue Shopping</a>
		</div>
		
		</div>
	</div>
</div>
</div>
<script src="<c:url value="/resources/js/controller.js?v3" /> "></script>
<%@ include file="footer.jsp"%>