var cartApp = angular.module ("cartApp", []);

cartApp.controller("cartCtrl",function($scope,$http){

    $scope.refreshCart=function(){
       $http.post('/eStore/rest/cart/' + $scope.cartID).success(function (data){
           $scope.cart=data;
       });
    };

    $scope.clearCart=function(){
        $http.delete('/eStore/rest/cart/' + $scope.cartID).success($scope.refreshCart());
    };

    $scope.initCartID=function(cartID){
        $scope.cartID=cartID;
        $scope.refreshCart(cartID);
    };

    $scope.addToCart = function(productID){
    	$http.post('/eStore/rest/cart/add/' + productID).success(function (){
            alert('Product successfully added to the cart!');
        });
    };

    $scope.removeFromCart = function(productID){
        $http.put('/eStore/rest/cart/remove/' + productID).success(function(data){
        	$scope.refreshCart();
        });
    };

    $scope.calGrandTotal=function(){
        var grandTotal=0;

        for (var i=0;i<$scope.cart.cartItems.length;i++){
            grandTotal += $scope.cart.cartItems[i].totalPrice;
        }

        return grandTotal;
    }
});