<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
   
    <%@ page import= "com.amstech.dream.bags.dto.BagDTO" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dream Bag : Bag Details</title>
    <link rel="stylesheet" href="bootstrap.css">
    
    <link rel="stylesheet" href="style.css" type="text/css" media="all" />
    
    <link href="font-awesome.css" rel="stylesheet">
    
    <link href="//fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">

    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
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
    
    <div class="container mt-5">
  
        <div class="row">
     
            <!-- Bag Image -->
            <div class="col-md-6">
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

		
		<%if (request.getAttribute("bagDTO") != null) {
			BagDTO bagDTO = (BagDTO) request.getAttribute("bagDTO");
			if (bagDTO!= null) {
		%>
	                <div class="card">
                    <img src="images/purple bag.jpg" class="card-img-top" alt="Bag Image">
                </div>
            </div>
            <!-- Bag Details -->
            <div class="col-md-6">
                <h2>Name:<%=bagDTO.getBag_name() %></h2>
                <h4 class="text-primary">Category Name:<%=bagDTO.getCategory_name() %></h4>
                <p class="mt-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam scelerisque magna nec gravida scelerisque. Quisque vestibulum massa sit amet sem sagittis, at condimentum arcu tincidunt.</p>
              
                    <div class="form-group">
                        <label for="colour">Colour:<%=bagDTO.getColour() %></label>
                         <p>Capacity:<%=bagDTO.getCapacity()%></p>
                          <p>Price:<%=bagDTO.getPrice() %></label>
                           <p>Serial Number:<%=bagDTO.getSerial_number() %></p>
                            
                        
                    </div>
                    
        <form action="order" method="get">
            <input type="hidden" name="task" value="findById">
            <input type="hidden" name="bag_id" value="<%=bagDTO.getBag_id()%>">
                    <button  type="submit" class="btn btn-success btn-block" >Order</button>
                </form>
            </div>
        </div>
	<%
	}
	}
	%>

        <!-- Additional Information Tabs -->
        <div class="row mt-5">
            <div class="col-12">
                <ul class="nav nav-tabs" id="detailTab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="description-tab" data-toggle="tab" href="#description" role="tab" aria-controls="description" aria-selected="true">Description</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="specs-tab" data-toggle="tab" href="#specs" role="tab" aria-controls="specs" aria-selected="false">Specifications</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="reviews-tab" data-toggle="tab" href="#reviews" role="tab" aria-controls="reviews" aria-selected="false">Reviews</a>
                    </li>
                </ul>
                <div class="tab-content mt-3" id="detailTabContent">
                    <!-- Description Tab -->
                    <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
                        <p>Experience the perfect blend of style and functionality with our Leather Backpack. Designed for the modern traveler, it offers ample storage and a sleek design.</p>
                    </div>
                    <!-- Specifications Tab -->
                    <div class="tab-pane fade" id="specs" role="tabpanel" aria-labelledby="specs-tab">
                        <ul>
                            <li>Material: Genuine Leather</li>
                            <li>Dimensions: 18" x 12" x 6"</li>
                            <li>Weight: 1.2 kg</li>
                            
                        </ul>
                    </div>
                    
                    <div class="tab-pane fade" id="reviews" role="tabpanel" aria-labelledby="reviews-tab">
                        <div class="media mb-4">
                            <img src="https://via.placeholder.com/64" class="mr-3" alt="Reviewer Image">
                            <div class="media-body">
                                <h5 class="mt-0">John Doe</h5>
                                <p>Great backpack! High-quality leather and very spacious.</p>
                            </div>
                        </div>
                        <div class="media mb-4">
                            <img src="https://via.placeholder.com/64" class="mr-3" alt="Reviewer Image">
                            <div class="media-body">
                                <h5 class="mt-0">Jane Smith</h5>
                                <p>I love the design and the material. Worth every penny!</p>
                            </div>
                        </div>
                        <form>
                            <div class="form-group">
                                <label for="review">Leave a Review</label>
                                <textarea class="form-control" id="review" rows="3"></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit Review</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
    