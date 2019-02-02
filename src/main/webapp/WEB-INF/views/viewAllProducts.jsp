<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ include file="header.jsp"%>
<table border="1" class="table-responsive">
	<table class="table">
		<thead>
			<th>Product Name</th>
			<th>Price</th>
			<th>Quantity</th>
			<th>Description</th>
			<th>Image</th>
			<th>Options</th>
			<th></th>
			<th></th>
		</thead>

		<tbody>
			<c:forEach items="${allProducts}" var="product">
				<tr>
					<td>${product.productName}</td>
					<td>${product.price}</td>
					<td>${product.quantity}</td>
					<td>${product.productDescription}</td>
					<td><img alt="No Image Found"
						src="<c:url value="/resources/images/${product.productID}.png"/>"
						class="img-responsive" style="max-width: 100px"></td>
					<td><a
						href="<c:url value="viewProduct/${product.productID}"/>">View
					</a></td>
					<security:authorize access="hasRole('ROLE_ADMIN')">
						<td><a
							href="<c:url value="/admin/deleteProduct/${product.productID}"/>">Delete</a></td>
						<td><a
							href="<c:url value="/admin/updateProduct/${product.productID}"/>">Update</a>
						</td>
					</security:authorize>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</table>
<%@ include file="footer.jsp"%>