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
 		<h4 class = "text-center"><font color="orange">Not Approved</font></h4>
 	</div>
 	<div class="panel-body">
 	<div class = "col-md-6 col-md-offset-3">
 	<label for="Yes">What is the problem/s (Check all that apply)</label>
 	<div class="checkbox" id="Yes">
	  <label><input type="checkbox" value="">Terminal operator does NOT permit an inspection by Shell.</label>
	</div>
	<div class="checkbox">
	  <label><input type="checkbox" value="">Terminal operator permits an inspection however due to Shell resources constrains, unable to schedule an inspection prior to the required date. </label>
	</div>
	<div class="checkbox">
	  <label><input type="checkbox" value="">Terminal operator supports an inspection but at a later date after the scheduled proposed business required date. </label>
	</div>
	<div class="checkbox">
	  <label><input type="checkbox" value="">Terminal is located in a remote area which may increase the business HSSE travel risk of an AP or a company approved Contractor. </label>
	</div>
	<div class="checkbox">
	  <label><input type="checkbox" value="">Terminal has been extended repeatedly on the basis of a desk top review, however the annual exposure exceed over 100 clearance per annum or the terminal requires a CARM waiver.</label>
	</div>
	<div class="checkbox">
	  <label><input type="checkbox" value="">A new proposed terminal or a terminal which was previously used which has an annual exposure of less that 50 clearances per annum. </label>
	</div>
	<div class="checkbox">
	  <label><input type="checkbox" value="">A terminal that is currently in design phase, has not been commissioned or is catergorized under MMG05 definition of "unproven technology". </label>
	</div>
	<div class="form-group">
	  <label for="comment">Supporting Statement</label>
	  <textarea class="form-control" rows="5" id="comment"></textarea>
	</div>
	 <fieldset class="form-group">
                <label for="exampleInputFile">Upload Image Proof Of Problem/s</label>
                <input type="file" class="form-control-file" id="exampleInputFile" name= "filename" required>
    </fieldset>
	</div>
	<div class="col-md-8  col-md-offset-6"><a href = "ReviewPartTwo.jsp"><button type="submit" class="btn btn-danger" onclick ="checkForm()">Finish Review</button></a><br>
	</div>
</div>
</div>
</div>
</body>
</html>