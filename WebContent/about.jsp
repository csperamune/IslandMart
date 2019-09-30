<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>About us</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="images/im_logo.png">
<link rel="stylesheet" type="text/css" href="styles/bootstrap-4.1.2/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/animate.css">
<link rel="stylesheet" type="text/css" href="styles/about.css">
<link rel="stylesheet" type="text/css" href="styles/about_responsive.css">
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
					<li class="active"><a href="about.jsp">About us</a></li>
					<li><a href="listings.jsp">Properties</a></li>
					<li><a href="contact.jsp">Contact</a></li>
				</ul>
			</nav>
			<div class="hamburger ml-auto"><i class="fa fa-bars" aria-hidden="true"></i></div>
		</div>

	</header>

	<!-- Home -->

	<div class="home">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/about.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_content text-center">
						<div class="home_title">About us</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Intro -->

	<div class="intro">
		<div class="container">
			<div class="row row-eq-height">
				
				<!-- Intro Content -->
				<div class="col-lg-6">
					<div class="intro_content">
						<div class="section_title_container">
							<div class="section_subtitle">the best deals</div>
							<div class="section_title"><h1>Who we are</h1></div>
						</div>
						<div class="intro_text">
							<p>Nulla aliquet bibendum sem, non placerat risus venenatis at. Prae sent vulputate bibendum dictum. Cras at vehicula urna. Suspendisse fringilla lobortis justo, ut tempor leo cursus in. Nulla aliquet bibendum sem, non placerat risus venenatis at. Prae sent vulputate bibendum dictum. Cras at vehicula urna. Suspendisse fringilla lobortis justo, ut tempor leo cursus in.</p>
						</div>
						<div class="button intro_button"><a href="#">read more</a></div>
					</div>
				</div>

				<!-- Intro Image -->
				<div class="col-lg-6 intro_col">
					<div class="intro_image">
						<div class="background_image" style="background-image:url(images/intro.jpg)"></div>
						<img src="images/intro.jpg" alt="">
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- Services -->

	<div class="services">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title_container text-center">
						<div class="section_subtitle">the best deals</div>
						<div class="section_title"><h1>Services</h1></div>
					</div>
				</div>
			</div>
			<div class="row services_row">
				
				<!-- Service -->
				<div class="col-xl-4 col-md-6">
					<div class="service">
						<div class="service_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="service_icon d-flex flex-column align-items-start justify-content-center">
								<img src="images/service_1.png" alt="">
							</div>
							<div class="service_title"><h3>Consulting</h3></div>
						</div>
						<div class="service_text">
							<p>Nulla aliquet bibendum sem, non placer risus venenatis at. Prae sent vulputate bibendum dictum.</p>
						</div>
					</div>
				</div>

				<!-- Service -->
				<div class="col-xl-4 col-md-6">
					<div class="service">
						<div class="service_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="service_icon d-flex flex-column align-items-start justify-content-center">
								<img src="images/service_2.png" alt="">
							</div>
							<div class="service_title"><h3>Real estate sales</h3></div>
						</div>
						<div class="service_text">
							<p>Aliquet bibendum sem, non placerat risus venenatis at. Prae sent vulputate bibendum dictum. Cras at vehicula.</p>
						</div>
					</div>
				</div>

				<!-- Service -->
				<div class="col-xl-4 col-md-6">
					<div class="service">
						<div class="service_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="service_icon d-flex flex-column align-items-start justify-content-center">
								<img src="images/service_3.png" alt="">
							</div>
							<div class="service_title"><h3>Renting</h3></div>
						</div>
						<div class="service_text">
							<p>Nulla aliquet bibendum sem, non placerat risus venenatis at. Prae sent vulputate bibendum dictum.</p>
						</div>
					</div>
				</div>

				<!-- Service -->
				<div class="col-xl-4 col-md-6">
					<div class="service">
						<div class="service_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="service_icon d-flex flex-column align-items-start justify-content-center">
								<img src="images/service_4.png" alt="">
							</div>
							<div class="service_title"><h3>Meditation</h3></div>
						</div>
						<div class="service_text">
							<p>Aliquet bibendum sem, non placerat risus venenatis at. Prae sent vulputate bibendum dictum. Cras at vehicula.</p>
						</div>
					</div>
				</div>

				<!-- Service -->
				<div class="col-xl-4 col-md-6">
					<div class="service">
						<div class="service_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="service_icon d-flex flex-column align-items-start justify-content-center">
								<img src="images/service_5.png" alt="">
							</div>
							<div class="service_title"><h3>Evaluation</h3></div>
						</div>
						<div class="service_text">
							<p>Bibendum sem, non placerat risus venenatis at. Prae sent vulputate bibendum dictum. Cras at vehicula.</p>
						</div>
					</div>
				</div>

				<!-- Service -->
				<div class="col-xl-4 col-md-6">
					<div class="service">
						<div class="service_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="service_icon d-flex flex-column align-items-start justify-content-center">
								<img src="images/service_6.png" alt="">
							</div>
							<div class="service_title"><h3>Price Consulting</h3></div>
						</div>
						<div class="service_text">
							<p>Aliquet bibendum sem, non placerat risus venenatis at. Prae sent vulputate bibendum dictum. Cras at vehicula.</p>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- footer -->
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
<script src="plugins/OwlCarousel2-2.3.4/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/progressbar/progressbar.min.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="js/about.js"></script>
</body>
</html>