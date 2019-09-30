<%@page import="com.islandmart.signin.signin"%>
<%@page import="com.islandmart.dao.userdao" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title><%=session.getAttribute("username")%></title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">	
	<link rel="icon" href="images/im_logo.png">
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="styles/user.css">
	<link rel="stylesheet" type="text/css" href="styles/userdata.css">
</head>
	<!-- Header -->
	<jsp:include page="userheader.jsp"></jsp:include>
	<%
		String name = request.getParameter("uname");
		userdao user = new userdao();
		signin u01 = user.getUserData(name);
	%>
	
		<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-85 p-b-20">
				<form class="login100-form validate-form">
					<span class="login100-form-title p-b-70">
						Hello, <%=session.getAttribute("username")%>
					</span>
					<div class="wrap-input100 validate-input m-t-85 m-b-35" data-validate = "Enter Username" requred>
						<input class="input100" type="text" name="userName" value = "<%=u01.getUserName()%>">
					</div>
					<div class="wrap-input100 validate-input m-t-85 m-b-35" data-validate = "Enter first name">
						<input class="input100" type="text" name="firstName" value = "<%=u01.getFirstName()%>">
					</div>
					<div class="wrap-input100 validate-input m-b-50" data-validate="Enter last name">
						<input class="input100" type="text" name="lastName" value = "<%=u01.getLastName()%>">
					</div>
					<div class="wrap-input100 validate-input m-b-50" data-validate="Enter Email">
						<input class="input100" type="email" name="email" value = "<%=u01.getEmail()%>">
					</div>
					<div class="wrap-input100 validate-input m-b-50" data-validate="Enter password">
						<input class="input100" type="password" name="pass" value = "<%=u01.getPassword()%>">
					</div>
					<div class="wrap-input100 validate-input m-b-50" data-validate="Enter password">
						<input class="input100" type="password" name="pass" value = "<%=u01.getPassword()%>">
					</div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Update
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<!-- Footer -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>