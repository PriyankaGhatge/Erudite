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
	background: url("${img}/background2.jpg") no-repeat 0px 0px;
	background-size: cover;
	background-attachment: fixed;
	}
table {
    
    border-collapse: collapse;
    width: 100%;
}

th, td, {
    text-align: center;
    padding: 8px;
}

 tr:nth-child(even){background-color: #f2f2f2}	

</style>

<body>
<%@ include file = "shared/header.jsp" %>
<h3>List Of Categories</h3>

<table  border=1   class="w3-table-all w3-centered">
	<tr>
		<th width="80">Category ID</th>
		<th width="120">Category Name</th>
		<th width="120">Category Description</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${categoryList}" var="cat">
		<tr>

			<td><c:out value="${cat.category_id}" /></td>
			<td><c:out value="${cat.category_name}" /></td>
			<td><c:out value="${cat.category_description}" /></td>
			<td><a href="<c:url value='/editcategory/${cat.category_id}' />">Edit</a></td>
			<td><a
				href="<c:url value='/removecategory/${cat.category_id}' />">Delete</a></td>
		</tr>
	</c:forEach>
</table>

	<%@ include file = "shared/footer.jsp" %>
</body>
</html>
