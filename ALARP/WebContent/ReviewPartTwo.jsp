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
 		<h4 class = "text-center"><font color="orange">Proof of Approval</font></h4>
 	</div>
 	<div class="panel-body">
 	<div class = "col-md-6 col-md-offset-3">
 	<label for="Yes">Terminal & Associated asset Review (Check all that apply)</label>
 	<div class="checkbox" id="Yes">
	  <label><input type="checkbox" value="">The terminal has been inspected by an AP or a company approved Contractor in the past 5 years. All former high observations, if any were closed.  </label>
	</div>
	<div class="checkbox">
	  <label><input type="checkbox" value="">A jetty walkabout has been conducted before by an AP or an approved contractor which may form part of the terminal.</label>
	</div>
	<div class="checkbox">
	  <label><input type="checkbox" value="">The terminal operator is reputable and operates in accordance to OCIMF / SIGTTO guidelines and recommendations. </label>
	</div>
	<div class="checkbox">
	  <label><input type="checkbox" value="">The terminal has submitted a valid MTMSA and it has been reviewed by an AP. </label>
	</div>
	<div class="checkbox">
	  <label><input type="checkbox" value="">The terminal has shared a 3rd party or internal report that may be considered a BLC equivalent. </label>
	</div>
	<div class="checkbox">
	  <label><input type="checkbox" value="">A teleconference between an AP and the terminal operations manager was conducted with no significant observation or issues. 
				(Random sampling of BLC questionaire used across all chapters) </label>
	</div>
	
	<label for="Yes">AP Research Methodology (Check all that apply)</label>
 	<div class="checkbox" id="Yes">
	  <label><input type="checkbox" value="">AP or his/her delegate has carried out a search online and internal incident database. No major relevant incidents since the terminal was in operation. (Best endeavour search)</label>
	</div>
	<div class="checkbox">
	  <label><input type="checkbox" value="">Berth data and parameters were extracted from Ship Shore Compatibility Check or berth fit check documents provided by the terminal. </label>
	</div>
	<div class="checkbox">
	  <label><input type="checkbox" value="">No major findings from indepth research conducted by AP which covers safe port and safe berth criterias (Ref MPM OPS.10.05) along with critical navigational approaches to and from the berth. </label>
	</div>
	<div class="checkbox">
	    <label><input type="checkbox" value="">The terminal has provided critical information on the terminal and approaches which includes but not limited to:  
			Bathymetry survey of jetty / approaches
			, Structural Survey 
			, Fender Manufacturer Inspection 
			, Terminal Information booklet 
			, Emergency Response Manual
		</label>
	</div>
	<div class="checkbox">
	  <label><input type="checkbox" value="">Master's feedback from Shell chartered vessel was crossed referenced with no major observations. </label>
	</div>
	<div class="checkbox">
	  <label><input type="checkbox" value="">Information was extracted from the company's website and/or from the agents or 3rd Party source and has been reviewed by an AP. </label>
	</div>
	
	<div class="form-group">
	  <label for="comment">Supporting Statements and/or other comments(If Any)</label>
	  <textarea class="form-control" rows="5" id="comment"></textarea>
	</div>
	<div class="col-md-8  col-md-offset-6"><a href = "ReviewPartThree.jsp"><button type="submit" class="btn btn-danger" onclick ="checkForm()">Finish Review</button></a><br>
	</div>
</div>
</div>
</div>
</body>
</html>