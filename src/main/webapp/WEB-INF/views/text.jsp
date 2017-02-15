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
                        <li>Text page</li>
                    </ul>
                </div>

                <div class="col-md-3">
                    <!-- *** PAGES MENU ***
 _________________________________________________________ -->
                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Pages</h3>
                        </div>

                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked">
                                <li>
                                    <a href="text">Text page</a>
                                </li>
                                <li>
                                    <a href="contact">Contact page</a>
                                </li>
                                <li>
                                    <a href="faq">FAQ</a>
                                </li>

                            </ul>

                        </div>
                    </div>

                    <!-- *** PAGES MENU END *** -->


                    <div class="banner">
                        <a href="#">
                            <img src="${img}/banner.jpg" alt="sales 2014" class="img-responsive">
                        </a>
                    </div>
                </div>

                <div class="col-md-9">

                    <div class="box" id="text-page">
                        <h1>About Us - Get To Know Us</h1>

                        <p class="lead">This page aim is to show you the most common HTML elements appearance on the website. For further reference please visit official <a href="http://getbootstrap.com/css/" class="external">Bootstrap website</a>.</p>

                        <p><strong> Erudite aims to be a point of cultural and social interaction</strong> where authors and poets hold court, where children are regaled, where people gravitate to be informed, to be entertained, even enlightened. 
                        The name embodies the vision of Erudite as a place and space for people who seek information, knowledge or just the pleasure of reading. 
                        Erudite stocks the widest range of Books, Movies, Music, Toys, Stationary, Magazines and CD ROMs.</p>

                        <h2>Why Shop With Us ?</h2>

                        <ol>
                            <li>Facilities like the Erudite Gift Vouchers, the friendly "<strong>Return, Exchange & Refunds</strong>" policy, </li>
                            <li>Unique store experience make it easy and enjoyable for customers to shop at Erudite</li>
                        </ol>

                        <blockquote>
                            <p>Over 4.5 lacs loyal customers are rewarded through the Erudite Book Rewards Program with points, discounts, exclusive discounts and offers and more. "<strong>eWords</strong>", 
                            a monthly e-newsletter with reviews of new books, news about in store events and bestseller lists, is currently mailed to these Members.</p>
                        </blockquote>

                        <h3>Erudite Recommends</h3>

                        <ul>
                            <li>A New initiative for our Bookworms  </li>
                            <li>Find the next <strong>Best Book</strong></li>
                        </ul>

                        <hr>

                        <h2>Our Contributors</h2>

                        <div class="row">
                            <div class="col-md-4">
                                <p class="text-center">
                                    <img src="${img}/detailsquare.jpg" class="img-circle img-responsive" alt="">
                                </p>
                                <p class="text-center">circle</p>
                            </div>
                            <div class="col-md-4">
                                <p class="text-center">
                                    <img src="${img}/detailsquare.jpg" class="img-thumbnail  img-responsive" alt="">
                                </p>
                                <p class="text-center">thumbnail</p>
                            </div>
                            <div class="col-md-4">
                                <p class="text-center">
                                    <img src="${img}/detailsquare.jpg" class="img-rounded img-responsive" alt="">
                                </p>
                                <p class="text-center">rounded</p>
                            </div>
                        </div>

                    </div>


                </div>
                <!-- /.col-md-9 -->
            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->
        </div>

 <%@ include file = "shared/footer.jsp" %>
    
</body>

</html>