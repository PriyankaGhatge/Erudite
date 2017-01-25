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
<body align = "center">
   
    <%@ include file = "shared/header.jsp" %>
   
    <div id="all">

        <div id="content">
            <div class="container">

                <div class="col-md-12">

                    <ul class="breadcrumb">
                        <li><a href="#">Home</a>
                        </li>
                        <li><a href="#">New account / Sign in</a></li>
                    </ul>

                </div>

                <div class="col-md-6">
                    <div class="box">
                        <h1>Supplier</h1>

                        <p class="lead">Need to do some changes ?</p>
                        <p>With ADMIN rights you can make necessary changes to our Suppliers</p>
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
