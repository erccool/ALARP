<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<link rel="stylesheet" href="Style/bootstrap-4.0.0-dist/bootstrap.css">
<link rel="stylesheet" type="text/css" href="Style/styles.css">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ALARP: Start</title>
</head>
<body style="background-color:orange;">
<div class="row"><%@ include file="Navbar.jsp" %></div></br>
<div class="container">
<div class="panel panel-primary">
	<div class="panel-heading">  
 		<h4 class = "text-center"><font color="orange">Welcome</font></h4>
 	</div>
 	<div class="panel-body">
 	<div class = "col-md-6 col-md-offset-3">
 	Reminder: It is expected that all downstream 3rd party terminals will be inspected prior to usage (MMG05), 
 	however there are circumstances whereby an inspection is unable to take place prior to the required date, 
 	resource constrain or not permitted. 
	
	<form action = "WelcomeServlet" method = "POST" enctype="multipart/form-data" onsubmit="return checkForm(this);">
	<label for="Yes">Choose a decision</label>
 	<fieldset class = "form-group"  id="Yes">
	              <select name = "type">
					  <option value="Approved" name = "type">Approved for inspection</option>
					  <option value="Rejected" name = "type">Inspection is not allowed</option>
					  <option value="Moved" name = "type">Inspection allowed at a later date </option>
				  </select>
				  
    </fieldset>
	</div>
	
	
	
	<div class="col-md-8  col-md-offset-6">
	<input type = submit href = "WelcomeServlet" button type="submit" class="btn btn-danger" onclick ="checkForm()">Start</a><br>
	</div>
	</form>
</div>
</div>
</div>
</body>
</html>