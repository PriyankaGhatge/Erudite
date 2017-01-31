var app = angular
		.module("prodapp", [])
		.controller(
				'myprodController',
				function($scope, $http) {
					
					$scope.listProduct = function() {
						
						$http
								.get(
										'/EruditeFrontEnd/listproductjson')
								.success(function(data) {
									

									$scope.products = data;
									console.log(data);
									console.log('after contol call1');
								})

					}
				})
