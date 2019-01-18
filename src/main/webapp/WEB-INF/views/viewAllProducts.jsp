<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
		</thead>
		
		<tbody>
			<c:forEach items="${allProducts}" var="product">
                <tr>
                    <td>${product.productName}</td>
                    <td>${product.price}</td>
                    <td>${product.quantity}</td>
                    <td>${product.productDescription}</td>
                	<td><img alt="${product.imageName}" src="<c:url value="/resources/images/${product.imageName}"/>" class="img-responsive" style="max-width:100px" ></td>
                	<td><a href="<c:url value="viewProduct/${product.productID}"/>">View </a><a href="<c:url value="/deleteProduct/${product.productID}"/>">Delete</a><a href="<c:url value="/updateProduct/${product.productID}"/>">Update</a></td>
                </tr>
            </c:forEach>
		</tbody>
	</table>
</table>
<%@ include file="footer.jsp"%>