<%@ include file="header.jsp" %>

    <h3 class="title text-center mb-lg-5 mb-md-4  mb-sm-4 mb-3" style="text-decoration:underline;">Contact Us</h3>
    <br/>
    <div class="container">
	<div class="row">
      <div class="col-md-6 col-md-offset-3">
        <div class="well well-sm">
          <form class="form-horizontal" action="" method="post">
          <fieldset>
            <legend class="text-center">Please fill the details</legend>
    
            <!-- Name input-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="name">Name</label>
              <div class="col-md-9">
                <input id="name" name="name" type="text" placeholder="Your name" class="form-control">
              </div>
            </div>
    
            <!-- Email input-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="email">Your E-mail</label>
              <div class="col-md-9">
                <input id="email" name="email" type="text" placeholder="Your email" class="form-control">
              </div>
            </div>
    
            <!-- Message body -->
            <div class="form-group">
              <label class="col-md-3 control-label" for="message">Your message</label>
              <div class="col-md-9">
                <textarea class="form-control" id="message" name="message" placeholder="Please enter your message here..." rows="5"></textarea>
              </div>
            </div>
    
            <!-- Form actions -->
            <div class="form-group">
              <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12" align="center">
                <button type="submit" class="btn btn-primary btn-lg" style="width:100%" >Submit</button>
              </div>
            </div>
          </fieldset>
          </form>
        </div>
      </div>
	</div>
</div>
<br/>
<%@ include file="footer.jsp" %>
