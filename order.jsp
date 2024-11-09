
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.amstech.dream.bags.dto.OrderDetailItemDTO" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Dream Bag| Order </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <script>
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <link rel="stylesheet" href="bootstrap.css">
    <link rel="stylesheet" href="style.css" type="text/css" media="all" />
    <link href="font-awesome.css" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">
    <div class="main-sec">
        <header class="py-sm-3 pt-3 pb-2" id="home">
            <div class="container">
                <div class="top-w3pvt d-flex">
                    <div id="logo">
                        <h1> <a href="index.html"><span class="log-w3pvt">D</span>ream Bag</a> <label class="sub-des">Online Store</label></h1>
                    </div>

                    <div class="forms ml-auto">
                        <a href="cart.html" class="btn"><span class="fa fa-cart"></span> Cart </a>
                        <a href="login.html" class="btn"><span class="fa fa-user-circle-o"></span> Login </a>
                        <a href="register.html" class="btn"><span class="fa fa-pencil-square-o"></span> Sign Up</a>
                    </div>
                </div>
                <div class="nav-top-wthree">
                    <nav>
                        <label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
                        <input type="checkbox" id="drop" />
                        <ul class="menu">
                            <li class="active"><a href="index.html">Home</a></li>
                            <li><a href="about.html">About Us</a></li>
                            <li>
                                <label for="drop-2" class="toggle">Dropdown <span class="fa fa-angle-down" aria-hidden="true"></span>
                                </label>
                                <a href="#">Dropdown <span class="fa fa-angle-down" aria-hidden="true"></span></a>
                                <input type="checkbox" id="drop-2" />
                                <ul>
                                    <li><a href="coming.html" class="drop-text">Services</a></li>
                                    <li><a href="about.html" class="drop-text">Features</a></li>
                                    <li><a href="single.html" class="drop-text">Single Page</a></li>

                                </ul>
                            </li>

                            <li><a href="shop.html">Collections</a></li>
                            <li><a href="contact.html">Contact</a></li>
                        </ul>
                    </nav>
                    <div class="search-form ml-auto">
                        <div class="form-w3layouts-grid">
                            <form action="itemdetail.html" method="post" class="newsletter">
                                <input class="search" type="search" placeholder="Search here..." required="">
                                <button class="form-control btn" value=""><span class="fa fa-search"></span></button>
                            </form>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </header>
       
</head>
<body>
  <div class="container" style="padding-top: 2cm;">
    <div class="row">
     
     <div class="col-md-6"  ><img src="images/purple bag.jpg" class="img-fluid" alt="">
     </div>
     
      <div class="col-md-6">
        <div class="card">
         <% if (request.getAttribute("orderDTOEdit") != null) { 
                	 OrderDetailItemDTO orderDetailItem = (OrderDetailItemDTO) request.getAttribute("orderDTOEdit"); 
    %>
                <div class="card-body" style="height: 540px;">
                    <h5 class="card-title text-center lead">Order Summary</h5>
                    <!-- Display order summary details here -->
                   
                    <p class="card-text mt-4"><h5 style="color: black">Bag Name: <%= orderDetailItem.getBagName() %></h4></p>
                    <p class="card-text mt-4"><h5 style="color: black">Price: <%= orderDetailItem.getPrice() %></h4></p>
                    <p class="card-text mt-4"><h5 style="color: black">Quantity: <%= orderDetailItem.getItemQuantity() %></h4></p>
                    <p class="card-text mt-4"><h5 style="color: black">Total: <%= orderDetailItem.getTotalCost() %></h5></p>
                    
                        <form action="shipping" method="get">
          <input type="hidden" name="task" value="findById">
          <input type="hidden" name="shipping_order_detail_item_id" value="<%=orderDetailItem.getOrderDetailItemId()%>">
         <p style="text-align: center"><button class="text-blue buy11 buy111 mt-5 text-white text-center" type="submit" style="background-color: green;border-radius: 20px;padding: 4px 20px 4px 20px;border:2px solid;text-align: center;font-size: 20px;">Continue</button></p></form>
                     <hr> </div>
                <% 
                } else { 
                %>
                <h1>No Order Detail Found</h1>
                <% 
                } 
                %>
            </div>
        </div>
    </div>


  
  <div class="footer_agileinfo_topf py-5 mt-5" style="background-color: aliceblue;">
    <div class="container py-md-5">
        <div class="row">
            <div class="col-lg-3 footer_wthree_gridf mt-lg-5">
                <h2><a href="index.html"><span class="log-w3pvt">D</span>ream Bag
                    </a> </h2>
                <label class="sub-des2">Online Store</label>
            </div>
            <div class="col-lg-3 footer_wthree_gridf mt-md-0 mt-4">
                <ul class="footer_wthree_gridf_list">
                    <li>
                        <a href="index.html"><span class="fa fa-angle-right" aria-hidden="true"></span> Home</a>
                    </li>
                    <li>
                        <a href="about.html"><span class="fa fa-angle-right" aria-hidden="true"></span> About</a>
                    </li>
                    <li>
                        <a href="shop.html"><span class="fa fa-angle-right" aria-hidden="true"></span> Shop</a>
                    </li>
                    <li>
                        <a href="shop.html"><span class="fa fa-angle-right" aria-hidden="true"></span>Collections</a>
                    </li>

                </ul>
            </div>
            <div class="col-lg-3 footer_wthree_gridf mt-md-0 mt-sm-4 mt-3">
                <ul class="footer_wthree_gridf_list">
                    <li>
                        <a href="single.html"><span class="fa fa-angle-right" aria-hidden="true"></span> Extra Page</a>
                    </li>

                    <li>
                        <a href="#"><span class="fa fa-angle-right" aria-hidden="true"></span> Terms & Conditions</a>
                    </li>
                    <li>
                        <a href="single.html"><span class="fa fa-angle-right" aria-hidden="true"></span> Shop Single</a>
                    </li>
                    <li>
                        <a href="contact.html"><span class="fa fa-angle-right" aria-hidden="true"></span> Contact Us</a>
                    </li>
                </ul>
            </div>

            <div class="col-lg-3 footer_wthree_gridf mt-md-0 mt-sm-4 mt-3">
                <ul class="footer_wthree_gridf_list">
                    <li>
                        <a href="login.html"><span class="fa fa-angle-right" aria-hidden="true"></span> Login </a>
                    </li>

                    <li>
                        <a href="register.html"><span class="fa fa-angle-right" aria-hidden="true"></span>Register</a>
                    </li>
                    <li>
                        <a href="#"><span class="fa fa-angle-right" aria-hidden="true"></span>Privacy & Policy</a>
                    </li>

                </ul>
            </div>
        </div>

        <div class="w3ls-fsocial-grid">
            <h3 class="sub-w3ls-headf">Follow Us</h3>
            <div class="social-ficons">
                <ul>
                    <li><a href="#"><span class="fa fa-facebook"></span> Facebook</a></li>
                    <li><a href="#"><span class="fa fa-twitter"></span> Twitter</a></li>
                    <li><a href="#"><span class="fa fa-google"></span>Google</a></li>
                </ul>
            </div>
        </div>
        <div class="move-top text-center mt-lg-4 mt-3">
             <a href="#home"><span class="fa fa-angle-double-up" aria-hidden="true"></span></a>
        </div>
    </div>
</div>

<div class="cpy-right text-center py-3">
    <p>© 2024 Dream Bag by ARUS. All rights reserved | Design by ARUS 
    </p>

</div>
  <!-- Bootstrap JS and dependencies -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <!-- Custom JavaScript -->
  <script>
    // Add your custom JavaScript code here
  </script>
</body>
</html>
