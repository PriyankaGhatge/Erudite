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
</head>
<style type="text/css">
body {
	background: url("${img}/background1.jpg") no-repeat 0px 0px;
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
                    <div id="main-slider">
                        <div class="item">
                            <img src="${img}/main-slider1.jpg" alt="" class="img-responsive">
                        </div>
                        <div class="item">
                            <img class="img-responsive" src="${img}/main-slider2.jpg" alt="">
                        </div>
                        <div class="item">
                            <img class="img-responsive" src="${img}/main-slider3.jpg" alt="">
                        </div>
                        <div class="item">
                            <img class="img-responsive" src="${img}/main-slider4.jpg" alt="">
                        </div>
                    </div>
                    <!-- /#main-slider -->
                </div>
            </div>

            <!-- *** ADVANTAGES HOMEPAGE ***
 _________________________________________________________ -->
            <div id="advantages">

                <div class="container">
                    <div class="same-height-row">
                        <div class="col-sm-4">
                            <div class="box same-height clickable">
                                <div class="icon"><i class="fa fa-heart"></i>
                                </div>

                                <h3><a href="#">We love our customers</a></h3>
                                <p>We are known to provide best possible service ever</p>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="box same-height clickable">
                                <div class="icon"><i class="fa fa-tags"></i>
                                </div>

                                <h3><a href="#">Best prices</a></h3>
                                <p>We assure you that we provide best deals on our books</p>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="box same-height clickable">
                                <div class="icon"><i class="fa fa-thumbs-up"></i>
                                </div>

                                <h3><a href="#">100% satisfaction guaranteed</a></h3>
                                <p>Free returns on everything for 1 month.</p>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->

                </div>
                <!-- /.container -->

            </div>
            <!-- /#advantages -->

            <!-- *** ADVANTAGES END *** -->

            <!-- *** HOT PRODUCT SLIDESHOW ***
 _________________________________________________________ -->
            <div id="hot">

                <div class="box">
                    <div class="container">
                        <div class="col-md-12">
                            <h2>Best Selling Writers</h2>
                        </div>
                    </div>
                </div>

                <div class="container">
                    <div class="product-slider">
                        <div class="item">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail">
                                                <img src="${img}/Got.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail">
                                                <img src="${img}/Got.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail" class="invisible">
                                    <img src="${img}/Got.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail">George RR Martin</a></h3>
                                    <p class="price"></p>
                                </div>
                                <!-- /.text -->
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="item">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail">
                                                <img src="${img}/Shiva.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail">
                                                <img src="${img}/Shiva.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail" class="invisible">
                                    <img src="${img}/Shiva.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail">Amish Tripathi</a></h3>
                                    <p class="price"> </p>
                                </div>
                                <!-- /.text -->

                                <div class="ribbon sale">
                                    <div class="theribbon">SALE</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                <!-- /.ribbon -->

                                <div class="ribbon new">
                                    <div class="theribbon">NEW</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                <!-- /.ribbon -->

                                <div class="ribbon gift">
                                    <div class="theribbon">GIFT</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                <!-- /.ribbon -->
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="item">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail">
                                                <img src="${img}/danbrown.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail">
                                                <img src="${img}/danbrown.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail" class="invisible">
                                    <img src="${img}/danbrown.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail">Dan Brown</a></h3>
                                    <p class="price"></p>
                                </div>
                                <!-- /.text -->
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="item">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail">
                                                <img src="${img}/HP.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail">
                                                <img src="${img}/HP.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail" class="invisible">
                                    <img src="${img}/HP.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail">Harry Potter</a></h3>
                                    <p class="price"></p>
                                </div>
                                <!-- /.text -->
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="item">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail">
                                                <img src="${img}/chetan.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail">
                                                <img src="${img}/chetan.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail" class="invisible">
                                    <img src="${img}/chetan.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail">Chetan Bhagat</a></h3>
                                    <p class="price"></p>
                                </div>
                                <!-- /.text -->

                                <div class="ribbon new">
                                    <div class="theribbon">NEW</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                <!-- /.ribbon -->
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="item">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail">
                                                <img src="${img}/tattoo.jpeg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail">
                                                <img src="${img}/tattoo.jpeg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail" class="invisible">
                                    <img src="${img}/tattoo.jpeg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail">Stieg Larsson</a></h3>
                                    <p class="price"></p>
                                </div>
                                <!-- /.text -->

                                <div class="ribbon gift">
                                    <div class="theribbon">GIFT</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                <!-- /.ribbon -->

                            </div>
                            <!-- /.product -->
                        </div>
                        <!-- /.col-md-4 -->

                        <div class="item">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail">
                                                <img src="${img}/Paulo.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail">
                                                <img src="${img}/Paulo.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail" class="invisible">
                                    <img src="${img}/Paulo.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail">Paulo Coelho</a></h3>
                                    <p class="price"> </p>
                                </div>
                                <!-- /.text -->

                                <div class="ribbon sale">
                                    <div class="theribbon">SALE</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                <!-- /.ribbon -->

                                <div class="ribbon new">
                                    <div class="theribbon">NEW</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                <!-- /.ribbon -->

                                <div class="ribbon gift">
                                    <div class="theribbon">GIFT</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                <!-- /.ribbon -->
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="item">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail">
                                                <img src="${img}/enidblyton.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail">
                                                <img src="${img}/enidblyton.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail" class="invisible">
                                    <img src="${img}/enidblyton.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail">Enid Blyton</a></h3>
                                    <p class="price"></p>
                                </div>
                                <!-- /.text -->
                            </div>
                            <!-- /.product -->
                        </div>

                    </div>
                    <!-- /.product-slider -->
                </div>
                <!-- /.container -->

            </div>
            <!-- /#hot -->

            <!-- *** HOT END *** -->

            <!-- *** GET INSPIRED ***
 _________________________________________________________ -->
            <div class="container" data-animate="fadeInUpBig">
                <div class="col-md-12">
                    <div class="box slideshow">
                        <h3>Get Inspired</h3>
                        <p class="lead">Get the inspiration from our world class designers</p>
                        <div id="get-inspired" class="owl-carousel owl-theme">
                            <div class="item">
                                <a href="#">
                                    <img src="${img}/getinspired1.jpg" alt="Get inspired" class="img-responsive">
                                </a>
                            </div>
                            <div class="item">
                                <a href="#">
                                    <img src="${img}/getinspired2.jpg" alt="Get inspired" class="img-responsive">
                                </a>
                            </div>
                            <div class="item">
                                <a href="#">
                                    <img src="${img}/getinspired3.jpg" alt="Get inspired" class="img-responsive">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- *** GET INSPIRED END *** -->

            <!-- *** BLOG HOMEPAGE ***
 _________________________________________________________ -->

            <div class="box text-center" data-animate="fadeInUp">
                <div class="container">
                    <div class="col-md-12">
                        <h3 class="text-uppercase">From our blog</h3>

                        <p class="lead">What's new in the world of fashion? <a href="blog">Check our blog!</a>
                        </p>
                    </div>
                </div>
            </div>

            <div class="container">

                <div class="col-md-12" data-animate="fadeInUp">

                    <div id="blog-homepage" class="row">
                        <div class="col-sm-6">
                            <div class="post">
                                <h4><a href="post">Fashion now</a></h4>
                                <p class="author-category">By <a href="#">John Slim</a> in <a href="">Fashion and style</a>
                                </p>
                                <hr>
                                <p class="intro">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean
                                    ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                                <p class="read-more"><a href="post" class="btn btn-primary">Continue reading</a>
                                </p>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="post">
                                <h4><a href="post">Who is who - example blog post</a></h4>
                                <p class="author-category">By <a href="#">John Slim</a> in <a href="">About Minimal</a>
                                </p>
                                <hr>
                                <p class="intro">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean
                                    ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                                <p class="read-more"><a href="post" class="btn btn-primary">Continue reading</a>
                                </p>
                            </div>

                        </div>

                    </div>
                    <!-- /#blog-homepage -->
                </div>
            </div>
            <!-- /.container -->

            <!-- *** BLOG HOMEPAGE END *** -->


        </div>
        <!-- /#content -->
        </div>
        
 <%@ include file = "shared/footer.jsp" %> 
 
</body>

</html>