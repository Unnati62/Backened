<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

    <title>Dream Bag : Login Page</title>
    
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
                            <form action="#" method="post" class="newsletter">
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
        <div class="container">
            <div class="content-grid">
                <div class="text-center icon">
                    <span class="fa fa-unlock-alt"></span>
                </div>
                <div class="content-bottom">
                     <form  action="Users" method="POST">
        <input type ="hidden" name="task" value = "login"/>
                        <div class="field-group">

                            <div class="content-input-field">
                                <input name="email" id="email" type="text" value="" placeholder="Email" required="">
                            </div>
                        </div>
                        <div class="field-group">
                            <div class="content-input-field">
                                <input name="password" id="myInput" type="Password" placeholder="Password">
                            </div>
                        </div>
                        <div class="content-input-field">
                            <button type="submit" class="btn">Log In</button>
                        </div>
                        <ul class="list-login">
                            <li class="switch-slide">
                                <label class="switch">
                                    <input type="checkbox">
                                    <span class="slider round"></span>
                                    keep Logged in
                                </label>
                            </li>
                            <li>
                                <a href="#" class="text-right">Forgot password?</a>
                            </li>
                            <li class="clearfix"></li>
                        </ul>
                        <ul class="list-login-bottom">
                            <li class="">
                                <a href="signup.jsp" class="">Don't have an Account?</a>
                            </li>
                            <li class="">
                                <a href="#" class="text-right">Need Help?</a>
                            </li>
                            <li class="clearfix"></li>
                        </ul>
                    </form>
                </div>
            </div>
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
                    <h2><a href="index.html"><span>D</span>ream Bag
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
        <p> 2024 Dream Bag by ARUS. All rights reserved | Design by ARUS 
        </p>

    </div>

</body>

</html>