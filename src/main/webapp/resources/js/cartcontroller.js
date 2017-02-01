var myapp = angular
		.module("myapp", [])
		.controller(
				'productsController',
				function($scope, $http) {
					
					$scope.listProduct = function() {
						// alert('before contol call');
						$http
								.get(
										'/EruditeFrontEnd/listproductjson')
								.success(function(data) {
									// alert('after contol call');

									$scope.products = data;
									console.log(data);
									console.log('after contol call1');
								})
					}

					$scope.addToCart = function(productid) {

						$http.put(
								'/EruditeFrontEnd/cart/add/'
										+ productid).success(function() {

							alert('Added Successfully to the cart!');
						})
					}

					$scope.refreshCart = function() {
						$http.get(
								'/EruditeFrontEnd/cart/getCart/'
										+ $scope.cart_id).success(
								function(data) {
									$scope.cart = data;
								})
					}

					$scope.getCart = function(cart_id) {
						$scope.cart_id = cart_id;
						// $scope.refreshCart(cart_id);
						$scope.refreshCart();
						// alert('Successfully refreshed the cart!');
					}

					$scope.removeFromCart = function(cartitem_id) {
						$http.put(
								'EruditeFrontEnd/cart/removecartitem/'
										+ cartitem_id).success(function() {
							$scope.refreshCart();
							alert('Removed Successfully from the cart!');
						})
					}

					$scope.clearCart = function() {

						$http.put(
								'/EruditeFrontEnd/cart/removeAllItems/'
										+ $scope.cart_id)

						.success(function() {

							$scope.refreshCart();
							alert('Successfully cleared the cart!');
						});
					}

					$scope.calculateGrandTotal = function() {
						var grandTotal = 0
						for (var i = 0; i < $scope.cart.cartItems.length; i++) {
							grandTotal = grandTotal
									+ $scope.cart.cartItems[i].totalprice;
							;
						}
						return grandTotal;
					}
				});
