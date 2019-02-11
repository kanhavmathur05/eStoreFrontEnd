<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ include file="header.jsp" %>

<div class="container-wrapper">
    <div class="container" >
        <div class="page-header" align="center">
            <h1>Customer Management Page</h1>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Username</th>
                <th>Enabled</th>
                <th>Options</th>
            </tr>
            </thead>
            <c:forEach items="${customerList}" var="customer">
                <tr>
                    <td>${customer.customerName}</td>
                    <td>${customer.customerEmail}</td>
                    <td>${customer.customerPhone}</td>
                    <td>${customer.userName}</td>
                    <td>
                    <c:if test="${customer.enabled==true}">
                    	<p class="glyphicon glyphicon-ok"/>
                    </c:if>
                    </td>
                	<td><a href="<c:url value="/admin/updateCustomer/${customer.customerID}"/>" class="glyphicon glyphicon-edit btn btn-default"></a></td>
                </tr>
            </c:forEach>
        </table>
        </div>
    </div>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
<%@ include file="footer.jsp" %>