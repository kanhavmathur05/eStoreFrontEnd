<%@ include file="header.jsp" %>

    <div class="container-fluid">
      <div class="row  align-middle">
        <div class="col-sm-4 col-sm-offset-4">
        <!--  <h2 class="text-center">Welcome back.</h2>-->
          <form role="form">
      <div class="form-group">
        <label for="exampleInputEmail1">Email address</label>
        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
      </div>
      
      <div class="checkbox">
        <label>
          <input type="checkbox"> Remember me
        </label>
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    </form>
        </div>
      </div>
    </div>

<%@ include file="footer.jsp" %>
