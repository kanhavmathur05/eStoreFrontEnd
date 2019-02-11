<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="header.jsp" %>


<div class="container-wrapper col-lg-6 col-xs-6 col-sm-6 col-md-6 col-md-offset-3 col-lg-offset-3 col-xs-offset-3 col-sm-offset-3 well">
    <div class="row col-lg">
        <div class="page-header">
            <h2 align="center">Edit Customer Details</h2>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/updateCustomer/${customerID}/?${_csrf.parameterName}=${_csrf.token}"
         method="post" modelAttribute="customer">

        <h3 align="center">Basic Information</h3>

        <div class="form-group">
            <label for="name" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Name</label>
            <form:errors path="customerName" cssStyle="color: #ff0000" />
            <form:input path="customerName" id="name" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control"/>
        </div>

        <div class="form-group">
            <label for="email" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Email</label>
            <span style="color: #ff0000">${emailMsg}</span>
            <form:errors path="customerEmail" cssStyle="color: #ff0000" />
            <form:input path="customerEmail" id="email" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control" />
        </div>

        <div class="form-group">
            <label for="phone" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Phone</label>
            <form:input path="customerPhone" id="phone" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control"/>
        </div>

        <div class="form-group">
            <label for="username" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Username</label>
            <form:errors path="userName" cssStyle="color: #ff0000" />
            <form:input path="userName" id="userName" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control"/>
        </div>

        <div class="form-group">
            <label for="password"  class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1" style="padding:0; padding-top:10px">Password</label>
            <form:errors path="password" cssStyle="color: #ff0000" />
            <form:password path="password" id="password" class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 form-Control"/>
        </div>
        
        <div class="col-lg-10 col-xs-10 col-md-10 col-sm-10 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1 col-md-offset-1 form-group" style="padding:0; padding-top:10px">
            <label for="enabled">Enable</label>
            <form:errors path="enabled" cssStyle="color: #ff0000" />
            <form:checkbox path="enabled" id="enabled" class="form-Control"/>
        </div>

        <br/><br/>
        <br/><br/>
		<input type="submit" value="submit" class="col-sm-5 col-xs-5 col-lg-5 col-md-5 col-sm-offset-1 col-xs-offset-1 col-lg-offset-1 col-md-offset-1 btn btn-success">
        <a href="<c:url value="/" />" class="col-sm-5 col-xs-5 col-lg-5 col-md-5 btn btn-danger">Cancel</a>

        </form:form>
    </div>
</div>

<%@ include file="footer.jsp" %>