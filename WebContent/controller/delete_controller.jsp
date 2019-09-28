<%@page import="CRUD.Delete_values"%>
<%@page import="CRUD.Edit_values"%>
<%@page import="common.User_Bean"%>
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
int property_id = Integer.parseInt(request.getParameter("property_id"));

Delete_values obj_Delete_values = new Delete_values();

obj_Delete_values.delete_value(property_id);

%>

<script type="text/javascript">

window.location.href = "http://localhost:8080/IslandMart/table.jsp";

</script>

</body>
</html>