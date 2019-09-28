<%@page import="CRUD.InsertValues"%>
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

String property_type = request.getParameter("property_type");
String city = request.getParameter("city");
String state = request.getParameter("state");
String address = request.getParameter("address");
String property_description = request.getParameter("property_description");
String image_name = request.getParameter("image_name");

InsertValues ob= new InsertValues();
ob.InsertValues(property_type, city, state, address, property_description, image_name);
%>

<script type="text/javascript">

window.location.href = "http://localhost:8080/IslandMart/table.jsp";

</script>

</body>
</html>