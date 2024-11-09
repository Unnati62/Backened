<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.amstech.dream.bags.dto.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Dream Bag| About </title>
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
                        <h1> <a href="home.jsp"><span class="log-w3pvt">D</span>ream Bag</a> <label class="sub-des">Online Store</label></h1>
                    </div>

                    <div class="forms ml-auto">
                        <a href="cart.jsp" class="btn"><span class="fa fa-cart"></span> Cart </a>
                        <a href="login.jsp" class="btn"><span class="fa fa-user-circle-o"></span> Login </a>
                        <a href="signup.jsp" class="btn"><span class="fa fa-pencil-square-o"></span> Sign Up</a>
                    </div>
                </div>
                <div class="nav-top-wthree">
                    <nav>
                        <label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
                        <input type="checkbox" id="drop" />
                        <ul class="menu">
                            <li class="active"><a href="home.jsp">Home</a></li>
                            <li><a href="about.jsp">About Us</a></li>
                            <li>
                                <label for="drop-2" class="toggle">Dropdown <span class="fa fa-angle-down" aria-hidden="true"></span>
                                </label>
                                <a href="#">Dropdown <span class="fa fa-angle-down" aria-hidden="true"></span></a>
                                <input type="checkbox" id="drop-2" />
                                <ul>
                                    <li><a href="coming.jsp" class="drop-text">Services</a></li>
                                    <li><a href="about.jsp" class="drop-text">Features</a></li>
                                    <li><a href="single.jsp" class="drop-text">Single Page</a></li>

                                </ul>
                            </li>

                            <li><a href="shop.jsp">Collections</a></li>
                            <li><a href="contact.jsp">Contact</a></li>
                        </ul>
                    </nav>
                    <div class="search-form ml-auto">
                        <div class="form-w3layouts-grid">
                            <form action="" method="" class="newsletter">
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
  <div class="container">
    <h1 class="mt-4 mb-4">Shipping</h1>
    <div class="row">
      <% if (request.getAttribute("shippingDTOEdit") != null) { 
      ShippingDTO shippingDTO = (ShippingDTO) request.getAttribute("shippingDTOEdit"); 
    %>
      <div class="col-md-8">
        <!-- Order Form -->
        <form>
          <!-- Customer Information -->
          <div class="form-group">
            <label for="fullName">Full Name</label>
            <input type="text" class="form-control" id="fullName" placeholder=<%=shippingDTO.getFirstName()%>  <%=shippingDTO.getLastName() %>>
          </div>
          <div class="form-group">
            <label for="email">Email Address</label>
            <input type="email" class="form-control" id="email" placeholder=<%=shippingDTO.getEmail() %>>
          </div>
          <div class="form-group">
            <label for="mobileNumber">Mobile Number </label>
            <input type="mobileNumber" class="form-control" id="mobileNumber" placeholder=<%=shippingDTO.getMobileNumber() %>>
          </div>
          <!-- Shipping Address -->
          <h4 class="mt-4 mb-3">Shipping Address</h4>
          <div class="form-group">
            <label for="address">Address</label>
            <input type="text" class="form-control" id="address" placeholder=<%=shippingDTO.getDelieveryaddress() %>>
          </div>
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="city">City</label>
              <input type="text" class="form-control" id="city" placeholder="Enter your city" value="Indore">
             </div>
           
          </div>
          <!-- Payment Information -->
         <div>
           
          </div>
          <!-- Place Order Button -->
          <button type="submit" class="btn btn-primary"><a href="payment.jsp" style="color: aliceblue;"> Pay </a></button>

        </form>
      </div>
      <!-- Order Summary -->
      <div class="col-md-4">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Shipping Summary</h5>
            <!-- Display order summary details here -->
            <img src="images/purple bag.jpg" class="img-fluid" alt="">
            <p class="card-text">Bag Name: <%=shippingDTO.getBagName()%></p>
            <p class="card-text">Price:<%=shippingDTO.getBagPrice()%></p>
            <p class="card-text">Quantity: <%=shippingDTO.getItemQuantity()%></p>
            <p class="card-text">Total Cost: <%=shippingDTO.getTotalCost()%></p>
          </div>
        </div>
      </div>
    </div>
  </div>
    <%
		}else { %>
	    <h1>No Order Detail Found</h1>
	    <% } %>
  <div class="footer_agileinfo_topf py-5" style="background-color: aliceblue;">
    <div class="container py-md-5">
        <div class="row">
            <div class="col-lg-3 footer_wthree_gridf mt-lg-5">
                <h2><a href="home.jsp"><span class="log-w3pvt">D</span>ream Bag
                    </a> </h2>
                <label class="sub-des2">Online Store</label>
            </div>
            <div class="col-lg-3 footer_wthree_gridf mt-md-0 mt-4">
                <ul class="footer_wthree_gridf_list">
                    <li>
                        <a href="home.jsp"><span class="fa fa-angle-right" aria-hidden="true"></span> Home</a>
                    </li>
                    <li>
                        <a href="about.jsp"><span class="fa fa-angle-right" aria-hidden="true"></span> About</a>
                    </li>
                    <li>
                        <a href="shop.jsp"><span class="fa fa-angle-right" aria-hidden="true"></span> Shop</a>
                    </li>
                    <li>
                        <a href="shop.jsp"><span class="fa fa-angle-right" aria-hidden="true"></span>Collections</a>
                    </li>

                </ul>
            </div>
            <div class="col-lg-3 footer_wthree_gridf mt-md-0 mt-sm-4 mt-3">
                <ul class="footer_wthree_gridf_list">
                    <li>
                        <a href="single.jsp"><span class="fa fa-angle-right" aria-hidden="true"></span> Extra Page</a>
                    </li>

                    <li>
                        <a href="#"><span class="fa fa-angle-right" aria-hidden="true"></span> Terms & Conditions</a>
                    </li>
                    <li>
                        <a href="single.jsp"><span class="fa fa-angle-right" aria-hidden="true"></span> Shop Single</a>
                    </li>
                    <li>
                        <a href="contact.jsp"><span class="fa fa-angle-right" aria-hidden="true"></span> Contact Us</a>
                    </li>
                </ul>
            </div>

            <div class="col-lg-3 footer_wthree_gridf mt-md-0 mt-sm-4 mt-3">
                <ul class="footer_wthree_gridf_list">
                    <li>
                        <a href="login.jsp"><span class="fa fa-angle-right" aria-hidden="true"></span> Login </a>
                    </li>

                    <li>
                        <a href="signup.jsp"><span class="fa fa-angle-right" aria-hidden="true"></span>Register</a>
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
             <a href="home.jsp"><span class="fa fa-angle-double-up" aria-hidden="true"></span></a>
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
