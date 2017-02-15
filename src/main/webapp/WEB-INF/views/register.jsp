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
   
    <div id="all">

        <div id="content">
            <div class="container">

                <div class="col-md-12">

                    <ul class="breadcrumb">
                        <li><a href="#">Home</a>
                        </li>
                        <li>New account / Sign in</li>
                    </ul>

                </div>
					<div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
						<div class="txt-center">
						
                        <h1>New account</h1>

                        <p class="lead">Not our registered customer yet?</p>
                        <p>By Registering with our new world of Books, fantastic discounts and much more opens to you! The whole process will not take you more than a minute!</p>
                        <p class="text-muted">If you have any questions, please feel free to <a href="contact">contact us</a>, our customer service center is working for you 24/7.</p>

                        <hr>

                        <form:form action="saveuser" method="post" commandName="Userdata">
                            
                            <div class="form-group">
                                <label for="name">Name</label>
                                <input type="text"  name="username" class="form-control" id="name" path="username" />
                               
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="text"  name="Email" class="form-control" id="email" path="email">
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password"  name="Password" class="form-control" id="password" path="password" >
                            </div>
                             <div class="form-group">
                                <label for="contact">Contact</label>
                                <input class="form-control"  name="Contact" id="contact" path="contact">
                            </div>
                            <br>
                            
                            
                            <h2>Billing Address</h2>
                            
                            <form:label path="billingAddress.country">Country</form:label>
							<div class="form-group">
							<!-- <i class="glyphicon glyphicon-globe" aria-hidden="true"></i> -->
							<form:input path="billingAddress.country" class="form-control" />
							
						</div>
						
							<form:label path="billingAddress.state">State Name</form:label>
							<div class="form-group">
							<!--<i class="glyphicon glyphicon-screenshot" aria-hidden="true"></i>  -->
							<form:input path="billingAddress.state" class="form-control" />
							
						</div>
                        
                        <form:label path="billingAddress.city">City Name</form:label>
						<div class="form-group">
							<!-- <i class="glyphicon glyphicon-screenshot" aria-hidden="true"></i> -->
							<form:input path="billingAddress.city" class="form-control" />
							
						</div>
						
						<form:label path="billingAddress.addressline1">Address Line 1</form:label>
						<div class="form-group">
							<!-- <i class="glyphicon glyphicon-screenshot" aria-hidden="true"></i> -->
							<form:input path="billingAddress.addressline1" class="form-control" />
							
						</div>
                 
                        <form:label path="billingAddress.addressline2">Address Line 2</form:label>
						<div class="form-group">
							<!-- <i class="glyphicon glyphicon-screenshot" aria-hidden="true"></i> -->
							<form:input path="billingAddress.addressline2" class="form-control" />
							
						</div>
                        
                        <form:label path="billingAddress.zipcode">Zip Code</form:label>
						<div class="form-group">
							<!-- <i class="glyphicon glyphicon-asterisk" aria-hidden="true"></i> -->
							<form:input path="billingAddress.zipcode" class="form-control" />
							
						</div>  
						
						
						<br>
						
							
                            <h2>Shipping Address</h2>
                            
                            <form:label path="shippingAddress.country">Country</form:label>
							<div class="form-group">
							<!-- <i class="glyphicon glyphicon-globe" aria-hidden="true"></i>	 -->						
							<form:input path="shippingAddress.country" class="form-control"/>
							
						</div>
						
							<form:label path="shippingAddress.state">State Name</form:label>
							<div class="form-group">
							<!-- <i class="glyphicon glyphicon-screenshot" aria-hidden="true"></i> -->
							<form:input path="shippingAddress.state" class="form-control" />
							
						</div>
                        
                        <form:label path="shippingAddress.city">City Name</form:label>
						<div class="form-group">
							<!-- <i class="glyphicon glyphicon-screenshot" aria-hidden="true"></i> -->
							<form:input path="shippingAddress.city" class="form-control" />
							
						</div>
						
						<form:label path="shippingAddress.addressline1">Address Line 1</form:label>
						<div class="form-group">
							<!-- <i class="glyphicon glyphicon-screenshot" aria-hidden="true"></i> -->
							<form:input path="shippingAddress.addressline1" class="form-control" />
							
						</div>
                 
                        <form:label path="shippingAddress.addressline2">Address Line 2</form:label>
						<div class="form-group">
<!-- 							<i class="glyphicon glyphicon-screenshot" aria-hidden="true"></i>-->							
								<form:input path="shippingAddress.addressline2" class="form-control" />
							
						</div>
                        
                        <form:label path="shippingAddress.zipcode">Zip Code</form:label>
						<div class="form-group">
							<!-- <i class="glyphicon glyphicon-asterisk" aria-hidden="true"></i> -->
							<form:input path="shippingAddress.zipcode" class="form-control" />
							
						</div>
						
						
                            <div class="text-center">
                            <button type="submit" class="btn btn-primary"><i class="fa fa-user-md"></i> Register</button>
                            </div>  
						                      
                      </form:form>
                    </div>
                </div>
			 </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->
</div>

       <%@ include file = "shared/footer.jsp" %>
</body>

</html>
