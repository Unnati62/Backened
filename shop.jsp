<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Dream Bag : shop</title>
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
    <div class="main-sec inner-page">
      
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
                            <li><a href="home.jsp">Home</a></li>
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

                            <li class="active"><a href="shop.jsp">Collections</a></li>
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
    </div>
   
    <section class="banner-bottom py-5">
        <div class="container py-5">
            <h3 class="title-wthree mb-lg-5 mb-4 text-center">Shop Now</h3>
            <div class="row shop-wthree-info text-center">
                <div class="col-lg-3 shop-info-grid text-center mt-4">
                    <div class="product-shoe-info shoe">
                        <div class="men-thumb-item">
                            <img src="images/b1.jpg" class="img-fluid" alt="">

                        </div>
                        <div class="item-info-product">
                            <h4>
                                <a href="search.jsp">Messenger Bag </a>
                            </h4>

                            <div class="product_price">
                                <div class="grid-price">
                                    <span class="money"><span class="line">Rs.1999</span> Rs.1675.00</span>
                                    
                                </div>
                            </div>
                            <ul class="stars">
                                <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-o" aria-hidden="true"></span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 shop-info-grid text-center mt-4">
                    <div class="product-shoe-info shoe">
                        <div class="men-thumb-item">
                            <img src="images/b2.jpg" class="img-fluid" alt="">

                        </div>
                        <div class="item-info-product">
                            <h4>
                                <a href="single.jsp">Shoulder Bag (Pink) </a>
                            </h4>

                            <div class="product_price">
                                <div class="grid-price">
                                    <span class="money"><span class="line">Rs.1799</span> Rs.1555.00</span>
                                </div>
                            </div>
                            <ul class="stars">
                                <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-o" aria-hidden="true"></span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 shop-info-grid text-center mt-4">
                    <div class="product-shoe-info shoe">
                        <div class="men-thumb-item">
                            <img src="images/b3.jpg" class="img-fluid" alt="">

                        </div>
                        <div class="item-info-product">
                            <h4>
                                <a href="single.jsp">Sling Bag </a>
                            </h4>

                            <div class="product_price">
                                <div class="grid-price">
                                    <span class="money"><span class="line">Rs.1599</span> Rs.1425.00</span>
                                </div>
                            </div>
                            <ul class="stars">
                                <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-o" aria-hidden="true"></span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 shop-info-grid text-center mt-4">
                    <div class="product-shoe-info shoe">
                        <div class="men-thumb-item">
                            <img src="images/b4.jpg" class="img-fluid" alt="">

                        </div>
                        <div class="item-info-product">
                            <h4>
                                <a href="single.jsp">Tote (Blue) </a>
                            </h4>

                            <div class="product_price">
                                <div class="grid-price">
                                    <span class="money"><span class="line">Rs.2199</span> Rs.1875.00</span>
                                </div>
                            </div>
                            <ul class="stars">
                                <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-o" aria-hidden="true"></span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
            
            <div class="row shop-wthree-info text-center">
                <div class="col-lg-3 shop-info-grid text-center mt-4">
                    <div class="product-shoe-info shoe">
                        <div class="men-thumb-item">
                            <img src="images/b5.jpg" class="img-fluid" alt="">

                        </div>
                        <div class="item-info-product">
                            <h4>
                                <a href="single.jsp">Satchel (Yellow) </a>
                            </h4>

                            <div class="product_price">
                                <div class="grid-price">
                                    <span class="money"><span class="line">Rs.2999</span> Rs.2575.00</span>
                                </div>
                            </div>
                            <ul class="stars">
                                <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-o" aria-hidden="true"></span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 shop-info-grid text-center mt-4">
                    <div class="product-shoe-info shoe">
                        <div class="men-thumb-item">
                            <img src="images/b6.jpg" class="img-fluid" alt="">

                        </div>
                        <div class="item-info-product">
                            <h4>
                                <a href="single.jsp">Shoulder Bag (Orange)</a>
                            </h4>

                            <div class="product_price">
                                <div class="grid-price">
                                    <span class="money"><span class="line">Rs.2799</span> Rs.2375.00</span>
                                </div>
                            </div>
                            <ul class="stars">
                                <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-o" aria-hidden="true"></span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 shop-info-grid text-center mt-4">
                    <div class="product-shoe-info shoe">
                        <div class="men-thumb-item">
                            <img src="images/b8.jpg" class="img-fluid" alt="">

                        </div>
                        <div class="item-info-product">
                            <h4>
                                <a href="single.jsp">Hobo (Blue) </a>
                            </h4>

                            <div class="product_price">
                                <div class="grid-price">
                                    <span class="money"><span class="line">Rs.1299</span> Rs.875.00</span>
                                </div>
                            </div>
                            <ul class="stars">
                                <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-o" aria-hidden="true"></span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 shop-info-grid text-center mt-4">
                    <div class="product-shoe-info shoe">
                        <div class="men-thumb-item">
                            <img src="images/b7.jpg" class="img-fluid" alt="">

                        </div>
                        <div class="item-info-product">
                            <h4>
                                <a href="single.jsp">Satchel (Pink)</a>
                            </h4>

                            <div class="product_price">
                                <div class="grid-price">
                                    <span class="money"><span class="line">RS.1555</span> Rs.1400.00</span>
                                </div>
                            </div>
                            <ul class="stars">
                                <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-o" aria-hidden="true"></span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>


            </div>

            
            <div class="row shop-wthree-info text-center mb-5">
                <div class="col-lg-3 shop-info-grid text-center mt-4">
                    <div class="product-shoe-info shoe">
                        <div class="men-thumb-item">
                            <img src="images/b3.jpg" class="img-fluid" alt="">

                        </div>
                        <div class="item-info-product">
                            <h4>
                                <a href="single.jsp">Sling Bag </a>
                            </h4>

                            <div class="product_price">
                                <div class="grid-price">
                                    <span class="money"><span class="line">Rs.2599</span> Rs.2175.00</span>
                                </div>
                            </div>
                            <ul class="stars">
                                <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-o" aria-hidden="true"></span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 shop-info-grid text-center mt-4">
                    <div class="product-shoe-info shoe">
                        <div class="men-thumb-item">
                            <img src="images/b4.jpg" class="img-fluid" alt="">

                        </div>
                        <div class="item-info-product">
                            <h4>
                                <a href="single.jsp">Tote (Blue) </a>
                            </h4>

                            <div class="product_price">
                                <div class="grid-price">
                                    <span class="money"><span class="line">Rs.1899</span> Rs.1675.00</span>
                                </div>
                            </div>
                            <ul class="stars">
                                <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-o" aria-hidden="true"></span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>


                <div class="col-lg-3 shop-info-grid text-center mt-4">
                    <div class="product-shoe-info shoe">
                        <div class="men-thumb-item">
                            <img src="images/b1.jpg" class="img-fluid" alt="">

                        </div>
                        <div class="item-info-product">
                            <h4>
                                <a href="single.jsp">Messenger Bag </a>
                            </h4>

                            <div class="product_price">
                                <div class="grid-price">
                                    <span class="money"><span class="line">Rs.1799</span> Rs.1375.00</span>
                                </div>
                            </div>
                            <ul class="stars">
                                <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-o" aria-hidden="true"></span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 shop-info-grid text-center mt-4">
                    <div class="product-shoe-info shoe">
                        <div class="men-thumb-item">
                            <img src="images/b2.jpg" class="img-fluid" alt="">

                        </div>
                        <div class="item-info-product">
                            <h4>
                                <a href="single.jsp">Shoulder Bag (Pink) </a>
                            </h4>

                            <div class="product_price">
                                <div class="grid-price">
                                    <span class="money"><span class="line">Rs.2799</span> Rs.1475.00</span>
                                </div>
                            </div>
                            <ul class="stars">
                                <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                <li><a href="#"><span class="fa fa-star-o" aria-hidden="true"></span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
            <nav aria-label="Page navigation example mt-5">
                <ul class="pagination">
                    <li class="page-item">
                        <a class="page-link" href="#">Previous</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">1</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">2</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">3</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">Next</a>
                    </li>
                </ul>
            </nav>
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
                    <h2><a href="home.jsp"><span class="log-w3pvt">D</span>ream Bag
                        </a> </h2>
                    <label class="sub-des2">Online Store</label>
                </div>
                <div class="col-lg-3 footer_wthree_gridf mt-md-0 mt-4">
                    <ul class="footer_wthree_gridf_list">
                        <li>
                            <a href="index.jsp"><span class="fa fa-angle-right" aria-hidden="true"></span> Home</a>
                        </li>
                        <li>
                            <a href="about.jsp"><span class="fa fa-angle-right" aria-hidden="true"></span> About</a>
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
                            <a href="home.jsp"><span class="fa fa-angle-right" aria-hidden="true"></span>Register</a>
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
    
</body>

</html>
