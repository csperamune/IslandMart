<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Property</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="images/im_logo.png">
<link rel="stylesheet" type="text/css" href="styles/bootstrap-4.1.2/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/single.css">
<link rel="stylesheet" type="text/css" href="styles/single_responsive.css">
</head>
<body>

<div class="super_container">
	<div class="super_overlay"></div>
	
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

					<!-- Tabs -->
					<div class="listing_tabs d-flex flex-row align-items-start justify-content-between flex-wrap">

						<!-- Tab -->
						<div class="tab">
							<input type="radio" id="tab_1" name="listing_tabs" checked>
							<label for="tab_1"></label>
							<div class="tab_content d-flex flex-xl-row flex-column align-items-center justify-content-center">
								<div class="tab_icon"><img src="images/house.svg" class="svg" alt=""></div>
								<span>open house</span>
							</div>
						</div>

						<!-- Tab -->
						<div class="tab">
							<input type="radio" id="tab_2" name="listing_tabs">
							<label for="tab_2"></label>
							<div class="tab_content d-flex flex-xl-row flex-column align-items-center justify-content-center">
								<div class="tab_icon"><img src="images/houses.svg" class="svg" alt=""></div>
								<span>features</span>
							</div>
						</div>

						<!-- Tab -->
						<div class="tab">
							<input type="radio" id="tab_3" name="listing_tabs">
							<label for="tab_3"></label>
							<div class="tab_content d-flex flex-xl-row flex-column align-items-center justify-content-center">
								<div class="tab_icon"><img src="images/house2.svg" class="svg" alt=""></div>
								<span>photos</span>
							</div>
						</div>

						<!-- Tab -->
						<div class="tab">
							<input type="radio" id="tab_4" name="listing_tabs">
							<label for="tab_4"></label>
							<div class="tab_content d-flex flex-xl-row flex-column align-items-center justify-content-center">
								<div class="tab_icon"><img src="images/camera.svg" class="svg" alt=""></div>
								<span>video</span>
							</div>
						</div>

						<!-- Tab -->
						<div class="tab">
							<input type="radio" id="tab_5" name="listing_tabs">
							<label for="tab_5"></label>
							<div class="tab_content d-flex flex-xl-row flex-column align-items-center justify-content-center">
								<div class="tab_icon"><img src="images/directions.svg" class="svg" alt=""></div>
								<span>nearby amenities</span>
							</div>
						</div>

						<!-- Tab -->
						<div class="tab">
							<input type="radio" id="tab_6" name="listing_tabs">
							<label for="tab_6"></label>
							<div class="tab_content d-flex flex-xl-row flex-column align-items-center justify-content-center">
								<div class="tab_icon"><img src="images/location.svg" class="svg" alt=""></div>
								<span>location</span>
							</div>
						</div>

						<!-- Tab -->
						<div class="tab">
							<input type="radio" id="tab_7" name="listing_tabs">
							<label for="tab_7"></label>
							<div class="tab_content d-flex flex-xl-row flex-column align-items-center justify-content-center">
								<div class="tab_icon"><img src="images/contract.svg" class="svg" alt=""></div>
								<span>contact</span>
							</div>
						</div>

					</div>

					<!-- About -->
					<div class="about">
						<div class="row">
							<div class="col-lg-6">
								<div class="property_info">
									<div class="tag_price listing_price">$ 562 346</div>
									<div class="listing_name"><h1>Villa for sale</h1></div>
									<div class="listing_location d-flex flex-row align-items-start justify-content-start">
										<img src="images/icon_1.png" alt="">
										<span>280 Doe Meadow Drive Landover, MD 20785</span>
									</div>
									<div class="listing_list">
										<ul>
											<li>Property ID: 643682</li>
											<li>Posted on: September 22, 2018</li>
											<li>Off plan</li>
										</ul>
									</div>
									<div class="prop_agent d-flex flex-row align-items-center justify-content-start">
										<div class="prop_agent_image"><img src="images/agent_1.jpg" alt=""></div>
										<div class="prop_agent_name"><a href="#">Maria Smith,</a> Agent</div>
									</div>
									<div class="prop_info">
										<ul class="d-flex flex-row align-items-center justify-content-start flex-wrap">
											<li class="d-flex flex-row align-items-center justify-content-start">
												<img src="images/icon_2_large.png" alt="">
												<div>
													<div>1234</div>
													<div>sq ft</div>
												</div>
											</li>
											<li class="d-flex flex-row align-items-center justify-content-start">
												<img src="images/icon_3_large.png" alt="">
												<div>
													<div>2</div>
													<div>baths</div>
												</div>
											</li>
											<li class="d-flex flex-row align-items-center justify-content-start">
												<img src="images/icon_4_large.png" alt="">
												<div>
													<div>5</div>
													<div>beds</div>
												</div>
											</li>
											<li class="d-flex flex-row align-items-center justify-content-start">
												<img src="images/icon_5_large.png" alt="">
												<div>
													<div>2</div>
													<div>garages</div>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="about_text">
									<p>Nulla aliquet bibendum sem, non placerat risus venenatis at. Prae sent vulputate bibendum dictum. Cras at vehicula urna. Suspendisse fringilla lobortis justo, ut tempor leo cursus in. Nullam fermentum egestas quam nec malesuada. Donec non ligula non risus luctus mattis non non diam. Integer placerat velit at vestibulum vulputate. Donec lacinia vitae libero sed ultricies. Donec egestas dictum dolor ac sagittis. Nunc facilisis iaculis est, ut aliquet lorem. Nam imperdiet convallis imperdiet. Nam libero arcu, porttitor sed sapien nec, commodo accumsan nulla. Praesent pretium neque nec dictum venenatis. Mauris nec metus vitae massa maximus malesuada. Quisque cursus leo nec nulla dignissim, ut pulvinar diam porttitor.</p>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="listing_features">
									<div class="listing_title"><h3>Features</h3></div>
									<div class="row">
										<div class="col-lg-6">
											<ul>
												<li>2 car garages</li>
												<li>3 bedrooms</li>
												<li>heated floors</li>
												<li>contemporary architecture</li>
												<li>swimming pool</li>
												<li>exercise room</li>
												<li>formal entry</li>
											</ul>
										</div>
										<div class="col-lg-6">
											<ul>
												<li>patio</li>
												<li>close to stores</li>
												<li>ocean view</li>
												<li>spa</li>
												<li>sprinklers</li>
												<li>garden</li>
												<li>alley</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="listing_video">
									<div class="listing_title"><h3>Video</h3></div>
									<div class="video_container d-flex flex-column align-items-center justify-content-center">
										<img src="images/video.jpg" alt="">
										<div class="video_button"><a class="youtube" href="https://www.youtube.com/embed/IV3ueyrp5M4?autoplay=1"><i class="fa fa-play" aria-hidden="true"></i></a></div>
									</div>
								</div>
							</div>
						</div>		
					</div>
					<div class="google_map_container">
						<div class="map">
							<div id="google_map" class="google_map">
								<div class="map_container">
									<div id="map"></div>
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