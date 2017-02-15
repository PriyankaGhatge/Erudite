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
<spring:url value="/resources/fonts" var="fonts" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>Erudite Customer Info</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${css}/bootstrap.min.css">
<script src="${js}/jquery.min.js"></script>
<script src="${js}/bootstrap.min.js"></script>

</head>

<style>
  <style>
body {
	background: url("${img}/background7.jpg") no-repeat 0px 0px;
	background-size: cover;
	background-attachment: fixed;
}
.main-agileits {
	background: #fff;
}

.form-w3agileabc h3 {
	color: #1565C0;
	font-size: 2.5em;
	text-align: center;
	margin-bottom: 1.5em;
}

.metro {
	display: inline-block;
	padding: 10px;
	margin: 20px;
	background:#4fbfa8;
	/* Font styles */
	color: white;
	font-weight: bold;
	text-decoration: none;
	text-align: center;
	vertical-align: middle;
} 
.progress {
	width: 70%;
}
 </style>

<body>
	<%@ include file="/WEB-INF/views/shared/header.jsp"%>
	<br>
	<div align="center">
		<div class="metro">
			<h1>
				<font color="white">Status</font>
			</h1>
		</div>

		<div class="progress">
			<div class="progress-bar progress-bar-success" style="width: 33.333%"></div>
		</div>
	</div>

	<!--content-->
	<div align="center">
		<div class="metro">
			<p>Please verify all The details below for a hassle-free
				experience.</p>
		</div>
	</div>


	<div id="all">

        
	<div class="content">
		 <div class="container">


					<form:form commandName="order" class="form-horizontal">
					 
					<div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
						<div class="text-center">
						<h3>Customer Basic Info:</h3>

						
							<div class="form-group">
							<form:label path="cart.usercustomer.username">Name</form:label>
							
								<form:input path="cart.usercustomer.username" class="form-control" />
								
							
							</div>
							
							<div class="form-group">
							<form:label path="cart.usercustomer.email">Email</form:label>
							
								<form:input path="cart.usercustomer.email" class="form-control"/>
								
							
							</div>

							<div class="form-group">
							<form:label path="cart.usercustomer.contact">Contact</form:label>
							
								<form:input path="cart.usercustomer.contact" class="form-control" />
								
							
							</div>

							<h3>Customer Billing Address:</h3>

							
							<div class="form-group">
							<form:label path="cart.usercustomer.billingAddress.addressline1">Address Line 1</form:label>
							
								<form:input path="cart.usercustomer.billingAddress.addressline1" class="form-control"/>
								
							
							</div>
							
							<div class="form-group">
							<form:label path="cart.usercustomer.billingAddress.addressline2">Address Line 2</form:label>
							
								<form:input path="cart.usercustomer.billingAddress.addressline2" class="form-control"/>
								
							
							</div>

							<div class="form-group">
							<form:label path="cart.usercustomer.billingAddress.city">City</form:label>
							
								<form:input path="cart.usercustomer.billingAddress.city" class="form-control"/>
								
							
							</div>

							<div class="form-group">
							<form:label path="cart.usercustomer.billingAddress.state">State</form:label>
							
								<form:input path="cart.usercustomer.billingAddress.state" class="form-control"/>
								
							
							</div>

							<div class="form-group">
							<form:label path="cart.usercustomer.billingAddress.country">Country</form:label>
							
								<form:input path="cart.usercustomer.billingAddress.country" class="form-control" />
								
							
							</div>
							
							
							<div class="form-group">
							<form:label path="cart.usercustomer.billingAddress.zipcode">Zip Code</form:label>
							
								<form:input path="cart.usercustomer.billingAddress.zipcode" class="form-control"/>
								
							
							</div>

							<input type="hidden" name="_flowExecutionKey" />

							<br>

							<button class="btn btn-danger pull-left" name="_eventId_cancel">Cancel</button>

							<input type="submit" value="Next" class="btn btn-success pull-right" name="_eventId_customerInfoCollected" />
						
						</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	
</body>


<%@ include file="/WEB-INF/views/shared/footer.jsp"%>