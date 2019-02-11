<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/header.jsp" %>
<script>
function cod()
{
document.getElementById("byCardPayment").style.visibility="hidden";	
}

function cardDetails()
{
document.getElementById("byCardPayment").style.visibility="visible";	
}
</script>
<div class="container">
<h3 align="center" style="text-decoration: underline;">Payment Option</h3>
<form align="center">
<input type="radio" value="option"  name="paymentOption" onclick="cardDetails()">By Card
<input type="radio" value="option" name="paymentOption" onclick="cod()">COD
<div id="byCardPayment">
<h3>Enter Card Details</h3>
<input placeholder="Card Number" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1">
<input placeholder="Valid Upto" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1">
<input placeholder="Card holder name" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1">
<input placeholder="CVV" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1">

<button type="submit" class="btn btn-success col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="margin-top:20px;">Submit Details</button></div>
</form>
<div class="col-sm-10 col-sm-offset-1">
<br/>
<form:form commandName="order">
	<button class="btn btn-primary col-sm-4 col-xs-4 col-md-4 col-lg-4" name="_eventId_backToCollectShippingDetail">Back</button>
	<input type="submit" value="Next" class="btn btn-success col-sm-4 col-xs-4 col-md-4 col-lg-4" name="_eventId_paymentOptionSelected" />
	<button class="btn btn-danger col-sm-4 col-xs-4 col-md-4 col-lg-4" name="_eventId_cancel">Cancel</button>
</form:form>
</div>
</div>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<%@ include file="/WEB-INF/views/footer.jsp" %>