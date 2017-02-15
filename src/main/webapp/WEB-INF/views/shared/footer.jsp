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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Erudite</title>
</head>
<body>

        <!-- *** FOOTER ***-->

        <div id="footer" data-animate="fadeInUp">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <h4>Pages</h4>

                        <ul>
                            <li><a href="text">About us</a>
                            </li>
                            <li><a href="text">Terms and conditions</a>
                            </li>
                            <li><a href="faq">FAQ</a>
                            </li>
                            <li><a href="contact">Contact us</a>
                            </li>
                        </ul>

                        <hr>

                        <h4>User section</h4>

                        <ul>
                            <li><a href="#" data-toggle="modal" data-target="#login-modal">Login</a>
                            </li>
                            <li><a href="register">Register</a>
                            </li>
                        </ul>

                        <hr class="hidden-md hidden-lg hidden-sm">

                    </div>
                    <!-- /.col-md-3 -->

                    <div class="col-md-3 col-sm-6">

                        <h4>Top categories</h4>

                        <h5>Fiction</h5>

                        <ul>
                            <li><a href="category">Sci-Fi</a>
                            </li>
                            <li><a href="category">Action</a>
                            </li>
                            <li><a href="category">Western</a>
                            </li>
                        </ul>

                        <h5>Cooking</h5>
                        <ul>
                            <li><a href="category">Nigella</a>
                            </li>
                            <li><a href="category">Jaime</a>
                            </li>
                            <li><a href="category">Rachel</a>
                            </li>
                            
                        </ul>

                        <hr class="hidden-md hidden-lg">

                    </div>
                    <!-- /.col-md-3 -->

                    <div class="col-md-3 col-sm-6">

                        <h4>Where to find us</h4>

                        <p><strong>Erudite Global Inc</strong>
                            <br>Orion Business Park
                            <br>Sector 12
                            <br>Worli
                            <br>Maharashtra
                            <br>
                            <strong>India</strong>
                        </p>

                        <a href="contact">Go to contact page</a>

                        <hr class="hidden-md hidden-lg">

                    </div>
                    <!-- /.col-md-3 -->



                    <div class="col-md-3 col-sm-6">

                        <h4>Get the news</h4>

                        <p class="text-muted">Learn all about our new Collections and Writer Blogs .</p>

                        <form>
                             <div class="input-group">

                              

                                <span class="input-group-btn">

			    <a href="post" class="btn btn-primary"> Read Our Blog !</a>

			</span>

                            </div>
                            <!-- /input-group -->
                        </form>

                        <hr>

                        <h4>Stay in touch</h4>

                        <p class="social">
                            <a href="#" class="facebook external" data-animate-hover="shake"><i class="fa fa-facebook"></i></a>
                            <a href="#" class="twitter external" data-animate-hover="shake"><i class="fa fa-twitter"></i></a>
                            <a href="#" class="instagram external" data-animate-hover="shake"><i class="fa fa-instagram"></i></a>
                            <a href="#" class="gplus external" data-animate-hover="shake"><i class="fa fa-google-plus"></i></a>
                            <a href="#" class="email external" data-animate-hover="shake"><i class="fa fa-envelope"></i></a>
                        </p>


                    </div>
                    <!-- /.col-md-3 -->

                </div>
                <!-- /.row -->

            </div>
            <!-- /.container -->
        </div>
        <!-- /#footer -->

        <!-- *** FOOTER END *** -->




        <!-- *** COPYRIGHT ***
 _________________________________________________________ -->
        <div id="copyright">
            <div class="container">
                <div class="col-md-6">
                    <p class="pull-left">© 2017 PriyankaGhatge All Rights Reserved</p>

                </div>
                <div class="col-md-6">
                    <p class="pull-right">Template by <a href="https://bootstrapious.com/e-commerce-templates">Bootstrapious.com</a>
                         <!-- Not removing these links is part of the license conditions of the template. Thanks for understanding :) If you want to use the template without the attribution links, you can do so after supporting further themes development at https://bootstrapious.com/donate  -->
                    </p>
                </div>
            </div>
        </div>
        <!-- *** COPYRIGHT END *** -->




<!--     </div> -->
    <!-- /#all -->


    

    <!-- *** SCRIPTS TO INCLUDE ***
 _________________________________________________________ -->
    <script src="${js}/jquery-1.11.0.min.js"></script>
    <script src="${js}/bootstrap.min.js"></script>
    <script src="${js}/jquery.cookie.js"></script>
    <script src="${js}/waypoints.min.js"></script>
    <script src="${js}/modernizr.js"></script>
    <script src="${js}/bootstrap-hover-dropdown.js"></script>
    <script src="${js}/owl.carousel.min.js"></script>
    <script src="${js}/front.js"></script>

</body>
</html>