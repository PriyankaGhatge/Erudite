var myapp = angular
		.module("myapp", [])
		.controller(
				'productsController',
				function($scope, $http) {
					
					$scope.getProducts = function() {
						$http
								.get(
										'WebPage/listproductsjson')
								.success(function(data) {
									$scope.product1 = data;
								})
					}
					$scope.addToCart = function(productid) {

						$http.put(
								'/WebPage/cart/add/'
										+ productid).success(function() {

							alert('Added Successfully to the cart!');
						})
					}

					$scope.refreshCart = function() {
						$http.get(
								'/WebPage/cart/getCart/'
										+ $scope.cart_id).success(
								function(data) {
									
									$scope.cart = data;
								})
								
					}

					$scope.getCart = function(cart_id) {
						$scope.cart_id = cart_id;
						 //$scope.refreshCart(cart_id);
						$scope.refreshCart();
						 //alert('Successfully refreshed the cart!');
					}

					$scope.removeFromCart = function(cartitem_id) {
						$http.put(
								'/WebPage/cart/removecartitem/'
										+ cartitem_id).success(function() {
							$scope.refreshCart();
							alert('Removed Successfully from the cart!');
						})
					}

					$scope.clearCart = function() {

						$http.put(
								'/WebPage/cart/removeAllItems/'
										+ $scope.cart_id)

						.success(function() {

							$scope.refreshCart();
							alert('Successfully cleared the cart!');
						});
					}

					$scope.calculateGrandTotal = function() {
						var grandTotal = 0
						for (var i = 0; i < $scope.cart.cartitems.length; i++) {
							grandTotal = grandTotal
									+ $scope.cart.cartitems[i].totalprice;
							;}
						return grandTotal;
					}
				});
