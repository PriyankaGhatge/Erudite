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
<head>
<style>
 th, td {
    border-bottom: 1px solid black;
    padding: 15px;
    text-align: center;
} 

</style>

</head>
<body>
<%@ include file = "shared/header.jsp" %>
 <h3>List Of Products</h3>

<%-- <table class="tg" align="center" >
	<tr>
		<th width="80">Product ID</th>
		<th width="120">Product Name</th>
		<th width="120">Product Description</th>
		<th width="120">Product image</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${productList}" var="pr">
		<tr>

			<td><c:out value="${pr.productid}" /></td>
			<td><c:out value="${pr.productname}" /></td>
			<td><c:out value="${pr.productdescription}" /></td>
			<c:url value="/resources/img/${pr.productname}.jpg" var="imgg"/>
			<td><img src = "${imgg}" alt="Image" height="80" width="80"></td>
			<td><a href="<c:url value='/editproduct/${pr.productid}' />">Edit</a></td>
			<td><a
				href="<c:url value='/removeproduct/${pr.productid}' />">Delete</a></td>
		</tr>
	</c:forEach>
</table>
 <br> --%>
 
 <body ng-app="prodapp" ng-controller="myprodController" ng-init="listProduct()">

	<div>
		<br>
		<div align="center">
			<input type="text" ng-model="searchConditionprod" placeholder="Search Products....">
		</div>


		<div class="content">
			<div class="login">
				<div class="main-agi">
					<div class="form-w3agile">
						<h3>Product List{{10+10}}</h3>
						<div class="table-responsive">
							<table class="tg" border=1>
								<tr>
									<security:authorize access="hasRole('ROLE_ADMIN')">
										<th width="80">Product ID</th>
									</security:authorize>
										<th width="160">Product Name</th>
										<th width="120">Product Description</th>
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
										<td>{{pr.productid}}</td>
									</security:authorize>
										<td><a href="<c:url value='/infoproduct/{{p.productid}}'/>"></a>
											{{pr.productname}}</td>
 									<td>{{pr.productdescription}}</td> 
										<td>{{pr.category_name}}</td>
									<security:authorize access="hasRole('ROLE_ADMIN')">
										<td>{{pr.supp_name}}</td>
									</security:authorize>
										<td>{{pr.productprice}}</td>
									<c:url value="/resources/img/{{p.productname}}.jpg" var="imgg" />

										<td><a href="<c:url value='/infoproduct/{{p.productid}}'/>"></a>
									<img src="${imgg}" alt="image" height="80" width="80" /></td>
										<td><a href="<c:url value='/infoproduct/{{p.productid}}'/>">
										<span class="glyphicon glyphicon-info-sign"></span></a></td>
									<security:authorize access="hasRole('ROLE_ADMIN')">
										<td><a href="<c:url value='/editproduct/{{p.productid}}' />">Edit</a></td>
										<td><a href="<c:url value='/removeproduct/{{p.productid}}' />">Delete</a></td>
									</security:authorize>
								</tr>
								
							</table>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
 
  
  
  
  
  <script src="${js}/app.js"></script>
<%@ include file = "shared/footer.jsp" %>


</body>
</html>