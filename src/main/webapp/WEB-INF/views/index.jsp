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
                                            <a href="listproduct">
                                                <img src="${img}/Got.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="listproduct">
                                                <img src="${img}/Got.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="listproduct" class="invisible">
                                    <img src="${img}/Got.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="listproduct">George RR Martin</a></h3>
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
                                            <a href="listproduct">
                                                <img src="${img}/Shiva.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="listproduct">
                                                <img src="${img}/Shiva.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="listproduct" class="invisible">
                                    <img src="${img}/Shiva.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="listproduct">Amish Tripathi</a></h3>
                                    <p class="price"> </p>
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
                                            <a href="listproduct">
                                                <img src="${img}/danbrown.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="listproduct">
                                                <img src="${img}/danbrown.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="listproduct" class="invisible">
                                    <img src="${img}/danbrown.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="listproduct">Dan Brown</a></h3>
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
                                            <a href="listproduct">
                                                <img src="${img}/HP.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="listproduct">
                                                <img src="${img}/HP.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="listproduct" class="invisible">
                                    <img src="${img}/HP.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="listproduct">Harry Potter</a></h3>
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
                                            <a href="listproduct">
                                                <img src="${img}/chetan.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="listproduct">
                                                <img src="${img}/chetan.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="listproduct" class="invisible">
                                    <img src="${img}/chetan.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="listproduct">Chetan Bhagat</a></h3>
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
                                            <a href="listproduct">
                                                <img src="${img}/tattoo.jpeg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="listproduct">
                                                <img src="${img}/tattoo.jpeg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="listproduct" class="invisible">
                                    <img src="${img}/tattoo.jpeg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="listproduct">Stieg Larsson</a></h3>
                                    <p class="price"></p>
                                </div>
                                <!-- /.text -->

                               

                            </div>
                            <!-- /.product -->
                        </div>
                        <!-- /.col-md-4 -->

                        <div class="item">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="listproduct">
                                                <img src="${img}/Paulo.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="listproduct">
                                                <img src="${img}/Paulo.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="listproduct" class="invisible">
                                    <img src="${img}/Paulo.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="listproduct">Paulo Coelho</a></h3>
                                    <p class="price"> </p>
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
                                            <a href="listproduct">
                                                <img src="${img}/enidblyton.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="listproduct">
                                                <img src="${img}/enidblyton.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="listproduct" class="invisible">
                                    <img src="${img}/enidblyton.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="listproduct">Enid Blyton</a></h3>
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

          
            <!-- *** BLOG HOMEPAGE ***
 _________________________________________________________ -->

            <div class="box text-center" data-animate="fadeInUp">
                <div class="container">
                    <div class="col-md-12">
                        <h3 class="text-uppercase">From our blog</h3>

                        <p class="lead">What's new in the world of Literature? <a href="blog">Check our blog!</a>
                        </p>
                    </div>
                </div>
            </div>

            <div class="container">

                <div class="col-md-12" data-animate="fadeInUp">

                    <div id="blog-homepage" class="row">
                        <div class="col-sm-6">
                            <div class="post">
                                <h4><a href="post">Importance Of Reading</a></h4>
                                <p class="author-category">By <a href="post">JJ Wong </a> in <a href="post">Articles</a>
                                </p>
                                <hr>
                                <p class="intro">Everyone knows that reading is important, but have you ever asked yourself why that is so? In this post, I will list out 8 reasons why reading is important. 
                        I hope you can really find out the reason why reading is so important for you, so you can get a brand new desire to explore the world of reading.</p>
                                <p class="read-more"><a href="post" class="btn btn-primary">Continue reading</a>
                                </p>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="post">
                                <h4><a href="post">Surging popularity of E-reading</a></h4>
                                <p class="author-category">By <a href="post">Anupama Roy</a> in <a href="post">About Minimal</a>
                                </p>
                                <hr>
                                <p class="intro">For all those readers jealous of <strong>Belle's Library</strong>, e-reading is the next Best thing for you,
                        As you don't have to worry about getting a new Book Case for your new Collection,just keep them on your E-Reader. Come and see the pros listed and decide for yourself.</p>
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