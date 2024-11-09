<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Dream Bag| About </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />

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
                        <a href="register.jsp" class="btn"><span class="fa fa-pencil-square-o"></span> Sign Up</a>
                    </div>
                </div>
                <div class="nav-top-wthree">
                    <nav>
                        <label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
                        <input type="checkbox" id="drop" />
                        <ul class="menu">
                            <li class="active"><a href="index.html">Home</a></li>
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
       
<body>
  <div class="container">
    <h1 class="mt-4 mb-4">Cart</h1>
    
    <div class="row">
      <div class="col-md-8">
        <!-- Cart Item 1 -->
        <div class="card mb-3">
          <div class="row no-gutters">
            <div class="col-md-4">
              <img src="bag1.jpg" class="card-img" alt="Bag 1">
            </div>
            <div class="col-md-8">
              <div class="card-body">
                <h5 class="card-title">Bag 1</h5>
                <p class="card-text">Price: Rs.1800.00</p>
                <p class="card-text">Quantity: </p>
              </div>
            </div>
          </div>
        </div>
        <!-- Cart Item 2 -->
        <div class="card mb-3">
          <div class="row no-gutters">
            <div class="col-md-4">
             
            
            <div class="col-md-8">
              <div class="card-body">
                
            </div>
          </div>
        </div>
      </div>
      <!-- Cart Summary -->
      <div class="col-md-4">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Cart Summary</h5>
            <ul class="list-group">
              <!-- Cart Total -->
              <li class="list-group-item d-flex justify-content-between align-items-center">
                Total Price
                <span class="badge badge-primary badge-pill">$180.00</span>
              </li>
            </ul>
            <!-- Checkout Button -->
            <button type="button" class="btn btn-primary btn-block mt-3"><a href="placeorder.html" style="color: aliceblue;"> Checkout </a></button>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
  <div class="footer_agileinfo_topf py-5" style="background-color: white;width: 240%; padding: 0%;">
                                <div class="container py-md-5" style="width:200%; padding: 0%;">
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
                        </div>
                            <div class="cpy-right text-center py-3">
                                <p>© 2024 Dream Bag by ARUS. All rights reserved | Design by ARUS 
                                </p>
                        
                            </div>
                
    </body>
    </html>