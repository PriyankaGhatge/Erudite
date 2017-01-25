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
<body align ="center">
<%@ include file = "shared/header.jsp" %>

 <div id="all">
 <div class="content">
		<!--login-->
		<div class="login">
			<div class="main-agileits">
				<div class="form-w3agile form1">
					 <div class="container">
					  <div class="col-md-12">

                  			  <ul class="breadcrumb">
           		                  <li><a href="#">Home</a>
            		                  </li>
                		          <li><a href="#">New account / Sign in</a></li>
                   			  </ul>

               				 </div>

					<div class="col-md-6">
                    <div class="box">
					<h1>Add Product</h1>

					<p class="lead">Need to make some changes ?</p>
                    <p>With ADMIN rights you can make necessary changes to our Products</p>
                    <p class="text-muted">If you have any questions, please feel free to <a href="contact">contact us</a>, our customer service center is working for you 24/7.</p>
					<hr>


					<c:url var="addaction" value="/newProduct/add"></c:url>
					<form:form action="addProduct" commandName="Productdata" enctype="multipart/form-data">

						<div class="form-group">
						<form:label path="product_name">Product Name</form:label>
						<div class="key">
						<form:input type="text" path="product_name" name="product_name" />
						<div class="clearfix"></div>
						</div>
						</div>
						
						
						<div class="form-group">
						<form:label path="product_price">Product Price</form:label>
						<div class="key">
						<form:input type="text" path="product_price" name="product_price" />
						<div class="clearfix"></div>
						</div>
						</div>
						


						<div class="form-group">
						<form:label path="product_description">Product Description</form:label>
						<div class="key">
						<form:input type="text" path="product_description" name="product_description" />
						<div class="clearfix"></div>
						</div>
						</div>
						

						<div class="form-group">
						<form:label path="category_name">Category Name</form:label>
						<div class="key">
						<form:select class="form-control" items="${Catname}" path="category_name" />
						<div class="clearfix"></div>
						</div>
						</div>
						
						
						<div class="form-group">
						<form:label path="supp_name">Supplier Name</form:label>
						<div class="key">
						<form:select class="form-control" items="${Suppname}" path="supp_name" />
						<div class="clearfix"></div>
						</div>
						</div>
						

						<form:label path="image">Product Image</form:label>
						<form:input class="form-control" type="file" path="image" name="image"/>
						<div class="clearfix"></div>
						</div>
						<div class="text-center">
                        <button type="submit" class="btn btn-primary"><i class="fa fa-user-md"></i> Manage</button>
                        </div>
						
					</form:form>
				     </div>
			      </div>
		        </div>
	         </div>
	      </div>
	    </div>
	 </div>
	        

<%@ include file = "shared/footer.jsp" %>
</body>
</html>