<%@page import="java.util.Iterator"%>
<%@page import="common.User_Bean"%>
<%@page import="java.util.List"%>
<%@page import="CRUD.ReadValues"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="adcss/bootstrap.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</head>
<body>
	<!-- Header -->
	<jsp:include page="adminheader.jsp"></jsp:include>
		
	</nav><!-- navbar -->
	
	<%
	
	ReadValues obj_read_values = new ReadValues();
	
	List<User_Bean> list = obj_read_values.get_values();
	
	Iterator<User_Bean> it_list = list.iterator();
	
	%>
	
<div class="container mt-5">
	<div class="row">
		<div class="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">
			<h1 class="text-left">Properties</h1>
		</div>
		<div class="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">
			<h3 class="text-right mt-3"><a href="admin.jsp">+Add more Properties</a></h3>
		</div>
	</div><!-- row -->
</div>
<div class="container mt-2  ">
<table class="table table-striped" style="text-align: center;">
  <thead class="thead-dark">
    <tr>
      <th scope="col">ID</th>	
      <th scope="col">Property Type</th>
      <th scope="col">City</th>
      <th scope="col">State</th>
      <th scope="col">Address</th>
      <th scope="col">Description</th>
      <!-- <th scope="col">Image</th> -->
      <th scope="col">Update</th>
       <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
  <%
  while(it_list.hasNext()){
		User_Bean obj_User_Bean = new User_Bean();
		obj_User_Bean=it_list.next();
	%>	
		<tr>	
			<td><%=obj_User_Bean.getProperty_id() %></td>
      		<td><%=obj_User_Bean.getProperty_type() %></td>
      		<td><%=obj_User_Bean.getCity() %></td>
      		<td><%=obj_User_Bean.getState() %></td>
      		<td><%=obj_User_Bean.getAddress() %></td>
      		<td><%=obj_User_Bean.getProperty_description() %></td>
      		<!-- <td><%=obj_User_Bean.getImage_name() %></td> -->
      		<td><p style="font-size: 18px;"><a href="edit.jsp?property_id=<%=obj_User_Bean.getProperty_id() %>" class="badge badge-primary" style="padding:10px;">Update</a></p></td>
      		<td><p style="font-size: 18px;"><a href="controller/delete_controller.jsp?property_id=<%=obj_User_Bean.getProperty_id() %>" class="badge badge-danger" style="padding:10px;">Delete</a></p></td>
    	</tr>
    	<% 
	}
  %>
  	 
  </tbody>
</table>
</div>

</body>
</html>