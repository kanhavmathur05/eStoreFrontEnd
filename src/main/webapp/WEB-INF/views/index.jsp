<%@ include file="header.jsp" %>

<!-- <h2>Welcome Mr. ${productName}</h2> -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
      
        <!-- Wrapper for slides -->
        <div class="carousel-inner" style="width:100%; height: 50%;">
          <div class="item active">
            <img src="./resources/images/carouselImage1.jpg" alt="Image 1" style="width:100%; height:100%">
          </div>  
          <div class="item">
            <img src="./resources/images/carouselImage2.jpg" alt="Image 2" style="width:100%; height:100%">
          </div>
      
          <div class="item">
            <img src="./resources/images/carouselImage3.jpg" alt="Image 3" style="width:100%;  height:100%">
          </div>
        </div>
      
        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>

      <br/>
      <br/>
      <section class="about py-lg-4 py-md-3 py-sm-3 py-3" id="about">
        <div class="container py-lg-5 py-md-5 py-sm-4 py-4">
           <h3 class="title text-center mb-lg-5 mb-md-4  mb-sm-4 mb-3">Best Products</h3>
           <div class="row banner-below-w3l">
              <div class="col-lg-4 col-md-6 col-sm-6 text-center banner-agile-flowers">
                 <img src="./resources/images/smartwatches.jpeg" class="img-thumbnail" alt="">
                 <div class="banner-right-icon">
                    <h4 class="pt-3">Smart Watches</h4>
                 </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-6 text-center banner-agile-flowers">
                 <img src="./resources/images/smartwatches.jpeg" class="img-thumbnail" alt="">
                 <div class="banner-right-icon">
                    <h4 class="pt-3">Smart Watches</h4>
                 </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-6 text-center banner-agile-flowers">
                 <img src="./resources/images/smartwatches.jpeg" class="img-thumbnail" alt="">
                 <div class="banner-right-icon">
                    <h4 class="pt-3">Smart Watches</h4>
                 </div>
              </div>
            </div>
        </div>
     </section>
     
     <%@ include file="footer.jsp"%>