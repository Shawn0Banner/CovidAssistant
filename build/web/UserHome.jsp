<%-- 
    Document   : UserHome
    Created on : 25 Jun, 2021, 9:28:53 PM
    Author     : hp
--%>

<%@page import="ca.bean.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html lang="en">

    <head>
        <script type="text/javascript">
            window.history.forward();
            function noBack()
            {
                window.history.forward();
            }
        </script>

        <!--    <body >-->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>UserHome page</title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <!--        <link href="vendor/bootstrap/css/bootstrap.min1.css" rel="stylesheet">-->

        <!-- Custom styles for this template -->
        <style>
            .navbtn {

            }
            .navbtn:after {    
                background: none repeat scroll 0 0 transparent;
                bottom: 0;
                content: "";
                display: block;
                height: 5px;
                left: 50%;
                position: absolute;
                background: #ffff00;
                transition: width 0.3s ease 0s, left 0.3s ease 0s;
                width: 0;

            }
            .navbtn:hover:after { 
                width: 100%; 
                left: 0; 
            }
            @media screen and (max-height: 300px) {
                ul {
                    margin-top: 40px;
                }
            }
        </style>

    </head>

    <body id="page-top" onLoad="noBack();" onpageshow="if (event.persisted) noBack();" onUnload="">

        <%
            User user = (User) request.getSession().getAttribute("user");
        %>

        <!-- Navigation -->
        <nav class="navbar navbar-inverse" style="background-color: #2eb82e">
            <div class="container-fluid" >
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a class="navbar-brand" href="#" style="color:white" >CovidCare</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li><a href="#" class="navbtn" style="color:white;margin-left: 800px">Home</a></li>
                        <li><a href="#" class="navbtn" style="color:white">My Orders</a></li>
                        <!-- <li><a href="#">Projects</a></li> -->
                        <li><a href="Logout" class="navbtn" style="color:white">Logout</a></li>
                    </ul>
                    <!--  <ul class="nav navbar-nav navbar-right">
                       <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                     </ul> -->
                </div>
            </div>
        </nav>
        <h3 style="color:black; text-align: center">Welcome <c:out value="${user.getUserName()}"></c:out></h3>
        <br>
        <br>

       <div class="row">
           <div class="col-lg-4" style="text-align: center"><a href="FoodMenu.jsp">Food Menu</a></div>
  <div class="col-lg-4" style="text-align: center">Medical Facilities</div>
  <div class="col-lg-4" style="text-align: center">Emergency</div>
</div>




    </body>

</html>
