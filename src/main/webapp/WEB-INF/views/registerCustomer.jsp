<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="header.jsp" %>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
 <!-- 
        <div class="page-header">
            <h1>Register Customer</h1>

            <p class="lead">Please fill in your information below</p>
        </div>
 --> 



<div class="container">
<h1 class="col-lg-6 col-xs-6 col-sm-6 col-md-6 col-md-offset-3 col-lg-offset-3 col-xs-offset-3 col-sm-offset-3 well" align="center">Registration Form</h1>
	<div class="col-lg-6 col-xs-6 col-sm-6 col-md-6 col-md-offset-3 col-lg-offset-3 col-xs-offset-3 col-sm-offset-3 well">
	<div class="row col-lg">
        <form:form action="${pageContext.request.contextPath}/register"
                   method="post" modelAttribute="customer" role="form">
		<div class="col-lg-12 col-sm-12 col-xs-12 col-md-12">
        	<h3 align="center" style="text-decoration: underline;">Basic Details</h3>
		</div>
        		<div class="form-group">
            		<label for="name" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Name</label><br/>
            		<form:errors path="customerName" cssStyle="color: #ff0000"/>
            		<form:input path="customerName" type="text" pattern="[a-z]{4,15}" id="name" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
  		      	</div>
  		
		<div class="form-group">
            <label for="email" class="col-lg-10 col-xs-10 col-md-10 col-sm-10  col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Email</label>
            <span style="color: #ff0000">${emailMsg}</span>
            <form:errors path="customerEmail" cssStyle="color: #ff0000" />
            <form:input path="customerEmail" type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" id="email" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1  form-Control-lg" />
        </div>
		
        <div class="form-group">
            <label for="phone" class="col-lg-10 col-xs-10 col-md-10 col-sm-10  col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Phone</label>
            <form:input path="customerPhone" type="text" pattern="[1-9]{10}" id="phone" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1  form-Control" />
        </div>

        <div class="form-group">
            <label for="username" class="col-lg-10 col-xs-10 col-md-10 col-sm-10  col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Username</label>
            <span style="color: #ff0000">${usernameMsg}</span>
            <form:errors path="userName" cssStyle="color: #ff0000" />
            <form:input path="userName" id="userName" type="text" pattern="[a-z]{4,15}" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1  form-Control" />
        </div>

        <div class="form-group">
            <label for="password" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Password</label>
            <form:errors path="password" cssStyle="color: #ff0000" />
            <form:password path="password" id="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

		<br/>
        <br/>
		<div class="col-lg-12 col-sm-12 col-xs-12 col-md-12">
        	<h3 align="center" style="text-decoration: underline;">Billing Address</h3>
		</div>
        <div class="form-group">
            <label for="billingStreet" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Street Name</label>
            <form:input path="billingAddress.streetName" id="billingStreet" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1  form-Control" />
        </div>

        <div class="form-group">
            <label for="billingApartmentNumber" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Apartment Number</label>
            <form:input path="billingAddress.apartmentNumber" pattern="[0-9]{1,10}" id="billingApartmentNumber" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="billingCity" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">City</label>
            <form:input path="billingAddress.city" id="billingCity" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="billingState" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">State</label>
            <form:input path="billingAddress.state" id="billingState" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="billingCountry" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Country</label>
            <form:input path="billingAddress.country" id="billingCountry" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="billingZip" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Zipcode</label>
            <form:input path="billingAddress.zipCode" id="billingZip" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

		<br/>
        <br/>
		<div class="col-lg-12 col-sm-12 col-xs-12 col-md-12">
        	<h3 align="center" style="text-decoration: underline;">Shipping Address</h3>
		</div>
        <div class="form-group">
            <label for="shippingStreet" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Street Name</label>
            <form:input path="shippingAddress.streetName" id="shippingStreet" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingApartmentNumber" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Apartment Number</label>
            <form:input path="shippingAddress.apartmentNumber" pattern="[0-9]{1,10}" id="shippingApartmentNumber" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingCity" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">City</label>
            <form:input path="shippingAddress.city" id="shippingCity" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingState" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">State</label>
            <form:input path="shippingAddress.state" id="shippingState" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingCountry" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Country</label>
            <form:input path="shippingAddress.country" id="shippingCountry" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingZip" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Zipcode</label>
            <form:input path="shippingAddress.zipCode" id="shippingZip" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>
		<br/>
		<br/>
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="padding-top:10px">
		<br/>
			<input type="submit" value="Submit" class="btn btn-success col-lg-5 col-xs-5 col-md-5 col-sm-5 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1">	
    	    <a href="<c:url value="/" />" class="btn btn-danger col-lg-5 col-xs-5 col-md-5 col-sm-5">Cancel</a>
		</div>
        
        </form:form>
        </div>
        </div>
</div>




 
<!--  
  
<div class="container">
<h1 class="col-lg-6 col-xs-6 col-sm-6 col-md-6 col-md-offset-3 col-lg-offset-3 col-xs-offset-3 col-sm-offset-3 well" align="center">Registration Form</h1>
	<div class="col-lg-6 col-xs-6 col-sm-6 col-md-6 col-md-offset-3 col-lg-offset-3 col-xs-offset-3 col-sm-offset-3 well">
	<div class="row col-lg">
        <form:form action="${pageContext.request.contextPath}/register"
                   method="post" modelAttribute="customer" role="form">
		<div class="col-lg-12 col-sm-12 col-xs-12 col-md-12">
        	<h3 align="center" style="text-decoration: underline;">Basic Details</h3>
		</div>
        		<div class="form-group">
            		<label for="name" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Name</label><br/>
            		<form:errors path="customerName" cssStyle="color: #ff0000"/>
            		<form:input path="customerName" id="name" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
  		      	</div>
  		
		<div class="form-group">
            <label for="email" class="col-lg-10 col-xs-10 col-md-10 col-sm-10  col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Email</label>
            <span style="color: #ff0000">${emailMsg}</span>
            <form:errors path="customerEmail" cssStyle="color: #ff0000" />
            <form:input path="customerEmail" id="email" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1  form-Control-lg" />
        </div>
		
        <div class="form-group">
            <label for="phone" class="col-lg-10 col-xs-10 col-md-10 col-sm-10  col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Phone</label>
            <form:input path="customerPhone" id="phone" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1  form-Control" />
        </div>

        <div class="form-group">
            <label for="username" class="col-lg-10 col-xs-10 col-md-10 col-sm-10  col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Username</label>
            <span style="color: #ff0000">${usernameMsg}</span>
            <form:errors path="userName" cssStyle="color: #ff0000" />
            <form:input path="userName" id="userName" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1  form-Control" />
        </div>

        <div class="form-group">
            <label for="password" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Password</label>
            <form:errors path="password" cssStyle="color: #ff0000" />
            <form:password path="password" id="password" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

		<br/>
        <br/>
		<div class="col-lg-12 col-sm-12 col-xs-12 col-md-12">
        	<h3 align="center" style="text-decoration: underline;">Billing Address</h3>
		</div>
        <div class="form-group">
            <label for="billingStreet" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Street Name</label>
            <form:input path="billingAddress.streetName" id="billingStreet" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1  form-Control" />
        </div>

        <div class="form-group">
            <label for="billingApartmentNumber" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Apartment Number</label>
            <form:input path="billingAddress.apartmentNumber" id="billingApartmentNumber" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="billingCity" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">City</label>
            <form:input path="billingAddress.city" id="billingCity" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="billingState" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">State</label>
            <form:input path="billingAddress.state" id="billingState" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="billingCountry" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Country</label>
            <form:input path="billingAddress.country" id="billingCountry" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="billingZip" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Zipcode</label>
            <form:input path="billingAddress.zipCode" id="billingZip" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

		<br/>
        <br/>
		<div class="col-lg-12 col-sm-12 col-xs-12 col-md-12">
        	<h3 align="center" style="text-decoration: underline;">Shipping Address</h3>
		</div>
        <div class="form-group">
            <label for="shippingStreet" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Street Name</label>
            <form:input path="shippingAddress.streetName" id="shippingStreet" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingApartmentNumber" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Apartment Number</label>
            <form:input path="shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingCity" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">City</label>
            <form:input path="shippingAddress.city" id="shippingCity" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingState" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">State</label>
            <form:input path="shippingAddress.state" id="shippingState" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingCountry" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Country</label>
            <form:input path="shippingAddress.country" id="shippingCountry" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingZip" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Zipcode</label>
            <form:input path="shippingAddress.zipCode" id="shippingZip" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>
		<br/>
		<br/>
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="padding-top:10px">
		<br/>
			<input type="submit" value="Submit" class="btn btn-success col-lg-5 col-xs-5 col-md-5 col-sm-5 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1">	
    	    <a href="<c:url value="/" />" class="btn btn-danger col-lg-5 col-xs-5 col-md-5 col-sm-5">Cancel</a>
		</div>
        
        </form:form>
        </div>
        </div>
</div>

 -->
<%@ include file="footer.jsp" %>