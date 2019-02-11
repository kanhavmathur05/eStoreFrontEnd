<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header" align="center">
            <h2>Please confirm your Details</h2>
        </div>

        <form:form commandName="order" class="form-horizontal">

       <div class="col-lg-12 col-sm-12 col-xs-12 col-md-12">
        	<h3 align="center" style="text-decoration: underline;">Shipping Details</h3>
		</div>
		
        <div class="form-group">
            <label for="shippingStreet" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Street Name</label>
            <form:input path="cart.customer.shippingAddress.streetName" id="shippingStreet" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingApartmentNumber" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Apartment Number</label>
            <form:input path="cart.customer.shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingCity" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">City</label>
            <form:input path="cart.customer.shippingAddress.city" id="shippingCity" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingState" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">State</label>
            <form:input path="cart.customer.shippingAddress.state" id="shippingState" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingCountry" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Country</label>
            <form:input path="cart.customer.shippingAddress.country" id="shippingCountry" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingZip" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Zipcode</label>
            <form:input path="cart.customer.shippingAddress.zipCode" id="shippingZip" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <input type="hidden" name="_flowExecutionKey" />

        <br/><br/>

        <button class="btn btn-primary col-sm-10 col-xs-10 col-lg-10 col-md-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:10px 0px 10px 0px;" name="_eventId_backToCollectCustomerInfo">Back</button>

        <input type="submit" value="Next" class="btn btn-success col-sm-10 col-xs-10 col-lg-10 col-md-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:10px 0px 10px 0px; margin-top:2px;" name="_eventId_shippingDetailCollected" />

        <button class="btn btn-danger col-sm-10 col-xs-10 col-lg-10 col-md-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:10px 0px 10px 0px; margin-top:2px;" name="_eventId_cancel">Cancel</button>

        </form:form>        
    </div>
</div>

<br/>
<br/>

<%@ include file="/WEB-INF/views/footer.jsp" %>