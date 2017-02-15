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
	background: url("${img}/background7.jpg") no-repeat 0px 0px;
	background-size: cover;
	background-attachment: fixed;
}
</style>
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
				
                        <h1>Category</h1>

                        <p class="lead">Not our registered customer yet?</p>
                        <p>With registration with us new world of fashion, fantastic discounts and much more opens to you! The whole process will not take you more than a minute!</p>
                        <p class="text-muted">If you have any questions, please feel free to <a href="contact">contact us</a>, our customer service center is working for you 24/7.</p>

                        <hr>

                        <form action="addCategory" method="post" commandName="Categorydata">
                            
                            <div class="form-group">
                                <label for="name">Category Name</label>
                                <input type="text"   name="category_name" class="form-control" id="name" path="category_name" />
                               
                            </div>
                            <div class="form-group">
                                <label for="email">Category Description</label>
                                <input type="text"  name="category_description" class="form-control" id="description" path="category_description" />
                           </div>
                           
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary"><i class="fa fa-user-md"></i> Manage</button>
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
</body>

</html>
