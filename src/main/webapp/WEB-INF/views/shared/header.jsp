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
	<meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Obaju e-commerce template">
    <meta name="author" content="Ondrej Svestka | ondrejsvestka.cz">
    <meta name="keywords" content="">

    <title>
        Erudite-Books-Anywhere,Everywhere
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
  
   <!-- *** TOPBAR ***-->
 
    <div id="top">
        <div class="container">
            <div class="col-md-6 offer" data-animate="fadeInDown">
                <a href="#" class="btn btn-success btn-sm" data-animate-hover="shake">Offer of the day</a>  <a href="#">Get flat 35% off on orders over $50!</a>
            </div>
            <div class="col-md-6" data-animate="fadeInDown">
                <ul class="menu">
                   
                    <!-- when user logged in -->
						<c:if test="${pageContext.request.userPrincipal.name != null }">
								<li><a>Welcome:
									${pageContext.request.userPrincipal.name}</a></li>
							<li><a href="<c:url value='/Logout'/>">Logout</a></li>
						</c:if>
					<!-- when user not logged in -->
						<c:if test="${pageContext.request.userPrincipal.name == null }">
							<li><a href="<c:url value='/login'/>">Login</a></li>
							<li><a href="<c:url value='/register'/>"> Register</a></li>
      				   </c:if>
                    <li><a href="<c:url value='/contact'/>">Contact</a>
                    </li>
                    <li><a href="#">Recently viewed</a>
                    </li>
                </ul>
            </div>
        </div>
        
        <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true">
            <div class="modal-dialog modal-sm">

                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="Login">Customer login</h4>
                    </div>
                    <div class="modal-body">
                        <form action="customer-orders.jsp" method="post">
                            <div class="form-group">
                                <input type="text" class="form-control" id="email-modal" placeholder="email">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" id="password-modal" placeholder="password">
                            </div>

                            <p class="text-center">
                                <button class="btn btn-primary"><i class="fa fa-sign-in"></i> Log in</button>
                            </p>

                        </form>

                        <p class="text-center text-muted">Not registered yet?</p>
                        <p class="text-center text-muted"><a href="register.jsp"><strong>Register now</strong></a>! It is easy and done in 1&nbsp;minute and gives you access to special discounts and much more!</p>

                    </div>
                </div>
            </div>
        </div>

    </div>
   
    <!-- *** TOP BAR END *** -->

    <!-- *** NAVBAR ***
 _________________________________________________________ -->

    <div class="navbar navbar-default yamm" role="navigation" id="navbar">
        <div class="container">
            <div class="navbar-header">

                <a class="navbar-brand home" href="<c:url value='/index'/>" data-animate-hover="bounce">
                    <img src="${img}/logo.png" alt="Obaju logo" class="hidden-xs">
                    <img src="${img}/logo-small.png" alt="Obaju logo" class="visible-xs"><span class="sr-only">Erudite - go to homepage</span>
                </a>
                <div class="navbar-buttons">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <i class="fa fa-align-justify"></i>
                    </button>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#search">
                        <span class="sr-only">Toggle search</span>
                        <i class="fa fa-search"></i>
                    </button>
                    <a class="btn btn-default navbar-toggle" href="<c:url value='/cart'/>">
                        <i class="fa fa-shopping-cart"></i>  <span class="hidden-xs">Cart</span>
                    </a>
                </div>
            </div>
            <!--/.navbar-header -->

            <div class="navbar-collapse collapse" id="navigation">

                <ul class="nav navbar-nav navbar-left">
                    <li class="active"><a href="<c:url value='/index'/>">Home</a>
                    </li>
                    <li class="dropdown yamm-fw">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Books <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <div class="yamm-content">
                                    <div class="row">
                                        <div class="col-sm-2">
                                            <h5><a href="<c:url value='/listproduct'/>">Auto/Biographies</a></h5>
                                            <!-- <ul>
                                                <li><a href="category">Arts and Entertainment</a>
                                                </li>
                                                <li><a href="category">Scientists</a>
                                                </li>
                                                <li><a href="category">Women </a>
                                                </li>
                                                <li><a href="category">Religious</a>
                                                </li>
                                            </ul> -->
                                        </div>
                                        <div class="col-sm-2">
                                            <h5><a href="<c:url value='/listproduct'/>">Fiction</a></h5>
                                           <!--  <ul>
                                                <li><a href="category">Action and Adventure</a>
                                                </li>
                                                <li><a href="category">Romance</a>
                                                </li>
                                                <li><a href="category">Western</a>
                                                </li>
                                                <li><a href="category">Science Fiction</a>
                                                </li>
                                            </ul> -->
                                        </div>
                                        <div class="col-sm-2">
                                            <h5><a href="<c:url value='/listproduct'/>">Politics</a></h5>
                                            <!-- <ul>
                                                <li><a href="category">Governments</a>
                                                </li>
                                                <li><a href="category">Political Processes</a>
                                                </li>
                                                <li><a href="category">Political History</a>
                                                </li>
                                                <li><a href="category">Political Ideologies</a>
                                                </li>
                                            </ul> -->
                                        </div>
                                        <div class="col-sm-2">
                                            <h5><a href="<c:url value='/listproduct'/>">Cooking</a></h5>
                                            <!-- <ul>
                                                <li><a href="category">Courses and Dishes</a>
                                                </li>
                                                <li><a href="category">Regional and Ethic</a>
                                                </li>
                                                <li><a href="category">Health and Healing</a>
                                                </li>
                                            </ul> -->
                                            </div>
                                             <div class="col-sm-2">
                                            <h5><a href="<c:url value='/listproduct'/>">Health/Fitness</a></h5>
                                            <!-- <ul>
                                                <li><a href="category">Diets</a>
                                                </li>
                                                <li><a href="category">Diseases</a>
                                                </li>
                                                <li><a href="category">Weight Loss</a>
                                                </li>
                                            </ul> -->
                                        </div>
                                        <div class="col-sm-2">
                                            <h5><a href="<c:url value='/listproduct'/>">Satire</a></h5>
                                           <!--  <ul>
                                                <li><a href="category">Diets</a>
                                                </li>
                                                <li><a href="category">Diseases</a>
                                                </li>
                                                <li><a href="category">Weight Loss</a>
                                                </li>
                                            </ul> -->
                                        </div>
                                    </div>
                                </div>
                                <!-- /.yamm-content -->
                            </li>
                        </ul>
                    </li>

                    <li class="dropdown yamm-fw">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Admin <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <div class="yamm-content">
                                    <div class="row">
                                        <div class="col-sm-2">
                                            <h5><a href="<c:url value='/listproduct'/>">Manage Products</a></h5>
                                            
                                        </div>
                                        <div class="col-sm-2">
                                            <h5><a href="<c:url value='/listsupplier'/>">Manage Suppliers</a></h5>
                                            
                                        </div>
                                        <div class="col-sm-2">
                                            <h5><a href="<c:url value='/listcategory'/>">Manage Categories</a></h5>
                                            
                                            </div>
                                            <div class="col-sm-2">
                                            <h5><a href="<c:url value='/newproduct'/>">Add New Products</a></h5>
                                            
                                        </div>
                                        
                                        <div class="col-sm-2">
                                            <h5><a href="<c:url value='/supplier'/>">Add New Suppliers</a></h5>
                                            
                                        </div>
                                        
                                        <div class="col-sm-2">
                                            <h5><a href="<c:url value='/category1'/>">Add New Categories</a></h5>
                                            
                                        </div>
                                        <%-- <div class="col-sm-3">
                                            <div class="banner">
                                                <a href="#">
                                                    <img src="${img}/banner.jpg" class="img img-responsive" alt="">
                                                </a>
                                            </div>
                                            <div class="banner">
                                                <a href="#">
                                                    <img src="${img}/banner2.jpg" class="img img-responsive" alt="">
                                                </a>
                                            </div>
                                        </div> --%>
                                    </div>
                                </div>
                                <!-- /.yamm-content -->
                            </li>
                        </ul>
                    </li>

                    <li class="dropdown yamm-fw">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Recommendations <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <div class="yamm-content">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h5>Shop</h5>
                                            <ul>
                                                <li><a href="index">Homepage</a>
                                                </li>
                                                <li><a href="category">Category - sidebar left</a>
                                                </li>
                                                <li><a href="category-right">Category - sidebar right</a>
                                                </li>
                                                <li><a href="category-full">Category - full width</a>
                                                </li>
                                                <li><a href="detail">Product detail</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-3">
                                            <h5>User</h5>
                                            <ul>
                                                <li><a href="register">Register / login</a>
                                                </li>
                                                <li><a href="customer-orders">Orders history</a>
                                                </li>
                                                <li><a href="customer-order">Order history detail</a>
                                                </li>
                                                <li><a href="customer-wishlist">Wishlist</a>
                                                </li>
                                                <li><a href="customer-account">Customer account / change password</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-3">
                                            <h5>Order process</h5>
                                            <ul>
                                                <li><a href="basket">Shopping cart</a>
                                                </li>
                                                <li><a href="checkout1">Checkout - step 1</a>
                                                </li>
                                                <li><a href="checkout2">Checkout - step 2</a>
                                                </li>
                                                <li><a href="checkout3">Checkout - step 3</a>
                                                </li>
                                                <li><a href="checkout4">Checkout - step 4</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-3">
                                            <h5>Pages and blog</h5>
                                            <ul>
                                                <li><a href="blog">Blog listing</a>
                                                </li>
                                                <li><a href="post">Blog Post</a>
                                                </li>
                                                <li><a href="faq">FAQ</a>
                                                </li>
                                                <li><a href="text">Text page</a>
                                                </li>
                                                <li><a href="text-right">Text page - right sidebar</a>
                                                </li>
                                                <li><a href="404">404 page</a>
                                                </li>
                                                <li><a href="contact">Contact</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.yamm-content -->
                            </li>
                        </ul>
                    </li>
                </ul>

            </div>
            <!--/.nav-collapse -->

            <div class="navbar-buttons">

                <div class="navbar-collapse collapse right" id="basket-overview">
                    <a href="<c:url value='/cart/getCart_id'/>" class="btn btn-primary navbar-btn"><i class="fa fa-shopping-cart"></i><span class="hidden-sm"> Cart</span></a>
                </div>
                <!--/.nav-collapse -->

                <div class="navbar-collapse collapse right" id="search-not-mobile">
                    <button type="button" class="btn navbar-btn btn-primary" data-toggle="collapse" data-target="#search">
                        <span class="sr-only">Toggle search</span>
                        <i class="fa fa-search"></i>
                    </button>
                </div>

            </div>

            <div class="collapse clearfix" id="search">

                <form class="navbar-form" role="search">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search">
                        <span class="input-group-btn">

			<button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>

		    </span>
                    </div>
                </form>

            </div>
            <!--/.nav-collapse -->

        </div>
        <!-- /.container -->
    </div>
    <!-- /#navbar -->

    <!-- *** NAVBAR END *** -->
<script src="${js}/angular.min.js"></script>
</body>
</html>