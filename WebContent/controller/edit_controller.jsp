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
String property_type = request.getParameter("property_type");
String city = request.getParameter("city");
String state = request.getParameter("state");
String address = request.getParameter("address");
String property_description = request.getParameter("property_description");
String image_name = request.getParameter("image_name");

User_Bean obj_User_Bean = new User_Bean();
obj_User_Bean.setProperty_id(property_id);
obj_User_Bean.setProperty_type(property_type);
obj_User_Bean.setCity(city);
obj_User_Bean.setState(state);
obj_User_Bean.setAddress(address);
obj_User_Bean.setProperty_description(property_description);
obj_User_Bean.setImage_name(image_name);

Edit_values obj_Edit_Values=new Edit_values();

obj_Edit_Values.edit_user(obj_User_Bean);


%>

<script type="text/javascript">

window.location.href = "http://localhost:8080/IslandMart/table.jsp";

</script>

</body>
</html>