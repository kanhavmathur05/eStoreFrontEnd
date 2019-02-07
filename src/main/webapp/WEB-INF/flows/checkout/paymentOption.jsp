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
<h3>Payment Option</h3>
<form>
<input type="radio" value="option"  name="paymentOption" onclick="cardDetails()">By Card
<input type="radio" value="option" name="paymentOption" onclick="cod()">COD
<div id="byCardPayment">
<h3>Enter Card Details</h3>
<input placeholder="Card Number">
<input placeholder="Valid Upto">
<input placeholder="Card holder name">
<input placeholder="CVV">
<button type="submit">Submit Details</button></div>
</form>
<form:form commandName="order">
	<button class="btn btn-default" name="_eventId_backToCollectShippingDetail">Back</button>
	<input type="submit" value="Next" class="btn btn-default" name="_eventId_paymentOptionSelected" />
	<button class="btn btn-default" name="_eventId_cancel">Back</button>
</form:form>
<%@ include file="/WEB-INF/views/footer.jsp" %>