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

                <div class="col-md-6">
                    <div class="box">
                        <h1>New account</h1>

                        <p class="lead">Not our registered customer yet?</p>
                        <p>With registration with us new world of fashion, fantastic discounts and much more opens to you! The whole process will not take you more than a minute!</p>
                        <p class="text-muted">If you have any questions, please feel free to <a href="contact">contact us</a>, our customer service center is working for you 24/7.</p>

                        <hr>

                        <form action="saveuser" method="post" commandName="Userdata">
                            
                            <div class="form-group">
                                <label for="name">Name</label>
                                <input type="text" value="Name" name="Name" class="form-control" id="name" path="name" />
                               
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
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary"><i class="fa fa-user-md"></i> Register</button>
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
