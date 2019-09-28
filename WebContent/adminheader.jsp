<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" type="text/css" href="adcss/bootstrap.css">
	<style type="text/css">
		img{
			width: 250px;
			height: 250px;
		}
		ul li{
			margin: 0 30px;
		}
	</style>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	
</head>
<body>
	<nav class="navbar navbar-dark bg-dark navbar-expand-md ">
		<a href="#" class="navbar-brand">IslandMart</a>
		<button class="navbar-toggler" data-toggle="collapse" data-target="#items"><span class="navbar-toggler-icon"></span></button>
		
			<div class="collapse navbar-collapse flex-row-reverse" id="items">
				<ul class="navbar-nav">
				<li class="nav-item"><a href="index.jsp" class="nav-link">Home</a></li><!-- nav-item -->
				<li class="nav-item"><a href="admin.jsp" class="nav-link">Add Properties</a></li><!-- nav-item -->
				<li class="nav-item"><a href="table.jsp" class="nav-link">Properties</a></li><!-- nav-item -->
				<li class="nav-item"><a href="#" class="nav-link">Customers</a></li><!-- nav-item -->
				<li class="nav-item"><a href="login.jsp" class="nav-link">Logout</a></li><!-- nav-item -->
				</ul><!-- navbar-nav -->
			</div>
		
</body>
</html>