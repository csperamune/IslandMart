<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
<title>Contact</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="images/fl_logo.png">
<link rel="stylesheet" type="text/css" href="styles/bootstrap-4.1.2/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/contact.css">
<link rel="stylesheet" type="text/css" href="styles/contact_responsive.css">
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
					<li class="active"><a href="contact.jsp">Contact</a></li>
				</ul>
			</nav>
			<div class="hamburger ml-auto"><i class="fa fa-bars" aria-hidden="true"></i></div>
		</div>

	</header>
	<!-- Home -->

	<div class="home">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/blog.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_content text-center">
						<div class="home_title">Contact</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Contact -->

	<div class="contact">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title_container text-center">
						<div class="section_subtitle">the best deals</div>
						<div class="section_title"><h1>Get in touch</h1></div>
					</div>
				</div>
			</div>
			<div class="row contact_row">

				<!-- Contact - About -->
				<div class="col-lg-4 contact_col">
					<div class="logo"><a href="#"><span>Island</span>mart</a></div>
					<div class="contact_text">
						<p>Nulla aliquet bibendum sem, non placerat risus venenatis at. Prae sent vulputate bibendum dictum. Cras at vehicula urna. Suspendisse fringilla lobortis justo, ut tempor leo cursus in.</p>
					</div>
				</div>

				<!-- Contact - Info -->
				<div class="col-lg-4 contact_col">
					<div class="contact_info">
						<ul>
							<li class="d-flex flex-row align-items-center justify-content-start">
								<div class="d-flex flex-column align-items-center justify-content-center">
									<div><img src="images/placeholder_2.svg" alt=""></div>
								</div>
								<span>Main Str, no 23, Malabe</span>
							</li>
							<li class="d-flex flex-row align-items-center justify-content-start">
								<div class="d-flex flex-column align-items-center justify-content-center">
									<div><img src="images/phone-call-2.svg" alt=""></div>
								</div>
								<span>+94 77 XX XX XXX</span>
							</li>
							<li class="d-flex flex-row align-items-center justify-content-start">
								<div class="d-flex flex-column align-items-center justify-content-center">
									<div><img src="images/envelope-2.svg" alt=""></div>
								</div>
								<span>contact@islandmart.com</span>
							</li>
						</ul>
					</div>
				</div>

				<!-- Contact - Image -->
				<div class="col-lg-4 contact_col">
					<div class="contact_image d-flex flex-column align-items-center justify-content-center">
						<img src="images/contact_image.jpg" alt="">
					</div>
				</div>

			</div>
			<div class="row contact_form_row">
				<div class="col">
					<div class="contact_form_container">
						<form action="#" class="contact_form text-center" id="contact_form">
							<div class="row">
								<div class="col-lg-4">
									<input type="text" class="contact_input" placeholder="Your name" required="required">
								</div>
								<div class="col-lg-4">
									<input type="email" class="contact_input" placeholder="Your e-mail" required="required">
								</div>
								<div class="col-lg-4">
									<input type="text" class="contact_input" placeholder="Subject" required="required">
								</div>
							</div>
							<textarea class="contact_textarea contact_input" placeholder="Message" required="required"></textarea>
							<button class="contact_button">send message</button>
						</form>
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
<script src="plugins/easing/easing.js"></script>
<script src="plugins/progressbar/progressbar.min.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
<script src="js/contact.js"></script>
</body>
</html>