<%@ include file="header.jsp" %>

<div class="container-fluid">
  <div class="row  align-middle">
    <div class="col-sm-4 col-sm-offset-4">
    <!--  <h2 class="text-center">Welcome back.</h2>-->
    <form role="form">
        <div class="form-group">
            <label for="">Username</label>
            <input type="text" class="form-control" id="" placeholder="Enter Username">
          </div>
          <div class="form-group">
              <label for="">Contact Number</label>
              <input type="number" class="form-control" id="" placeholder="Enter contact number">
            </div>
                  
      <div class="form-group">
        <label for="">Address</label>
        <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Address">
      </div>
          
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
      <input type="checkbox"> I agree
    </label>
  </div>
  <button type="submit" class="btn btn-default">Sign Up</button>
</form>
    </div>
  </div>
</div>

<%@ include file="footer.jsp" %>