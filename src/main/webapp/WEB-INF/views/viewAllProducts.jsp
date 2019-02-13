<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ include file="header.jsp"%>
<table class="table">
		<thead>
		<tr>
			<th>Product Name</th>
			<th>Price</th>
			<th>Quantity</th>
			<th>Description</th>
			<th>Image</th>
			<th>Options</th>
		</tr>
		</thead>

		<tbody>
			<c:forEach items="${allProducts}" var="product">
				<tr>
					<td>${product.productName}</td>
					<td>${product.price}</td>
					<td>${product.quantity}</td>
					<td style="max-width:500px;">${product.productDescription}</td>
					<td><img alt="No Image Found"
						src="<c:url value="/resources/images/${product.productID}.png"/>"
						class="img-responsive" style="max-width: 100px"></td>
					<td><a
						href="<c:url value="viewProduct/${product.productID}"/>" class="glyphicon glyphicon-eye-open btn btn-default">
					</a>
					<security:authorize access="hasRole('ROLE_ADMIN')">
						<a	href="<c:url value="/admin/deleteProduct/${product.productID}"/>" class="glyphicon glyphicon-remove-circle btn btn-danger"></a>
						<a	href="<c:url value="/admin/updateProduct/${product.productID}"/>" class="glyphicon glyphicon-edit btn btn-primary"></a>
						
					</security:authorize>
				</td>
				</tr>
			</c:forEach>
		</tbody>
</table>
<%@ include file="footer.jsp"%>
