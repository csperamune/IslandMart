<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="myHOME - real estate template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="images/im_logo.png">
<link rel="stylesheet" type="text/css" href="styles/bootstrap-4.1.2/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/animate.css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
</head>
<body>

<div class="super_container">
	<div class="super_overlay"></div>
	
	<!-- Header -->

	<header class="header">
		
		<!-- Header Bar -->
		<div class="header_bar d-flex flex-row align-items-center justify-content-start">
			<div class="header_list">
				<ul class="d-flex flex-row align-items-center justify-content-start">
					<!-- Phone -->
					<li class="d-flex flex-row align-items-center justify-content-start">
						<div><img src="images/phone-call.svg" alt=""></div>
						<span>+94 77 XX XX XXX</span>
					</li>
					<!-- Address -->
					<li class="d-flex flex-row align-items-center justify-content-start">
						<div><img src="images/placeholder.svg" alt=""></div>
						<span>Main Str, no 23, Malabe</span>
					</li>
					<!-- Email -->
					<li class="d-flex flex-row align-items-center justify-content-start">
						<div><img src="images/envelope.svg" alt=""></div>
						<span>contact@islandmart.com</span>
					</li>
				</ul>
			</div>
			<div class="ml-auto d-flex flex-row align-items-center justify-content-start">
				<div class="social">
					<ul class="d-flex flex-row align-items-center justify-content-start">
						<li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a></li>
					</ul>
				</div>
				<div class="log_reg d-flex flex-row align-items-center justify-content-start">
					<ul class="d-flex flex-row align-items-start justify-content-start">
						<li><a href="login.jsp">Login</a></li>
						<li><a href="signup.jsp">Register</a></li>
					</ul>
				</div>
			</div>
		</div>

		<!-- Header Content -->
		<div class="header_content d-flex flex-row align-items-center justify-content-start">
			<div class="logo"><a href="index.jsp"><img src="images/im_logo.png" class="brandlogo"><span>Island</span>Mart</a></div>
			<nav class="main_nav">
				<ul class="d-flex flex-row align-items-start justify-content-start">
					<li class="active"><a href="index.jsp">Home</a></li>
					<li><a href="about.jsp">About us</a></li>
					<li><a href="listings.jsp">Listings</a></li>
					<li><a href="blog.jsp">News</a></li>
					<li><a href="contact.jsp">Contact</a></li>
				</ul>
			</nav>
			<div class="hamburger ml-auto"><i class="fa fa-bars" aria-hidden="true"></i></div>
		</div>

	</header>

	<!-- Menu -->

	<div class="menu text-right">
		<div class="menu_close"><i class="fa fa-times" aria-hidden="true"></i></div>
		<div class="menu_log_reg">
			<div class="log_reg d-flex flex-row align-items-center justify-content-end">
				<ul class="d-flex flex-row align-items-start justify-content-start">
					<li><a href="#">Login</a></li>
					<li><a href="#">Register</a></li>
				</ul>
			</div>
			<nav class="menu_nav">
				<ul>
					<li><a href="index.jsp">Home</a></li>
					<li><a href="about.jsp">About us</a></li>
					<li><a href="listings.jsp">Listings</a></li>
					<li><a href="blog.jsp">News</a></li>
					<li><a href="contact.jsp">Contact</a></li>
				</ul>
			</nav>
		</div>
	</div>

	<!-- Home -->

	<div class="home">
		
		<!-- Home Slider -->
		<div class="home_slider_container">
			 <div class="owl-carousel owl-theme home_slider">
			 	
			 	<!-- Slide -->
			 	<div class="slide">
			 		<div class="background_image" style="background-image:url(images/index1.jpg)"></div>
			 	</div>

			 	<!-- Slide -->
			 	<div class="slide">
			 		<div class="background_image" style="background-image:url(images/index2.jpg)"></div>
			 	</div>

			 	<!-- Slide -->
			 	<div class="slide">
			 		<div class="background_image" style="background-image:url(images/index3.jpg)"></div>
			 	</div>

			 </div>

			 <!-- Home Slider Navigation -->
			 <div class="home_slider_nav"><i class="fa fa-angle-right" aria-hidden="true"></i></div>
			 
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
										<input type="text" class="search_input" placeholder="No rooms" required="required">
										<input type="text" class="search_input" placeholder="Location" required="required">
									</div>
									<button class="search_button">submit listing</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Featured -->

	<div class="featured">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title_container text-center">
						<div class="section_subtitle">the best deals</div>
						<div class="section_title"><h1>Featured Properties</h1></div>
					</div>
				</div>
			</div>
			<div class="row featured_row">
				
				<!-- Featured Item -->
				<div class="col-lg-4">
					<div class="listing">
						<div class="listing_image">
							<div class="listing_image_container">
								<img src="images/listing_1.jpg" alt="">
							</div>
							<div class="tags d-flex flex-row align-items-start justify-content-start flex-wrap">
								<div class="tag tag_house"><a href="listings.jsp">house</a></div>
								<div class="tag tag_sale"><a href="listings.jsp">for sale</a></div>
							</div>
							<div class="tag_price listing_price">$ 217 346</div>
						</div>
						<div class="listing_content">
							<div class="prop_location listing_location d-flex flex-row align-items-start justify-content-start">
								<img src="images/icon_1.png" alt="">
								<a href="single.jsp">280 Doe Meadow Drive Landover, MD 20785</a>
							</div>
							<div class="listing_info">
								<ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
									<li class="property_area d-flex flex-row align-items-center justify-content-start">
										<img src="images/icon_2.png" alt="">
										<span>2500 sq ft</span>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<img src="images/icon_3.png" alt="">
										<span>2</span>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<img src="images/icon_4.png" alt="">
										<span>5</span>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<img src="images/icon_5.png" alt="">
										<span>2</span>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<!-- Featured Item -->
				<div class="col-lg-4">
					<div class="listing">
						<div class="listing_image">
							<div class="listing_image_container">
								<img src="images/listing_2.jpg" alt="">
							</div>
							<div class="tags d-flex flex-row align-items-start justify-content-start flex-wrap">
								<div class="tag tag_house"><a href="listings.jsp">house</a></div>
								<div class="tag tag_rent"><a href="listings.jsp">for rent</a></div>
							</div>
							<div class="tag_price listing_price">$ 515 957</div>
						</div>
						<div class="listing_content">
							<div class="prop_location listing_location d-flex flex-row align-items-start justify-content-start">
								<img src="images/icon_1.png" alt="">
								<a href="single.jsp">4812 Haul Road Saint Paul, MN 55102</a>
							</div>
							<div class="listing_info">
								<ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
									<li class="property_area d-flex flex-row align-items-center justify-content-start">
										<img src="images/icon_2.png" alt="">
										<span>1234 sq ft</span>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<img src="images/icon_3.png" alt="">
										<span>2</span>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<img src="images/icon_4.png" alt="">
										<span>5</span>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<img src="images/icon_5.png" alt="">
										<span>2</span>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<!-- Featured Item -->
				<div class="col-lg-4">
					<div class="listing">
						<div class="listing_image">
							<div class="listing_image_container">
								<img src="images/listing_3.jpg" alt="">
							</div>
							<div class="tags d-flex flex-row align-items-start justify-content-start flex-wrap">
								<div class="tag tag_house"><a href="listings.jsp">house</a></div>
								<div class="tag tag_sale"><a href="listings.jsp">for sale</a></div>
							</div>
							<div class="tag_price listing_price">$ 375 255</div>
						</div>
						<div class="listing_content">
							<div class="prop_location listing_location d-flex flex-row align-items-start justify-content-start">
								<img src="images/icon_1.png" alt="">
								<a href="single.jsp">4067 Wolf Pen Road Mountain View, CA 94041</a>
							</div>
							<div class="listing_info">
								<ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
									<li class="property_area d-flex flex-row align-items-center justify-content-start">
										<img src="images/icon_2.png" alt="">
										<span>2000 sq ft</span>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<img src="images/icon_3.png" alt="">
										<span>2</span>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<img src="images/icon_4.png" alt="">
										<span>5</span>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<img src="images/icon_5.png" alt="">
										<span>2</span>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<footer class="footer">
		<div class="footer_content">
			<div class="container">
				<div class="row">
					
					<!-- Footer Column -->
					<div class="col-xl-3 col-lg-6 footer_col">
						<div class="footer_about">
							<div class="footer_logo"><a href="#"><span>Island</span>Mart</a></div>
							<div class="footer_text">
								<p>Nulla aliquet bibendum sem, non placerat risus venenatis at. Prae sent vulputate bibendum dictum. Cras at vehicula urna. Suspendisse fringilla lobortis justo, ut tempor leo cursus in.</p>
							</div>
							<div class="social">
								<ul class="d-flex flex-row align-items-center justify-content-start">
									<li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a></li>
								</ul>
							</div>
							<div class="footer_submit"><a href="#">submit listing</a></div>
						</div>
					</div>

					<!-- Footer Column -->
					<div class="col-xl-3 col-lg-6 footer_col">
						<div class="footer_column">
							<div class="footer_title">Information</div>
							<div class="footer_info">
								<ul>
									<!-- Phone -->
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div><img src="images/phone-call.svg" alt=""></div>
										<span>+94 77 XX XX XXX</span>
									</li>
									<!-- Address -->
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div><img src="images/placeholder.svg" alt=""></div>
										<span>Main Str, no 23, Malabe</span>
									</li>
									<!-- Email -->
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div><img src="images/envelope.svg" alt=""></div>
										<span>contact@islandmart.com</span>
									</li>
								</ul>
							</div>
							<div class="footer_links usefull_links">
								<div class="footer_title">Usefull Links</div>
								<ul>
									<li><a href="#">Listings</a></li>
									<li><a href="#">Featured Properties</a></li>
									<li><a href="#">Contact Agents</a></li>
									<li><a href="#">About us</a></li>
								</ul>
							</div>
						</div>
					</div>

					<!-- Footer Column -->
					<div class="col-xl-3 col-lg-6 footer_col">
						<div class="footer_links">
							<div class="footer_title">Properties Types</div>
							<ul>
								<li><a href="#">Houses</a></li>
								<li><a href="#">Lands</a></li>
								<li><a href="#">Appartments</a></li>
							</ul>
						</div>
					</div>

					<!-- Footer Column -->
					<div class="col-xl-3 col-lg-6 footer_col">
						<div class="footer_title">Featured Property</div>
						<div class="listing_small">
							<div class="listing_small_image">
								<div>
									<img src="images/listing_1.jpg" alt="">
								</div>
								<div class="listing_small_tags d-flex flex-row align-items-start justify-content-start flex-wrap">
									<div class="listing_small_tag tag_house"><a href="listings.jsp">house</a></div>
									<div class="listing_small_tag tag_sale"><a href="listings.jsp">for sale</a></div>
								</div>
								<div class="listing_small_price">$ 562 346</div>
							</div>
							<div class="listing_small_content">
								<div class="listing_small_location d-flex flex-row align-items-start justify-content-start">
									<img src="images/icon_1.png" alt="">
									<a href="single.jsp">280 Doe Meadow Drive Landover, MD 20785</a>
								</div>
								<div class="listing_small_info">
									<ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
										<li class="d-flex flex-row align-items-center justify-content-start">
											<img src="images/icon_3.png" alt="">
											<span>2</span>
										</li>
										<li class="d-flex flex-row align-items-center justify-content-start">
											<img src="images/icon_4.png" alt="">
											<span>5</span>
										</li>
										<li class="d-flex flex-row align-items-center justify-content-start">
											<img src="images/icon_5.png" alt="">
											<span>2</span>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="footer_bar">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="footer_bar_content d-flex flex-md-row flex-column align-items-md-center align-items-start justify-content-start">
							<nav class="footer_nav order-md-2 order-1 ml-md-auto">
								<ul class="d-flex flex-md-row flex-column align-items-md-center align-items-start justify-content-start">
									<li><a href="index.jsp">Home</a></li>
									<li><a href="about.jsp">About us</a></li>
									<li><a href="listings.jsp">Listings</a></li>
									<li><a href="blog.jsp">News</a></li>
									<li><a href="contact.jsp">Contact</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
</div>

<script src="js/jquery-3.3.1.min.js"></script>
<script src="styles/bootstrap-4.1.2/popper.js"></script>
<script src="styles/bootstrap-4.1.2/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/OwlCarousel2-2.3.4/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/progressbar/progressbar.min.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
<script src="js/custom.js"></script>
</body>
</html>