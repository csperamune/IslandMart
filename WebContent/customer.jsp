<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.islandmart.signin.signin"%>
<%@page import="com.islandmart.dao.userListDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="icon" href="images/im_logo.png">
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
	
	userListDao user = new userListDao();
	
	List<signin> list = user.get_values();
	
	Iterator<signin> it_list = list.iterator();
	
	%>
	
<div class="container mt-5">
	<div class="row">
		<div class="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">
			<h1 class="text-left">Customers</h1>
		</div>
	</div><!-- row -->
</div>
<div class="container mt-2  ">
<table class="table table-striped" style="text-align: center;">
  <thead class="thead-dark">
    <tr>
      <th scope="col">User Name</th>	
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">Email</th>
       <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
  <%
  while(it_list.hasNext()){
		signin us01 = new signin();
		us01=it_list.next();
	%>	
		<tr>	
			<td><%=us01.getUserName() %></td>
      		<td><%=us01.getFirstName() %></td>
      		<td><%=us01.getLastName() %></td>
      		<td><%=us01.getEmail() %></td>
      		<td><p style="font-size: 18px;"><a href="controller/deleteUserCon.jsp?name=<%=us01.getUserName() %>" class="badge badge-danger" style="padding:10px;">Delete</a></p></td>
    	</tr>
    	<% 
	}
  %>
  	 
  </tbody>
</table>
</div>

</body>
</html>