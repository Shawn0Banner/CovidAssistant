<%-- 
    Document   : FoodMenu
    Created on : 28 Jun, 2021, 2:25:41 PM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="ca.utilities.ConnectionProviderToDB"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.InputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>CovidAssistant Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <!-- font awesome -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

   <!-- custom css -->

   <style>
    body{
        position: relative;
    }
    .carousel-item {
  height: auto;
  width: 100%;
  min-height: 300px;
  background: no-repeat center center scroll;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
 
}
.carousel-caption {
  bottom: 270px;
}

.carousel-caption h5 {
  font-size: 45px;
  
  letter-spacing: 2px;
  margin-top: 25px;
}

    .navbar-light .navbar-brand {
  color: #fff;
  font-size: 25px;
  
  font-weight: bold;
  letter-spacing: 2px;
}

.navbar-light .navbar-nav .active > .nav-link, .navbar-light .navbar-nav .nav-link.active, .navbar-light .navbar-nav .nav-link.show, .navbar-light .navbar-nav .show > .nav-link {
  color: #fff;
}

.navbar-light .navbar-nav .nav-link {
  color: #fff;
}

.navbar-toggler {
  background: #fff;
}

.navbar-nav {
  text-align: center;
}

.nav-link {
  padding: .2rem 1rem;
}

.nav-link.active,.nav-link:focus{
  color: #fff;
}

.navbar-toggler {
  padding: 1px 5px;
  font-size: 18px;
  line-height: 0.3;
}

.navbar-light .navbar-nav .nav-link:focus, .navbar-light .navbar-nav .nav-link:hover {
  color: #fff;
}






/* ignore the code below */


.link-area
{
  position:fixed;
  bottom:20px;
  left:20px;  
  padding:15px;
  border-radius:40px;
  background:tomato;
}
.link-area a
{
  text-decoration:none;
  color:#fff;
  font-size:25px;
}

    
    section{
  padding:2rem 9%;
}

.heading{
  text-align: center;
  font-size: 3.5rem;
  padding:1rem;
  color:#666;
}

.heading span{
  color:var(--red);
}


.btn{
  display: inline-block;
  padding:1px 1px;
  width: 30px;
  height: 30px;
  border:.1rem solid var(--red);
  color: var(--red);
  cursor: pointer;
  font-size: 1.5rem;
  border-radius: 6px;
  position: relative;
  overflow: hidden;
  z-index: 0;
 
 
}

.btn::before{
  content: '';
  position: absolute;
  top:0; right: 0;
  width:0%;
  height:100%;
  background c:var(--red);
  transition: .3s linear;
  z-index: -1;
}

.btn:hover::before{
  width:100%;
  left: 0;
}

.btn:hover{
  color:#fff;
}

a.btn {
 
  font-weight: bold;
  display: block;
  text-align: center;
  font-size: 1rem;



}

.input {
  margin-top:auto;
  border-radius: 6px;
  text-align: center;
  border:.1rem solid var(--red);
 color : var(--red);
 font-weight: bold;

}

.box-container1
{
  margin-top: 5px;
  justify-content: center;
   display: flex;
  flex-wrap: wrap;
  gap:2px;
}




.menu .box-container{
  display: flex;
  flex-wrap: wrap;
  gap:2rem;
}

.menu .box-container .box{
  padding:2rem;
  background:#fff;
  box-shadow: 0 .5rem 1rem rgba(0,0,0,.1);
  border:.1rem solid rgba(0,0,0,.3);
  border-radius: .5rem;
  text-align: center;
  flex:1 1 20rem;
  position: relative;
}

.menu .box-container .box img{
  height:25rem;
  object-fit: cover;
  width:100%;
  border-radius: .5rem;
}

.menu .box-container .box .price{
  position: absolute;
  top:3rem; left:3rem;
  background:var(--red);
  color:#fff;
  font-size: 1rem;
  padding:.3rem 1rem;
  border-radius: .5rem;
}

.menu .box-container .box h5{
  color:#333;
  font-size: 2.5rem;
  padding-top: 1rem;
}

.menu .box-container .box .stars i{
  color:gold;
  font-size: 1rem;
  padding:.2rem .1rem;
}
    </style>
  </head>
<body>

<nav class="navbar navbar-expand-lg navbar-light fixed-top" style="background-color: #2eb82e">
  <div class="container">
    <a class="navbar-brand" href="#">CovidCare</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  
   
   
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">CheckOut</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="#">Contact</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
    
    <div  id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active ">
       <img src="https://source.unsplash.com/1600x300/?restaurent,salad" alt="Image" style="">
<!--      <div class="carousel-caption d-none d-md-block">
        <h5>Food Made With Love</h5>
       
      </div>-->
    </div>
    <div class="carousel-item">
      <img src="https://source.unsplash.com/1600x300/?restaurent,Cooking" alt="Image">
<!--      <div class="carousel-caption d-none d-md-block">
        <h5>Food Made With Love</h5>
      </div>-->
    </div>
    <div class="carousel-item">
    <img src="https://source.unsplash.com/1600x300/?restaurent,food" alt="Image">
<!--      <div class="carousel-caption d-none d-md-block">
        <h5>Food Made With Love</h5>
      </div>-->
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

    
    <section class="menu" id="menu">
    <h3 class="heading"><span>Food Menu</span></h3>
    <div class="box-container">

        <%                InputStream inputFile = getServletContext().getResourceAsStream("/WEB-INF/db_params.properties");
                        System.out.println(inputFile);

                        Connection con = null;

                        con = ConnectionProviderToDB.getConnectionObject().getConnection(inputFile);

                        PreparedStatement ps1 = con.prepareStatement("SELECT foodId, foodName, price, status, imgLink FROM foodmenu WHERE status='Available'");
                        ResultSet rs = ps1.executeQuery();

                        while (rs.next()) {
                    %>
        <div class="box">
          <span class="price">RS. <%= rs.getDouble("price")%></span>
          <img src="<%= rs.getString("imgLink")%>">
           <h4><%= rs.getString("foodName")%></h4>
           <div class="stars">
            <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                  </div>
             
          <div class="box-container1" >     
          <a href="#" class="btn qty-minus">-</a>
            <input type="numeric" value="Add" class="input"  maxlength="3" size="4"  />
          <a href="#" class="btn qty-plus">+</a>
        </div>

      </div>
        
           <%}

                        //System.out.println("</table>");  
                        //System.out.println("</html></body>");  
                        con.close();
                    %>

           
           
        </div>


  </section>




   <!-- javascripts -->
      <script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>


<script>
    $('a.qty-minus').on('click', function(e) {
    e.preventDefault();
    var $this = $(this);
    var $input = $this.closest('div').find('input');
    var value = parseInt($input.val());
    
    if (value > 1) {
      value = value - 1;
    } else {
      value = "Add" ;
    }
    
    $input.val(value);
        
  });

  $('a.qty-plus').on('click', function(e) {
    e.preventDefault();
    var $this = $(this);
    var $input = $this.closest('div').find('input');
    var value = parseInt($input.val());

    if (value < 100) {
    value = value + 1;
    } else {
      value =1;
    }

    $input.val(value);
  });

</script>

  </body>
  </html>