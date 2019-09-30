<%@page import="common.User_Bean"%>
<%@page import="CRUD.Edit_values"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
		
	</nav><!-- navbar -->
	
<div class="container mt-5">
	<div class="row">
		<div class="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">
			<h1 class="text-left">Update Properties</h1>
		</div>
		<div class="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">
			<h3 class="text-right mt-3"><a href="table.jsp"> Property List &raquo</a></h3>
		</div>
	</div><!-- row -->
	<hr>
</div>

<%

	int property_id = Integer.parseInt(request.getParameter("property_id"));

	Edit_values obj_Edit_values = new Edit_values();
	
	User_Bean obj_User_Bean=obj_Edit_values.get_values_of_user(property_id);
	

%>

<div class="container">
	<form action="controller/edit_controller.jsp" style="margin-bottom: 10px;" class="needs-validation" novalidate>
		<div class="form-group">
    		<input type="hidden" class="form-control" id="validationCustom04" placeholder="" name="property_id" value="<%=obj_User_Bean.getProperty_id() %>" >
  		</div>
  		<div class="form-row">
  		<div class="form-group col-md-4" class="mb-5">
      		<label for="inputState">Property Type</label>
      			<select id="inputState" class="custom-select" name="property_type" required>
        			<option selected value=""><%=obj_User_Bean.getProperty_type() %></option>
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
    			<input type="text" class="form-control" id="validationCustom03" placeholder="Enter City or Location" name="city" value="<%=obj_User_Bean.getCity() %>" required>
    			<div class="invalid-feedback">
        		Please provide the city
      			</div>
  		</div>
  		<div class="form-group col-md-4">
      		<label for="inputState">State</label>
      			<select id="inputState" class="custom-select" name="state"  required>
      				<option selected value=""><%=obj_User_Bean.getState() %></option>
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
    		<input type="text" class="form-control" id="validationCustom04" placeholder="1234 Main St" name="address" value="<%=obj_User_Bean.getAddress() %>" required>
    		<div class="invalid-feedback">
        	Please provide a valid Address.
      		</div>
  		</div>
  		<div class="form-group">
 		 	<label for="validationCustom05">Description:</label>
  			<textarea class="form-control" rows="5" id="validationCustom05" name="property_description"  required><%=obj_User_Bean.getProperty_description() %></textarea>
  			<div class="invalid-feedback">
        	Please provide Description about the property.
      		</div>
		</div>
		<div class="form-group">
    		<label for="exampleFormControlFile1">Upload Property Image...</label>
    		<input type="file" class="form-control-file" id="exampleFormControlFile1" name="image_name" <%-- value="<%=obj_User_Bean.getImage_name() %>"  --%>>
    		<!-- <div class="invalid-feedback">Please upload property image</div> -->
  		</div>
  		
  		<!-- <div class="custom-file">
    		<input type="file" class="custom-file-input" id="validatedCustomFile" required>
    		<label class="custom-file-label" for="validatedCustomFile" name="image_name">Upload Property Image...</label>
    		<div class="invalid-feedback">Example invalid custom file feedback</div>
  		</div> -->


  	<button type="submit" class="btn btn-primary" name="submit">Edit</button>
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