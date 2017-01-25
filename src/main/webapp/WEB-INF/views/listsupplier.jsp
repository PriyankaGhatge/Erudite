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
<h3>List Of Suppliers</h3>

<table class="tg" border=1 align="center">
	<tr>
		<th width="80">Supplier ID</th>
		<th width="120">Supplier Name</th>
		<th width="120">Supplier Address</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${supplierList}" var="supp">
		<tr>

			<td><c:out value="${supp.supp_id}" /></td>
			<td><c:out value="${supp.supp_name}" /></td>
			<td><c:out value="${supp.supp_address}" /></td>
			<td><a href="<c:url value='/editsupplier/${supp.supp_id}' />">Edit</a></td>
			<td><a
				href="<c:url value='/removesupplier/${supp.supp_id}' />">Delete</a></td>
		</tr>
	</c:forEach>
</table>

	<%@ include file = "shared/footer.jsp" %>
</body>
</html>
