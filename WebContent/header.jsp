<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
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
					<ul class="d-flex flex-row align-items-start justify-content-start" id = "name"></ul>
						<script>
							var name = "<li><div class='dropdown'><button class='dropbtn'>Hi,<%=session.getAttribute("name")%></button><div class='dropdown-content'><a href='#'>Settings</a><a href='login.jsp'>Log out</a></div></div></li>"
							var admin ="<li><div class='dropdown'><button class='dropbtn'>Hi,<%=session.getAttribute("name")%></button><div class='dropdown-content'><a href='admin.jsp'>Admin</a><a href='login.jsp'>Log out</a></div></div></li>"
							var login = "<li><a href='login.jsp'>Login</a></li><li><a href='signup.jsp'>Register</a></li>"
							var log = "<%=session.getAttribute("name")%>"
							
							if(log == "null"){
								document.getElementById("name").innerHTML = login;
							}
							else if(log == "admin"){
								document.getElementById("name").innerHTML = admin;
							}
							else{
								document.getElementById("name").innerHTML = name;
							}
						</script>
					
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
					<li><p>Hi,<a href="#"><%=session.getAttribute("name")%></a></p></li>
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
</body>
</html>