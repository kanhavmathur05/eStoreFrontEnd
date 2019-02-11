<%@ include file="header.jsp"%> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
		
<div class="container">
<div class="col-sm-8 col-xs-8 col-md-8 col-lg-8 col-sm-offset-2 col-xs-offset-2 col-md-offset-2 col-lg-offset-2 well">
<form:form action="${pageContext.request.contextPath}/admin/updateProduct/${productID}/?${_csrf.parameterName}=${_csrf.token}" modelAttribute="product" method="post" enctype="multipart/form-data">

<div>	
	<div class="form-group">
			<label for="name" class="col-sm-12 col-xs-12 col-lg-12 col-md-12" style="padding:10px 0px 0px 0px;">Name</label>
			<form:errors path="productName" cssStyle="color:#ff0000;" />
        	<form:input path="productName" id="name" class="col-sm-12 col-xs-12 col-lg-12 col-md-12 form-Control" />	
	</div>
	<div class="form-group">
		<label for="price" class="col-sm-12 col-xs-12 col-lg-12 col-md-12" style="padding:10px 0px 0px 0px;">Price</label>
		<form:errors path="price" cssStyle="color:#ff0000;" />
        <form:input path="price" id="price" class="col-sm-12 col-xs-12 col-lg-12 col-md-12 form-Control" />
	</div>
	<div class="form-group">
		<label for="description" class="col-sm-12 col-xs-12 col-lg-12 col-md-12" style="padding:10px 0px 0px 0px;">Product Description</label>
		<form:errors path="productDescription" cssStyle="color:#ff0000;" />
        <form:input path="productDescription" id="description" class="col-sm-12 col-xs-12 col-lg-12 col-md-12 form-Control" />
	</div>
	<div class="form-group">
		<label for="name" class="col-sm-12 col-xs-12 col-lg-12 col-md-12" style="padding:10px 0px 0px 0px;">Quantity</label>
		<form:errors path="quantity" cssStyle="color:#ff0000;" />
        <form:input path="quantity" id="quantity" class="col-sm-12 col-xs-12 col-lg-12 col-md-12 form-Control" />
	</div>
	<div class="form-group">
		<label for="productImage" class="col-sm-12 col-xs-12 col-lg-12 col-md-12" style="padding:10px 0px 0px 0px;">Image </label>
		<form:errors path="productImage" cssStyle="color:#ff0000;" />
        <form:input path="productImage" id="image" type="file" class="form:input-large" />
	</div>
	<div class="form-group">
		<label for="category" class="col-sm-12 col-xs-12 col-lg-12 col-md-12" style="padding:10px 0px 0px 0px;">Category</label>
		<form:errors path="productCategory" cssStyle="color:#ff0000;" />
        <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="mobiles"/>Mobiles</label>
        <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="smartwearable"/>Smart Wearable Tech</label>
        <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="laptop"/>Laptops</label>
        <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="camera"/>Camera</label>
        <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="homeentertainment"/>Home Entertainment</label>
	</div>
	
	<input type="submit" value="Submit" class="col-sm-6 col-xs-6 col-lg-6 col-md-6 btn btn-success"/>
	<a href="<c:url value="/" />" class="col-sm-6 col-xs-6 col-lg-6 col-md-6 btn btn-danger">Cancel</a>
</div>
</form:form>
</div>
</div>
<%@ include file="footer.jsp"%>