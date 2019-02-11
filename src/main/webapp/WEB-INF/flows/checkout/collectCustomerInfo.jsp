<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header" align="center">
            <h1>Please confirm your Details</h1>
        </div>

        <form:form commandName="order" class="form-horizontal">

        <div class="col-lg-12 col-sm-12 col-xs-12 col-md-12">
        	<h3 align="center" style="text-decoration: underline;">Basic Details</h3>
		</div>
        <div class="form-group">
            <label for="name" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Name</label>
            <form:input path="cart.customer.customerName" id="name" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="email" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Email</label>
            <form:input path="cart.customer.customerEmail" id="email" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1  form-Control" />
        </div>

        <div class="form-group">
            <label for="phone" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Phone</label>
            <form:input path="cart.customer.customerPhone" id="phone" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1  form-Control" />
        </div>

        <br/>
        
  		<div class="col-lg-12 col-sm-12 col-xs-12 col-md-12">
        	<h3 align="center" style="text-decoration: underline;">Billing Address</h3>
		</div>
		
        <div class="form-group">
            <label for="billingStreet" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Street Name</label>
            <form:input path="cart.customer.billingAddress.streetName" id="billingStreet" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="billingApartmentNumber" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Apartment Number</label>
            <form:input path="cart.customer.billingAddress.apartmentNumber" id="billingApartmentNumber" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="billingCity" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">City</label>
            <form:input path="cart.customer.billingAddress.city" id="billingCity" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="billingState" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">State</label>
            <form:input path="cart.customer.billingAddress.state" id="billingState" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="billingCountry" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Country</label>
            <form:input path="cart.customer.billingAddress.country" id="billingCountry" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="billingZip" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Zipcode</label>
            <form:input path="cart.customer.billingAddress.zipCode" id="billingZip" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <input type="hidden" name="_flowExecutionKey" />

        <br/><br/>

        <input type="submit" value="Next" class="btn btn-success col-sm-10 col-xs-10 col-lg-10 col-md-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:10px 0px 10px 0px;"  name="_eventId_customerInfoCollected" />

        <button class="btn btn-danger col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:10px 0px 10px 0px; margin-top:2px;" name="_eventId_cancel">Cancel</button>

        </form:form>
        
    </div>
</div>
<br/>
<br/>

<%@ include file="/WEB-INF/views/footer.jsp" %>