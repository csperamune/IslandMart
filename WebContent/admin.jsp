<%@page import="java.util.Iterator"%>
<%@page import="common.User_Bean"%>
<%@page import="java.util.List"%>
<%@page import="CRUD.RecentProp"%>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Admin Pannel</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="images/im_logo.png">
	<link rel="stylesheet" type="text/css" href="adcss/bootstrap.css">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>
<body>
	<!-- Header -->
	<jsp:include page="adminheader.jsp"></jsp:include>
	
	<%
	
	RecentProp obj_read_values = new RecentProp();
	
	List<User_Bean> list = obj_read_values.get_values();
	
	Iterator<User_Bean> it_list = list.iterator();
	
	%>
		
	</nav><!-- navbar -->

	<div class="container mt-5">
		<div class="row">
			<div class="col-12 ">
				<h1 class="text-center mt-3">Recently Added Properties</h1>
				<p class="text-center lead">Let's Go..</p>
			</div><!-- col-12 -->
		</div><!-- row -->

		<div class="row">

				<%
  					while(it_list.hasNext()){
					User_Bean obj_User_Bean = new User_Bean();
					obj_User_Bean=it_list.next();
				%>
			<div class="col-12  col-sm-6 col-md-3 col-lg-3 col-xl-3" id = "prop">
				<h5 class="text-center"><%=obj_User_Bean.getProperty_type() %></h5>
				<img src="img/1.jpg" class="mx-auto d-block img-fluid rounded ">
				<p class="text-center mt-1"><%=obj_User_Bean.getAddress() %></p>
			</div><!-- col-12 -->
			
				<%} %>
		</div><!-- row -->

		<div class="row">
			<div class="col-12 ">
				<h1 class="text-center mt-3 mb-3">Add Property</h1>
			</div><!-- col-12 -->
		</div><!-- row -->

<!-- form -->

	 
	<form action="controller/insert_controller.jsp" style="margin-bottom: 10px;" class="needs-validation" novalidate>
	
  		<span><b>Property Details</b></span>
  		<hr>
  		<div class="form-row">
  		<div class="form-group col-md-4" class="mb-5">
      		<label for="inputState">Property Type</label>
      			<select id="inputState" class="custom-select" name="property_type" required>
        			<option value="">Open this select menu</option>
        			<option value="Land" >Land</option>
        			<option value="Building" >Building</option>
        			<option value="Flat" >Flat</option>
        			<option value="Vehicle" >Vehicle</option>
        			<option value="House" >House</option>
      			</select>
      			<div class="invalid-feedback">Please choose the state </div>
    	</div>
  		<div class="form-group col-md-4">
    			<label for="validationCustom03">City</label>
    			<input type="text" class="form-control" id="validationCustom03" placeholder="Enter City or Location" name="city" required>
    			<div class="invalid-feedback">
        		Please provide the city
      			</div>
  		</div>
  		<div class="form-group col-md-4">
      		<label for="inputState">State</label>
      			<select id="inputState" class="custom-select" name="state" required>
      				<option value="">Open this select menu</option>
        			<option value="Southern Province">Southern Province</option>
        			<option value="North Central">North Central Province</option>
        			<option value="North Western">North Western</option>
        			<option value="Western Province">Western Province</option>
        			<option value="Central Province">Central Province</option>
        			<option value="Eastern Province">Eastern Province</option>
        			<option value="Uva Province">Uva Province</option>
        			<option value="Northern Province">Northern Province</option>
        			<option value="Sabaragamu Province">Sabaragamu Province</option>
      			</select>
      			<div class="invalid-feedback">Please choose the state </div>
    	</div>
  		</div><!-- form-row -->
  		<div class="form-group">
    		<label for="validationCustom04">Property Address</label>
    		<input type="text" class="form-control" id="validationCustom04" placeholder="1234 Main St" name="address" required>
    		<div class="invalid-feedback">
        	Please provide a valid Address.
      </div>
  		</div>
  		<div class="form-group">
 		 	<label for="validationCustom05">Description:</label>
  			<textarea class="form-control" rows="5" id="validationCustom05" name="property_description" required></textarea>
  			<div class="invalid-feedback">
        	Please provide Description about the property.
      		</div>
		</div>
		<div class="form-group">
    		<label for="exampleFormControlFile1">Upload Property Image...</label>
    		<input type="file" class="form-control-file" id="exampleFormControlFile1" name="image_name">
    		<div class="invalid-feedback">Please upload property image</div>
  		</div>
  		
  		<!-- <div class="custom-file">
    		<input type="file" class="custom-file-input" id="validatedCustomFile" required>
    		<label class="custom-file-label" for="validatedCustomFile" name="image_name">Upload Property Image...</label>
    		<div class="invalid-feedback">Example invalid custom file feedback</div>
  		</div> -->


  	<button type="submit" class="btn btn-primary" name="submit">Submit</button>
	</form>
	<script>
// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>
	</div><!-- container -->


</body>
</html>