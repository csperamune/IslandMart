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
	<link rel="icon" href="images/fl_logo.png">
	<link rel="stylesheet" type="text/css" href="styles/userdata.css">
</head>
	<!-- Header -->
	<jsp:include page="userheader.jsp"></jsp:include>
	<%
		String name = request.getParameter("uname");
		userdao u01 = new userdao();
		signin user = u01.getUserData(name);
	%>
			<div class="userdata">
				<form class="form" action="controller/editUser.jsp">
						<h1 class= "hello">Hello, <%=session.getAttribute("username")%></h1>
						<div class = "username" id = "input">
						<p>User name</p>
						<input class="input100" type="text" name="userName" value = "<%=user.getUserName()%>"></div>
						<div class = "fname" id = "input">
						<p>First name</p>
						<input class="input100" type="text" name="firstName" value = "<%=user.getFirstName()%>"></div>
						<div class = "lname" id = "input">
						<p>Last name</p>
						<input class="input100" type="text" name="lastName" value = "<%=user.getLastName()%>"></div>
						<div class = "email" id = "input">
						<p>Email</p>
						<input class="input100" type="email" name="email" value = "<%=user.getEmail()%>"></div>
						
						<button class= "update" id = "input">Update</button>
				</form>
			</div>
	<!-- Footer -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>