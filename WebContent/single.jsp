<%@page import="java.util.Iterator"%>
<%@page import="common.User_Bean"%>
<%@page import="CRUD.Edit_values"%>
<%@page import="java.util.List"%>
<%@page import="CRUD.ReadValues"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Property</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="images/fl_logo.png">
<link rel="stylesheet" type="text/css" href="styles/bootstrap-4.1.2/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/single.css">
<link rel="stylesheet" type="text/css" href="styles/single_responsive.css">
</head>
<body>

<div class="super_container">
	<div class="super_overlay"></div>
	
	<%
	
	int property_id = Integer.parseInt(request.getParameter("pid"));
	Edit_values obj_Edit_values = new Edit_values();
	User_Bean obj_User_Bean=obj_Edit_values.get_values_of_user(property_id);
	
	%>
	
	<!-- Header -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- Header Content -->
		<div class="header_content d-flex flex-row align-items-center justify-content-start">
			<div class="logo"><a href="index.jsp"><img src="images/im_logo.png" class="brandlogo"><span>Island</span>Mart</a></div>
			<nav class="main_nav">
				<ul class="d-flex flex-row align-items-start justify-content-start">
					<li><a href="index.jsp">Home</a></li>
					<li><a href="about.jsp">About us</a></li>
					<li><a href="listings.jsp">Properties</a></li>
					<li><a href="contact.jsp">Contact</a></li>
				</ul>
			</nav>
			<div class="hamburger ml-auto"><i class="fa fa-bars" aria-hidden="true"></i></div>
		</div>
		</header>
	<!-- Home -->

	<div class="home">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/listings.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_content text-center">
						<div class="home_title">Property</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<!-- Search -->

	<div class="search">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="search_container">
						<div class="search_title">Search</div>
						<div class="search_form_container">
							<form action="#" class="search_form" id="search_form">
								<div class="d-flex flex-lg-row flex-column align-items-start justify-content-lg-between justify-content-start">
									<div class="search_inputs d-flex flex-lg-row flex-column align-items-start justify-content-lg-between justify-content-start">
										<input type="text" class="search_input" placeholder="Property type" required="required">
										<input type="text" class="search_input" placeholder="Location" required="required">
									</div>
									<button class="search_button">submit</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Listing -->

	<div class="listing_container">
		<div class="container">
			<div class="row">
				<div class="col">

					<!-- Image -->
					<div class="listing_image"><img src="images/listing.jpg" alt=""></div>

					<!-- About -->
					<div class="about">
						<div class="row">
							<div class="col-lg-6">
								<div class="property_info">
									<div class="tag_price listing_price">562 346 LKR</div>
									<div class="listing_name"><h1><%=obj_User_Bean.getProperty_type() %> for sale</h1></div>
									<div class="listing_location d-flex flex-row align-items-start justify-content-start">
										<img src="images/icon_1.png" alt="">
										<span><%=obj_User_Bean.getAddress() %></span>
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="about_text">
									<p><%=obj_User_Bean.getProperty_description() %></p>
								</div>
							</div>
						</div>		
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<jsp:include page="footer.jsp"></jsp:include>
</div>

<script src="js/jquery-3.3.1.min.js"></script>
<script src="styles/bootstrap-4.1.2/popper.js"></script>
<script src="styles/bootstrap-4.1.2/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/progressbar/progressbar.min.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="plugins/colorbox/jquery.colorbox-min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
<script src="js/single.js"></script>
</body>
</html>