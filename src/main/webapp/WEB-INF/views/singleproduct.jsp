
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="cd" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>

<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/js" var="js" />
<spring:url value="/resources/img" var="img" />
<spring:url value="/resources/css/fonts" var="fonts" />

<!DOCTYPE html>
<html lang="en">
<style>
body {
	background: url("${img}/background7.jpg") no-repeat 0px 0px;
	background-size: cover;
	background-attachment: fixed;
}
</style>
<body>
   
    <%@ include file = "shared/header.jsp" %>
    
    <body ng-app="myapp" ng-controller="productsController">


	<c:url value="/resources/img/${productObject.productname}.jpg"
		var="imgg" />


	<!--content-->
	<div class="content">
		<!--single-->
		<div class="single-wl3">
			<div class="container">
				<div class="single-grids">
					<div class="col-md-9 single-grid">
						<div clas="single-top">
							<div class="single-left">
								<div class="flexslider">


									<div class="thumb-image">
										<img src="${imgg}" data-imagezoom="true"
											class="img-responsive">
									</div>

								</div>
							</div>
							<div class="single-right simpleCart_shelfItem">
								<h4>${productObject.productname}</h4>
								<h5>${productObject.category_name}</h5>
								<div class="block">
									<div class="starbox small ghosting"></div>
								</div>
								<p class="price item_price">Rs.
									${productObject.productprice}</p>
								<div class="description">
									<p>
										<span>Quick Overview : </span>
										${productObject.productdescription}
									</p>
								</div>
								<div class="color-quality">




									<!-- 							</div> -->
									<!-- 									<div class="ribben1"> -->
									<!-- 										<p>SALE</p> -->
									<!-- 									</div> -->

									<security:authorize access="hasRole('ROLE_USER')">

										<a ng-click="addToCart(${productObject.productid})"
											data-text="Add To Cart"  class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add
											To Cart</a>
									</security:authorize>

									<c:url value="/listproduct" var="url"></c:url>


									<a href="${url}" class="btn btn-default"> Continue shopping</a>
								</div>
							</div>
						</div>


					</div>
					<div class="clearfix"></div>
				</div>
			</div>



		</div>

		<%@include file="shared/footer.jsp"%>
		
		<script src="${js}/cartcontroller.js"></script>
</body>
</html>
    
    
   