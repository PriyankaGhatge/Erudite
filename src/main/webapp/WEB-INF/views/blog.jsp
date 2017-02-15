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
                        <h2><a href="post">Importance Of Reading</a></h2>
                        <p class="author-category">By <a href="#">JJ Wong</a> in <a href="">Articles</a>
                        </p>
                        <hr>
                        <p class="date-comments">
                            <a href="post"><i class="fa fa-calendar-o"></i> June 20, 2015</a>
                            
                        </p>
                        <div class="image">
                            <a href="post">
                                <img src="${img}/blog2.jpg" class="img-responsive" alt="Example blog post alt">
                            </a>
                        </div>
                        <p class="intro">Everyone knows that reading is important, but have you ever asked yourself why that is so? In this post, I will list out 8 reasons why reading is important. 
                        I hope you can really find out the reason why reading is so important for you, so you can get a brand new desire to explore the world of reading.</p>
                        <p class="read-more"><a href="post" class="btn btn-primary">Continue reading</a>
                        </p>
                    </div>


                    <div class="post">
                        <h2><a href="post"> Surging popularity of E-reading</a></h2>
                        <p class="author-category">By <a href="#">Anupama Roy</a> in <a href="">About Minimal</a>
                        </p>
                        <hr>
                        <p class="date-comments">
                            <a href="post"><i class="fa fa-calendar-o"></i> January 20, 2016</a>
                            
                        </p>
                        <div class="image">
                            <a href="post">
                                <img src="${img}/blog.jpg" class="img-responsive" alt="Example blog post alt">
                            </a>
                        </div>
                        <p class="intro">For all those readers jealous of <strong>Belle's Library</strong>, e-reading is the next Best thing for you,
                        As you don't have to worry about getting a new Book Case for your new Collection,just keep them on your E-Reader .</p>
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