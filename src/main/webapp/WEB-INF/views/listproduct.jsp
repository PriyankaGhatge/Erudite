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

<table class="tg" align="center" >
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

			<td><c:out value="${pr.product_id}" /></td>
			<td><c:out value="${pr.product_name}" /></td>
			<td><c:out value="${pr.product_description}" /></td>
			<c:url value="/resources/img/${pr.product_name}.jpg" var="imgg"/>
			<td><img src = "${imgg}" alt="Image" height="80" width="80"></td>
			<td><a href="<c:url value='/editproduct/${pr.product_id}' />">Edit</a></td>
			<td><a
				href="<c:url value='/removeproduct/${pr.product_id}' />">Delete</a></td>
		</tr>
	</c:forEach>
</table>
 <br>
 
 
 
<%@ include file = "shared/footer.jsp" %>
</body>
</html>