<%@page import="com.islandmart.dao.deleteUser"%>
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
	String user = request.getParameter("name");

	deleteUser delUser = new deleteUser();

	delUser.deleteus(user);

%>

<script type="text/javascript">

window.location.href = "http://localhost:8080/IslandMart/customer.jsp";

</script>

</body>
</html>