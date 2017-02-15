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
body {
	background: url("${img}/background7.jpg") no-repeat 0px 0px;
	background-size: cover;
	background-attachment: fixed;
}
</style>
</head>
<body>
   
    <%@ include file = "shared/header.jsp" %>
    <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	<!--content -->
	<div class="content">
		 <div class="container">

                <div class="col-md-12">

                    <ul class="breadcrumb">
                        <li><a href="#">Home</a>
                        </li>
                        <li><a href="#">New account / Sign in</a></li>
                    </ul>

                </div>

                <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
						<div class="txt-center">
                
                        <h1>Category</h1>

                        <p class="lead">Need to do some changes ?</p>
                        <p>With ADMIN rights you can make necessary changes to our Categories</p>
                        <p class="text-muted">If you have any questions, please feel free to <a href="contact">contact us</a>, our customer service center is working for you 24/7.</p>

                        <hr>
					<%-- <c:url var="addAction" value="/editCategory/{category_id}"></c:url> --%> 
					
					<form:form action="${contextPath}/addCategory" modelAttribute="Category" method="post">
					
					    <div class="form-group">
						<form:label path="category_id"  >Category ID</form:label>
					    <form:input type="text"  name="category_id" class="form-control"  path="category_id" readonly="true"/>
 						<div class="clearfix"></div> 
 						
 						</div> 
 						<div class="form-group">
						<form:label path="category_name" >Category Name</form:label>
 						<form:input type="text" path="category_name"  name="category_name" class="form-control"   />
						<div class="clearfix"></div> 
						
 						</div> 
					    <div class="form-group">
						<form:label path="category_description" >Category Description</form:label>
 						<div class="key">
						<form:input path="category_description" type="text" name="category_description" class="form-control"  />
						<div class="clearfix"></div> 
						</div>
 						</div> 
 						<div class="text-center">
                                <button type="submit" class="btn btn-primary"><i class="fa fa-user-md"></i> Manage</button>
                            </div>
                            
						</form:form>
				</div> 

 			</div> 
			
 		</div> 
 	</div> 
	<%@include file="shared/footer.jsp"%>
	</body>
	</html>