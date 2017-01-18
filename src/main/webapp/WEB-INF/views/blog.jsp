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

                <div class="col-sm-12">
                    <ul class="breadcrumb">

                        <li><a href="index">Home</a>
                        </li>
                        <li>Blog listing</li>
                    </ul>
                </div>

                <!-- *** LEFT COLUMN ***
		     _________________________________________________________ -->

                <div class="col-sm-9" id="blog-listing">

                    <ul class="breadcrumb">

                        <li><a href="#">Home</a>
                        </li>
                        <li>Blog listing</li>
                    </ul>


                    <div class="box">

                        <h1>Blog category name</h1>
                        <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper.</p>

                    </div>

                    <div class="post">
                        <h2><a href="post">Fashion now</a></h2>
                        <p class="author-category">By <a href="#">John Slim</a> in <a href="">Fashion and style</a>
                        </p>
                        <hr>
                        <p class="date-comments">
                            <a href="post"><i class="fa fa-calendar-o"></i> June 20, 2013</a>
                            <a href="post"><i class="fa fa-comment-o"></i> 8 Comments</a>
                        </p>
                        <div class="image">
                            <a href="post">
                                <img src="${img}/blog2.jpg" class="img-responsive" alt="Example blog post alt">
                            </a>
                        </div>
                        <p class="intro">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies
                            mi vitae est. Mauris placerat eleifend leo.</p>
                        <p class="read-more"><a href="post" class="btn btn-primary">Continue reading</a>
                        </p>
                    </div>


                    <div class="post">
                        <h2><a href="post">Who is who - example blog post</a></h2>
                        <p class="author-category">By <a href="#">John Slim</a> in <a href="">About Minimal</a>
                        </p>
                        <hr>
                        <p class="date-comments">
                            <a href="post"><i class="fa fa-calendar-o"></i> June 20, 2013</a>
                            <a href="post"><i class="fa fa-comment-o"></i> 8 Comments</a>
                        </p>
                        <div class="image">
                            <a href="post">
                                <img src="${img}/blog.jpg" class="img-responsive" alt="Example blog post alt">
                            </a>
                        </div>
                        <p class="intro">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies
                            mi vitae est. Mauris placerat eleifend leo.</p>
                        <p class="read-more"><a href="post" class="btn btn-primary">Continue reading</a>
                        </p>
                    </div>

                    <ul class="pager">
                        <li class="previous"><a href="#">&larr; Older</a>
                        </li>
                        <li class="next disabled"><a href="#">Newer &rarr;</a>
                        </li>
                    </ul>



                </div>
                <!-- /.col-md-9 -->

                <!-- *** LEFT COLUMN END *** -->


                <div class="col-md-3">
                    <!-- *** BLOG MENU ***
 _________________________________________________________ -->
                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Blog</h3>
                        </div>

                        <div class="panel-body">

                            <ul class="nav nav-pills nav-stacked">
                                <li>
                                    <a href="blog">About us</a>
                                </li>
                                <li class="active">
                                    <a href="blog">Fashion</a>
                                </li>
                                <li>
                                    <a href="blog">News and gossip</a>
                                </li>
                                <li>
                                    <a href="blog">Design</a>
                                </li>
                            </ul>
                        </div>

                    </div>
                    <!-- /.col-md-3 -->

                    <!-- *** BLOG MENU END *** -->

                    <div class="banner">
                        <a href="#">
                            <img src="${img}/banner.jpg" alt="sales 2014" class="img-responsive">
                        </a>
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