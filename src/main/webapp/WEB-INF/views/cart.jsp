<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="well">
                <div class="container">
                    <h2>Cart</h2>
                </div>
            </div>
        </section>

        <section class="container" ng-app="cartApp">

            <div ng-controller = "cartCtrl" ng-init="initCartID('${cartID}')">

                <div>
                    <a class="btn btn-danger pull-left" ng-click = "clearCart()"><span class="glyphicon glyphicon-remove-sign"></span> Clear Cart</a>
                    <a href="<spring:url value="/order/${cartID}" />" class="btn btn-success pull-right"><span class="glyphicon glyphicon-shopping-cart"></span> Check out</a>
                </div>

                <br/><br/><br/>

                <table class="table table-hover">
                    <tr>
                        <th>Product</th>
                        <th>Unit Price</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>
                    <tr ng-repeat = "item in cart.cartItems">
                        <td>{{item.product.productName}}</td>
                        <td>{{item.product.price}}</td>
                        <td>{{item.quantity}}</td>
                        <td>{{item.totalPrice}}</td>
                        <td><a href="#" class="label label-danger" ng-click="removeFromCart(item.product.productID)"><span class="glyphicon glyphicon-remove"></span>remove</a></td>
                    </tr>
                    <tr>
                        <th></th>
                        <th></th>
                        <th>Grand Total</th>
                        <th>{{calGrandTotal()}}</th>
                        <th></th>
                    </tr>
                </table>

                <a href="<spring:url value="/allProducts" />" class="btn btn-default">Continue Shopping</a>
            </div>
        </section>
</div>
</div>
<script src="<c:url value="/resources/js/controller.js?v3" /> "></script>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<%@ include file="footer.jsp" %>