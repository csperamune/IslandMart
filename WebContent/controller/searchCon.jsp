<%@page import = "common.User_Bean" %>
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
	int property_type = Integer.parseInt(request.getParameter("property_id"));
	String city = request.getParameter("city");
	
	User_Bean search = new User_Bean();
	search.setProperty_id(property_type);
	search.setCity(city);
%>
</body>
</html>