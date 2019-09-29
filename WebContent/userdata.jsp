<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
	
	<!-- Footer -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>