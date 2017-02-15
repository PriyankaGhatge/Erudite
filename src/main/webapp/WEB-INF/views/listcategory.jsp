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

<body>
<%@ include file = "shared/header.jsp" %>

 <div id="all">

        <div id="content">
            <div class="container">
   
  
   
   <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">

	

<h3>List Of Categories</h3>

<table class="tg" >
	<tr >
		<th width="80">Category ID</th>
		<th width="120">Category Name</th>
		<th width="120">Category Description</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${categoryList}" var="cat">
		<tr >

			<td><c:out value="${cat.category_id}" /></td>
			<td><c:out value="${cat.category_name}" /></td>
			<td><c:out value="${cat.category_description}" /></td>
			<td><a href="<c:url value='/editcategory/${cat.category_id}' />">Edit</a></td>
			<td><a
				href="<c:url value='/removecategory/${cat.category_id}' />">Delete</a></td>
		</tr>
	</c:forEach>
</table>
</div>
</div>
</div>
</div>


	<%@ include file = "shared/footer.jsp" %>
</body>
</html>
