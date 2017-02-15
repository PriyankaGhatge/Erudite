<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="cd" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>

<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/js" var="js" />
<spring:url value="/resources/img" var="img" />
<spring:url value="/resources/css/fonts" var="fonts" />
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products list</title>
<style type="text/css">
body {
	background: url("${img}/background7.jpg") no-repeat 0px 0px;
	background-size: cover;
	background-attachment: fixed;
}
.tg {
	
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}
.tg td {
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}
.tg th {
	
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #f0f0f0;
}
.tg .tg-4eph {
	background-color: #f9f9f9
}

</style>
</head>

<%@include file="shared/header.jsp"%>

<body ng-app="prodapp" ng-controller="myprodController"
	ng-init="listProduct()"> 

	<div>
		<br>
		<div align="center">
			<input type="text" ng-model="searchConditionprod"
				placeholder="Search Products....">
				
		</div>
    <br>

		<!-- <div class="content">
			<div class="login">
				<div class="main-agi">
					<div class="form-w3agile"> -->
					
	<div class="content">
		 <div class="container">
		 
		  <div class="col-md-12">
					 <div class="box">
					
						<h3>Product List</h3>
						<div class="table-responsive">
							<table class="tg">
								<tr>
									<security:authorize access="hasRole('ROLE_ADMIN')">
										<th width="80">Product ID</th>
									</security:authorize>
									<th width="160">Product Name</th>
									<!-- 									<th width="120">Product Description</th> -->
									<th width="160">Category Name</th>
									<security:authorize access="hasRole('ROLE_ADMIN')">
										<th width="120">Supplier Name</th>
									</security:authorize>
									<th width="120">Product Price</th>
									<th width="120">Product Image</th>
									<th width="40">Info</th>
									<security:authorize access="hasRole('ROLE_ADMIN')">
										<th width="60">Edit</th>
										<th width="60">Delete</th>
									</security:authorize>
								</tr>

								<tr ng-repeat="p in products | filter:searchConditionprod">
									<security:authorize access="hasRole('ROLE_ADMIN')">
									 <td>{{p.productid}}</td>
									</security:authorize>
									
									<td><a href="<c:url value='/infoproduct/{{p.productid}}'/>">
											{{p.productname}}</a></td>
									<!-- 									<td>{{p.productdescription}}</td> -->
									<td>{{p.category_name}}</td>

									<security:authorize access="hasRole('ROLE_ADMIN')">
										<td>{{p.supp_name}}</td>
									</security:authorize>

									<td>{{p.productprice}}</td>

									<c:url value="/resources/img/{{p.productname}}.jpg" var="imgg" />

									<td><a href="<c:url value='/infoproduct/{{p.productid}}'/>"> <img
											src="${imgg}" alt="prodimage" height="80" width="80" /></td>

									<td><a href="<c:url value='/infoproduct/{{p.productid}}'/>"><span
											class="glyphicon glyphicon-info-sign"></span></a></td>



									<security:authorize access="hasRole('ROLE_ADMIN')">
										<td><a href="<c:url value='/editproduct/{{p.productid}}' />">Edit</a></td>
										<td><a href="<c:url value='/removeproduct/{{p.productid}}' />">Delete</a></td>
									</security:authorize>
								</tr>

							</table>
<br>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src=" ${js}/app.js "></script>
	<%@include file="shared/footer.jsp"%>

</body>
</html>
