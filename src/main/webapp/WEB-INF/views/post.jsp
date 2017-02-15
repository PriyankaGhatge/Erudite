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
                        <li><a href="blog">Blog</a>
                        </li>
                        <li>Blog post</li>
                    </ul>
                </div>

                <div class="col-sm-9" id="blog-post">


                    <div class="box">

                        <h1>Importance Of Reading</h1>
                        <p class="author-date">By <a href="#">JJ Wong</a> | June 20, 2013</p>
                        <p class="lead">Everyone knows that reading is important, but have you ever asked yourself why that is so? In this post, I will list out 8 reasons why reading is important. 
                        I hope you can really find out the reason why reading is so important for you, so you can get a brand new desire to explore the world of reading.</</p>

                        <div id="post-content">
                            <p><strong>Reading is a starting step of many things</strong>, which build a more solid stairs for you to climb up achieving something big out there.
                            The art of reading is in great part that of acquiring a better understanding of life from one’s encounter with it in a book.
                            Books are the quietest and most constant of friends; they are the most accessible and wisest of counselors, and the most patient of teachers. </p>

                            <p>
                                <img src="${img}/blog2.jpg" class="img-responsive" alt="Example blog post alt">
                            </p>

                            <h2>Why Read ?</h2>

                            <ol>
                                <li>Expose Yourself to New Things.</li>
                                <li>Self Improvement</li>
                                <li>Improve understanding</li>
                                <li>Preparation to Action</li>
                                <li>Gain Experience from Other People</li>
                                <li>Tools of Communicating</li>
                                <li>Connecting Your Brain</li>
                                <li>Boost Imagination and Creativity</li>
                                
                            </ol>

                            <blockquote>
                                <p>Through reading, you expose yourself to new things, new information, new ways to solve a problem, and new ways to achieve one thing. 
                                Who knows – you might find your new hobbies within it..</p>
                            </blockquote>

                            <h1>Surging popularity of E-reading</h1>

                            <p>Books have finally made their way to the digital age. The introduction of e-books has completely transformed the way that people read and publish books. An e-book is an electronic version of a book, typically read on an e-reader. 
                            If you are writing a book, plan to hire a ghostwriter or are considering self-publishing, it is important to decide if you will make your book available in electronic format.</p>

							<h2>Pros of E-Reading</h2>

                            <ul>
                                <li>Easily Readable</li>
                                <li>Cost Effective</li>
                                <li>They Double as Audiobooks</li>
                                <li>Mobility</li>
                                <li>Environmentally Friendly</li>
                            </ul>

                            <p>
                                <img src="${img}/blog.jpg" class="img-responsive" alt="Example blog post alt">
                            </p>

                            <p>Easily Readable - Because e-books are read using a computer or e-reader, their format is more fluid than that of traditional books. Readers can alter the size of the font or zoom in on specific sections. This makes the format ideal for young children and people who have trouble seeing.
                             In addition, readers don’t have to worry about the lighting conditions.E-readers provide a lit background so that books can be enjoyed easily no matter where you are.
                             Mobility - Readers who opt for the e-book format can easily carry hundreds of books with them. This is ideal for people who travel often. Rather than picking just one book to bring along, readers can choose from a variety of e-books.
                             Environmentally Friendly - The introduction of e-books has drastically reduced the number of pages that are actually being printed. E-books are environmentally friendly because they do not require any paper or ink. 
                             If you’re an eco-conscious reader, you can still have an extensive library and not feel guilty about it. </p>

                        </div>
                        <!-- /#post-content -->

                        <div id="comments" data-animate="fadeInUp">
                            <h4>2 comments</h4>


                            <div class="row comment">
                                <div class="col-sm-3 col-md-2 text-center-xs">
                                    <p>
                                        <img src="${img}/blog-avatar2.jpg" class="img-responsive img-circle" alt="">
                                    </p>
                                </div>
                                <div class="col-sm-9 col-md-10">
                                    <h5>Julie Alma</h5>
                                    <p class="posted"><i class="fa fa-clock-o"></i> September 23, 2011 at 12:00 am</p>
                                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper.
                                        Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                                    <p class="reply"><a href="#"><i class="fa fa-reply"></i> Reply</a>
                                    </p>
                                </div>
                            </div>
                            <!-- /.comment -->


                            <div class="row comment last">

                                <div class="col-sm-3 col-md-2 text-center-xs">
                                    <p>
                                        <img src="${img}/blog-avatar.jpg" class="img-responsive img-circle" alt="">
                                    </p>
                                </div>

                                <div class="col-sm-9 col-md-10">
                                    <h5>Louise Armero</h5>
                                    <p class="posted"><i class="fa fa-clock-o"></i> September 23, 2012 at 12:00 am</p>
                                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper.
                                        Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                                    <p class="reply"><a href="#"><i class="fa fa-reply"></i> Reply</a>
                                    </p>
                                </div>

                            </div>
                            <!-- /.comment -->

                        </div>
                        <!-- /#comments -->

                        <div id="comment-form" data-animate="fadeInUp">

                            <h4>Leave comment</h4>

                            <form>
                                <div class="row">

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="name">Name <span class="required">*</span>
                                            </label>
                                            <input type="text" class="form-control" id="name">
                                        </div>
                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="email">Email <span class="required">*</span>
                                            </label>
                                            <input type="text" class="form-control" id="email">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label for="comment">Comment <span class="required">*</span>
                                            </label>
                                            <textarea class="form-control" id="comment" rows="4"></textarea>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12 text-right">
                                        <button class="btn btn-primary"><i class="fa fa-comment-o"></i> Post comment</button>
                                    </div>
                                </div>


                            </form>

                        </div>
                        <!-- /#comment-form -->

                    </div>
                    <!-- /.box -->
                </div>
                <!-- /#blog-post -->

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