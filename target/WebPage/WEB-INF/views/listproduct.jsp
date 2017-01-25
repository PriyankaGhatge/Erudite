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
<body>
<%@ include file = "shared/header.jsp" %>
<%-- <!-- <body ng-app="prodapp" ng-controller="myprodController" -->
<!-- 	ng-init="listProduct()"> -->
	<body>
	<div>
		<br>
		<div align="center">
<!-- 			<input type="text" ng-model="searchConditionprod" -->
<!-- 				placeholder="Search Products...."> -->
<input type="text">
		</div>


		<div class="content">
			<div class="login">
				<div class="main-agi">
					<div class="form-w3agile">
						<h3>Product List</h3>
						<div class="table-responsive">
							<table class="tg">
								<tr>
<!-- 									<security:authorize access="hasRole('ROLE_ADMIN')"> -->
										<th width="80">Product ID</th>
<!-- 									</security:authorize> -->
									<th width="160">Product Name</th>
									<th width="120">Product Description</th>
									<th width="120">Category Name</th>
									<!--<security:authorize access="hasRole('ROLE_ADMIN')">  -->
										<th width="120">Supplier Name</th>
<!-- 									</security:authorize> -->
									<th width="120">Product Price</th>
									<th width="120">Product Image</th>
									<th width="40">Info</th>
<!-- 									<security:authorize access="hasRole('ROLE_ADMIN')"> -->
										<th width="60">Edit</th>
										<th width="60">Delete</th>
<!-- 									</security:authorize> -->
								</tr>
														<c:forEach items="${productList}" var="p">
								<tr ng-repeat="p in products | filter:searchConditionprod">
<!-- 									<security:authorize access="hasRole('ROLE_ADMIN')"> -->
										<td>{{p.productid}}</td>
<!-- 									</security:authorize> -->
									<td><a href="<c:url value='/infoprod/{{p.productid}}'/>">
											{{p.productname}}</td>
									<td>{{p.productdescription}}</td>
									<td>{{p.categoryname}}</td>
<!-- 									<security:authorize access="hasRole('ROLE_ADMIN')"> -->
										<td>{{p.suppliername}}</td>
<!-- 									</security:authorize> -->
									<td>{{p.productprice}}</td>
									<c:url value="/resources/images/{{p.productname}}.jpg"
										var="imgg" />

									<td><a href="<c:url value='/infoprod/{{p.productid}}'/>">
											<img src="${imgg}" alt="prodimage" height="80" width="80" /></td>

									<td><a href="<c:url value='/infoprod/{{p.productid}}'/>"><span
											class="glyphicon glyphicon-info-sign"></span></a></td>



<!-- 									<security:authorize access="hasRole('ROLE_ADMIN')"> -->
										<td><a href="<c:url value='/editproduct/{{p.productid}}' />">Edit</a></td>
										<td><a
											href="<c:url value='/removeproduct/{{p.productid}}' />">Delete</a></td>
<!-- 									</security:authorize> -->
								</tr>
															</c:forEach>
							</table>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
 --%>
 <h3>List Of Products</h3>

<table class="tg" border=1 align="center">
	<tr>
		<th width="80">Product ID</th>
		<th width="120">Product Name</th>
		<th width="120">Product Description</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${productList}" var="pr">
		<tr>

			<td><c:out value="${pr.product_id}" /></td>
			<td><c:out value="${pr.product_name}" /></td>
			<td><c:out value="${pr.product_description}" /></td>
			<td><a href="<c:url value='/editproduct/${pr.product_id}' />">Edit</a></td>
			<td><a
				href="<c:url value='/removeproduct/${pr.product_id}' />">Delete</a></td>
		</tr>
	</c:forEach>
</table>
 
 
 
 
<%@ include file = "shared/footer.jsp" %>
</body>
</html>