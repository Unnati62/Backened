<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.amstech.dream.bags.dto.*" %>
     <%@ page import= "com.amstech.dream.bags.dto.BagDTO" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Dream Bag</title>
    
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

</head>

<body>
    <div class="main-sec">
        <header class="py-sm-3 pt-3 pb-2" id="home">
            <div class="container">
              <% 
                    if (request.getAttribute("activeBagDTO") != null) {
                        BagDTO activeBagDTO = (BagDTO) request.getAttribute("activeBagDTO");
                        if (activeBagDTO!= null) { 
                    %>
                    <h1>Welcome <%= activeBagDTO.getBag_name()%></h1>
                    <% 
                        } 
                    } 
                    %>
                <div class="top-w3pvt d-flex">
                    <div id="logo">
                        <h1> <a href="home.jsp"><span class="log-w3pvt">D</span>ream Bag</a> <label class="sub-des">Online Store</label></h1>
                    </div>

                    <div class="forms ml-auto">
                        <a href="login.jsp" class="btn"><span class="fa fa-user-circle-o"></span> Login</a>
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
                            <form action="bag" method="get" class="newsletter">
                                <input class="search" type="text" name="name" placeholder="Search here..." required="required">
                                <input type="hidden" name="task" value="findByName">
                                <button class="form-control btn" type="submit"><span class="fa fa-search"></span></button>
                            </form>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </header>

        <div class="banner-wthree-info container">
            <div class="row">
                <div class="col-lg-5 banner-left-info">
                    <h3>The Largest Range <span>of HandBags</span></h3>
                    <a href="shop.jsp" class="btn shop">Shop Now</a>
                </div>

                <div class="col-lg-7 banner-img">
                    <img src="images/bag.png" alt="part image" class="img-fluid">
                </div>
            </div>
        </div>
    </div>

    <section class="banner-bottom py-5">
        <div class="container py-md-3">
            <div class="row grids-wthree-info text-center">
                <div class="col-lg-4 ab-content">
                    <div class="ab-info-con">
                        <h4>Fast & Free Delivery</h4>
                        <p>Get ready to unwrap your happiness! Enjoy lightning-fast, free delivery on all orders. Shop now and experience the thrill of swift doorstep surprises</p>
                    </div>
                </div>
                <div class="col-lg-4 ab-content">
                    <div class="ab-info-con">
                        <h4>Safe & Secure Payments</h4>
                        <p>Shop with confidence! Our platform ensures safe and secure payments every time. Your peace of mind is our top priority as you explore and purchase your favorite products.</p>
                    </div>
                </div>
                <div class="col-lg-4 ab-content">
                    <div class="ab-info-con">
                        <h4>100% Money Back Guarantee</h4>
                        <p>Shop worry-free with our 100% Money Back Guarantee! Your satisfaction is our promise. If you're not completely delighted with your purchase, we'll refund your money no questions asked. It's shopping made risk-free.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

     <section class="collections">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8 ab-content-img">
                   
           <img src="images/banner1.jpg" class="img-fluid" alt="" />
                </div>
                <div class="col-md-4 ab-content text-center p-lg-5 p-3 my-lg-5">
                    <h4>Travel Must Haves</h4>
                    <p>Travel Must-Haves: Explore the world prepared with our curated essentials. From compact adapters to versatile backpacks, our collection ensures convenience and comfort on every journey. Shop now and embark on your adventures equipped with the best travel companions.</p>
                    <a href="shop.html" class="btn shop mt-3">Shop Now</a>

                </div>
            </div>
        </div>
    </section>
    
    <section class="banner-bottom py-5">
        <div class="container py-md-5">

            <h3 class="title-wthree mb-lg-5 mb-4 text-center">Safety Meets Style </h3>
            <div class="row text-center">

                <div class="col-md-4 content-gd-wthree">
                    <img src="images/c1.jpg" class="img-fluid" alt="" />
                </div>
                <div class="col-md-4 content-gd-wthree ab-content py-lg-5 my-lg-5">
                    <h4>Need Extra Space ?</h4>
                    <p>Maximize your storage with our innovative solutions. From expandable luggage to collapsible organizers, our products help you pack smarter and travel lighter. Say goodbye to clutter and hello to hassle-free journeys! Explore now.</p>
                    <a href="shop.html" class="btn shop mt-3">Shop Now</a>

                </div>
                <div class="col-md-4 content-gd-wthree">
                    <img src="images/c2.jpg" class="img-fluid" alt="" />
                </div>
            </div>

        </div>
    </section>
   
    <section class="mid-section">
        <div class="d-lg-flex p-0">
            <div class="col-lg-6 bottom-w3pvt-left p-lg-0">
                <img src="images/ab1.jpg" class="img-fluid" alt="" />
                <div class="pos-wthree">
                    <h4 class="text-wthree">50% Off Any <br> Women's Bags</h4>
                    <a href="shop.html" class="btn shop mt-3">Shop Now</a>
                </div>
            </div>
            <div class="col-lg-6 bottom-w3pvt-left bottom-w3pvt-right p-lg-0">
                <img src="images/ab2.jpg" class="img-fluid" alt="" />
                <div class="pos-w3pvt">
                    <h4 class="text-w3pvt">30% Off Any <br> Men's Bags</h4>
                    <a href="shop.html" class="btn shop mt-3">Shop Now</a>
                </div>
            </div>
        </div>
    </section>
    
    <section class="banner-bottom py-5">
        <div class="container py-md-5">

            <div class="row">
                <div class="col-lg-4 gallery-content-info text-center mt-lg-5">
                    <h3 class="title-wthree mb-lg-5 mb-4">Trending Now </h3>
                    <p>Trending Now: Stay ahead of the curve with our latest arrivals. From stylish accessories to tech-savvy gadgets, discover what's hot and elevate your lifestyle. Don't miss out on the must-have items everyone's talking about. Shop the trends today.</p>
                    <a href="shop.html" class="btn shop mt-3">Shop Now</a>

                </div>
                <div class="col-lg-8 gallery-content">
                    <div class="row">
                        <div class="col-md-4 col-sm-6 gal-img">
                            <a href="#gal1"><img src="images/g1.jpg" alt="Dream Bag" class="img-fluid mt-4"></a>
                        </div>
                        <div class="col-md-4 col-sm-6 gal-img">
                            <a href="#gal2"><img src="images/g2.jpg" alt="Dream Bag" class="img-fluid mt-4"></a>
                        </div>
                        <div class="col-md-4 col-sm-6 gal-img">
                            <a href="#gal3"><img src="images/g3.jpg" alt="Dream Bag" class="img-fluid mt-4"></a>
                        </div>
                        <div class="col-md-4 col-sm-6 gal-img">
                            <a href="#gal1"><img src="images/g4.jpg" alt="Dream Bag" class="img-fluid mt-4"></a>
                        </div>
                        <div class="col-md-4 col-sm-6 gal-img">
                            <a href="#gal2"><img src="images/g5.jpg" alt="Dream Bag" class="img-fluid mt-4"></a>
                        </div>
                        <div class="col-md-4 col-sm-6 gal-img">
                            <a href="#gal3"><img src="images/g6.jpg" alt="Dream Bag" class="img-fluid mt-4"></a>
                        </div>

                    </div>
                    
                    <div id="gal1" class="popup-effect">
                        <div class="popup">
                        <img src="images/g1.jpg" alt="Popup image" class="img-fluid mt-4" />
                        <a class="close" href="#gallery">&times;</a>
                        </div>
                    </div>
                    
                    <div id="gal2" class="popup-effect">
                        <div class="popup">
                        <img src="images/g2.jpg" alt="Popup image" class="img-fluid mt-4" />
                            <a class="close" href="#gallery">&times;</a>
                        </div>
                    </div>
                   
                    <div id="gal3" class="popup-effect">
                        <div class="popup">
                            <img src="images/g3.jpg" alt="Popup image" class="img-fluid mt-4" />
                            <a class="close" href="#gallery">&times;</a>
                        </div>
                    </div>
                   

                </div>
            </div>

        </div>
    </section>
    
    <section class="newsletter-w3pvt py-5">
        <div class="container py-md-5">
            <form method="post" action="#">
                <p class="text-center">Subscribe to the Handbags Store mailing list to receive updates on new arrivals, special offers and other discount information.</p>
               <div class="row subscribe-sec">
                    <div class="col-md-9">
                        <input type="email" class="form-control" id="email" placeholder="Enter Your Email.." name="email" required="">

                    </div>
                    <div class="col-md-3">

                        <button type="submit" class="btn submit">Subscribe</button>
                    </div>

                </div>
            </form>
        </div>
    </section>
   
    <section class="shipping-wthree">
        <div class="shiopping-grids d-lg-flex">
            <div class="col-lg-4 shiopping-w3pvt-gd text-center">
                <div class="icon-gd"><span class="fa fa-truck" aria-hidden="true"></span>
                </div>
                <div class="icon-gd-info">
                    <h3>FREE SHIPPING</h3>
                    <p>On all order over Rs.999</p>
                </div>
            </div>
            <div class="col-lg-4 shiopping-w3pvt-gd sec text-center">
                <div class="icon-gd"><span class="fa fa-bullhorn" aria-hidden="true"></span></div>
                <div class="icon-gd-info">
                    <h3>FREE RETURN</h3>
                    <p>On 1st exchange in 30 days</p>
                </div>
            </div>
            <div class="col-lg-4 shiopping-w3pvt-gd text-center">
                <div class="icon-gd"> <span class="fa fa-gift" aria-hidden="true"></span></div>
                <div class="icon-gd-info">
                    <h3>MEMBER DISCOUNT</h3>
                    <p>Register &amp; save up to Rs.299</p>
                </div>

            </div>
        </div>

    </section>
   
    <div class="footer_agileinfo_topf py-5">
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

    <script src="jquery-2.2.3.min.js"></script>
    <script src="bootstrap.js"></script>
    <script src="script.js"></script>
</body>

</html>
