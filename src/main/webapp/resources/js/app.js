
// search for products

var app = angular
		.module("prodapp", [])
		.controller(
				'myprodController',
				function($scope, $http) {
					
					$scope.listProduct = function() {
						 //alert('before contol call');
						$http
								.get(
										'/WebPage/listproductsjson')
								.success(function(data) {
									 //alert('after contol call');

									$scope.products = data;
									console.log(data);
									console.log('after contol call1');
								})

					}

				})