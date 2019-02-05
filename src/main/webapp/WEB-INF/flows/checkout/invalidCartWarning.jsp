<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Invalid Cart!</h1>
                </div>
            </div>
        </section>

        <section class="container">
            <p><a href="<spring:url value="/allProducts" />" class="btn btn-default">Products</a></p>
        </section>
	</div>
</div>        

<%@ include file="/WEB-INF/views/footer.jsp" %>