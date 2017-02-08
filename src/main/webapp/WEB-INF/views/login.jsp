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
</style>
<body>
   
    <%@ include file = "shared/header.jsp" %>
   
     <div id="all">

        <div id="content">
            <div class="container">
   
   
   <div class="col-md-6">
                    <div class="box">
                        <h1>Login</h1>

                        <p class="lead">Already our customer?</p>
                        <p class="text-muted">With Login you can BUY all the Books you wanted,on your Shelf !!! </p>
						<p class="text-muted">If you have any questions, please feel free to <a href="contact">contact us</a>, our customer service center is working for you 24/7.</p>
                        <hr>
						<c:if test="${not empty error}">
						<div class=error style="color: #ff0000">${error}</div>
					    </c:if>
					    <c:if test="${not empty logout}">
					    <div class=logout style="color:#ff0000"> ${logout} </div>
					    </c:if>
					    <br>
                        <form action="<c:url value="j_spring_security-check"/>" method="post">
                        	
                            <div class="form-group">
                                <label for="name">Name</label>
                                <input type="text" class="form-control" name="j_User_id" path="name" id="name">
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" name="j_User_password" path="password" id="password">
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">
                                <input type="hidden" name="${csrf.parametername}" value="${_csrf.token}" />
                                <i class="fa fa-sign-in"></i> Log in</button>
                            </div>
                        </form>
                    </div>
                </div>


            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->
</div>

       <%@ include file = "shared/footer.jsp" %>