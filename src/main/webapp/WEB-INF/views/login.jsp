<%@ include file="header.jsp" %>



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
        <button type="submit" name="submit" value="submit" class="btn btn btn-success" style="width:100%">
          Log In
        </button>
        <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
      </div>
      </form>

  <%@ include file="footer.jsp" %>
