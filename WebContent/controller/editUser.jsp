<%@page import="com.islandmart.dao.userdao"%>
<%@page import="com.islandmart.signin.signin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String userName = request.getParameter("userName");
String firstName = request.getParameter("firstName");
String lastName = request.getParameter("lastName");
String email = request.getParameter("email");

signin user = new signin();

user.setUserName(userName);
user.setFirstName(firstName);
user.setLastName(lastName);
user.setEmail(email);

userdao editUs = new userdao();

editUs.editUser(user);


%>

<script type="text/javascript">

window.location.href = "http://localhost:8080/IslandMart/index.jsp";

</script>

</body>
</html>