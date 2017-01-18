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
<spring:url value="/resources/fonts" var="fonts" />

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Obaju e-commerce template">
    <meta name="author" content="Ondrej Svestka | ondrejsvestka.cz">
    <meta name="keywords" content="">

    <title>
        Obaju : e-commerce template
    </title>

    <meta name="keywords" content="">

    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100' rel='stylesheet' type='text/css'>

    <!-- styles -->
    <link href="${css}/font-awesome.css" rel="stylesheet">
    <link href="${css}/bootstrap.min.css" rel="stylesheet">
    <link href="${css}/animate.min.css" rel="stylesheet">
    <link href="${css}/owl.carousel.css" rel="stylesheet">
    <link href="${css}/owl.theme.css" rel="stylesheet">

    <!-- theme stylesheet -->
    <link href="${css}/style.default.css" rel="stylesheet" id="theme-stylesheet">

    <!-- your stylesheet with modifications -->
    <link href="${css}/custom.css" rel="stylesheet">

    <script src="${js}/respond.min.js"></script>

    <link rel="shortcut icon" href="favicon.png">



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

                <div class="col-md-6">
                    <div class="box">
                        <h1>Supplier</h1>

                        <p class="lead">Not our registered customer yet?</p>
                        <p>With registration with us new world of fashion, fantastic discounts and much more opens to you! The whole process will not take you more than a minute!</p>
                        <p class="text-muted">If you have any questions, please feel free to <a href="contact">contact us</a>, our customer service center is working for you 24/7.</p>

                        <hr>

                        <form action="addSupplier" method="post" commandName="Supplierdata">
                            
                            <div class="form-group">
                                <label for="name">Supplier Name</label>
                                <input type="text"  value="Supplier Name" name="supp_name" class="form-control" id="name" path="supp_name" />
                               
                            </div>
                            <div class="form-group">
                                <label for="email">Supplier Address</label>
                                <input type="text" value="Supplier Address" name="supp_address" class="form-control" id="address" path="supp_address">
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
