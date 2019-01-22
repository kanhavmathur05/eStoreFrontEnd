<%@ include file="header.jsp"%> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
		
 
<form:form action="${pageContext.request.contextPath }/updateProduct/${productID}" modelAttribute="product" method="post" enctype="multipart/form-data">

	<div class="form-group">
		<label for="name">Name</label>
		<form:errors path="productName" cssStyle="color:#ff0000;" />
        <form:input path="productName" id="name" class="form-Control" />
	</div>

	<div class="form-group">
		<label for="price">Price</label>
		<form:errors path="price" cssStyle="color:#ff0000;" />
        <form:input path="price" id="price" class="form-Control" />
	</div>
	<div class="form-group">
		<label for="description">Product Description</label>
		<form:errors path="productDescription" cssStyle="color:#ff0000;" />
        <form:input path="productDescription" id="description" class="form-Control" />
	</div>
	<div class="form-group">
		<label for="name">Quantity</label>
		<form:errors path="quantity" cssStyle="color:#ff0000;" />
        <form:input path="quantity" id="quantity" class="form-Control" />
	</div>
	<div class="form-group">
		<label for="productImage">Image Name</label>
		<form:errors path="productImage" cssStyle="color:#ff0000;" />
        <form:input path="productImage" id="image" type="file" class="form:input-large"/>
	</div>
	<div class="form-group">
		<label for="category">Category</label>
		<form:errors path="productCategory" cssStyle="color:#ff0000;" />
        <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="mobiles"/>Mobiles</label>
        <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="smartwearable"/>Smart Wearable Tech</label>
        <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="laptop"/>Laptops</label>
        <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="camera"/>Camera</label>
        <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="homeentertainment"/>Home Entertainment</label>
	</div>
	<input type="submit" value="submit"/>
</form:form>
<%@ include file="footer.jsp"%>