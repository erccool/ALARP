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
 		<h4 class = "text-center"><font color="orange">ALARP Consideration</font></h4>
 	</div>
 	<div class="panel-body">
 	<div class = "col-md-6 col-md-offset-3">
 	<label for="Yes">Terminal & Associated asset Review</label>
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
	
	<label for="Yes">AP Research Methodology</label>
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
	
	<label for="Yes">Other restrictions & legal implications</label>
 	<div class="checkbox" id="Yes">
	  <label><input type="checkbox" value="">Current available AP and approved company contractors do not have appropriate visa or diplomatic ties to carry out an inspection. i.e Israels, Qatar, Iran and etc.</label>
	</div>
	<div class="checkbox">
	  <label><input type="checkbox" value="">Local port requirements or authorities donot permit entry into the terminal. </label>
	</div>
	<div class="checkbox">
	  <label><input type="checkbox" value="">Travel cost has been reviewed and found to be grossly disproportion.  i.e charter a private helicopter</label>
	</div>
	<div class="checkbox">
	  <label><input type="checkbox" value="">Available AP or approved company contractors unable to comply with company's business travel requirements due to HSSE alerts, remoteness of terminal, war/high risk and etc. </label>
	</div>
	
	<label for="Yes">Commitments </label>
 	<div class="checkbox" id="Yes">
	  <label><input type="checkbox" value="">A written confirmation from the counterparty agreeing to an inspection which will occur within 6 months from the first Shell chartered vessel arrival date.  </label>
	</div>
	<div class="checkbox">
	  <label><input type="checkbox" value="">Counterparty has agreed in principle to an inspection which will occur within 12 months from the first Shell chartered vessel arrival date. </label>
	</div>
	<div class="checkbox">
	  <label><input type="checkbox" value="">Alternative terminals available for the deal due consideration that a vessel feedback / positive vetting may impact future terminal rating. </label>
	</div>
	<div class="checkbox">
	  <label><input type="checkbox" value="">Long term contract includes contractual inspection rights. </label>
	</div>
	<div class="checkbox">
	  <label><input type="checkbox" value="">Business contractual obligations requires to be managed i.e existing contract, inherited, major loss of revenue.</label>
	</div>
	
	<div class="col-md-8  col-md-offset-6"><a href = "ReviewPartThree.jsp"><button type="submit" class="btn btn-danger" onclick ="checkForm()">Proceed</button></a><br>
	</div>
</div>
</div>
</div>
</body>
</html>