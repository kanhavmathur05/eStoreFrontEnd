<%@ include file="header.jsp" %>

<div class="container" align="center">
	<h3 align="center" style="text-decoration:underline;">Login Form</h3>
</div>
<div class="container" style="padding-top:20px; padding-bottom:10px;">
	<form role="form" name='loginForm' action="<c:url value="/login" />" method="POST">
	<div class="contiainer" style="max-width:400px; margin:0 auto;">
		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
        <div class="form-group">
          <label for="username">Username</label>
          <input type="text" class="form-control" id="username" name="username">
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" class="form-control" id="password" name="password">
        </div>
        
        <p><input type="checkbox" value="Remember me" name="Remember me">Remember me</p>
        <button type="submit" name="submit" value="submit" class="btn btn btn-success" style="width:100%">
          Log In
        </button>
        <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
      </div>
      </form>
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
