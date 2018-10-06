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
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style>

</style>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ALARP: Start</title>
</head>
<body style="background-color:orange;">
<div class="row">
<nav class="nnavbar navbar-inverse navbar-static-top nav-upper nav1">

	<div class="container-fluid">
		<a class="navbar-brand"><img src="Shell.png" alt="Dispute Bills" height = 120% >
        </a>
		  <ul class="nav navbar-nav">
		      <li><a href="Home.jsp"><font color="orange">Home</font></a></li>
		      <li><a href="WelcomeReview.jsp"><font color="orange">Submit Review</font></a></li>
		      <li><a href="Display?page=Digital"><font color="orange">View Past Reviews</font></a></li>
		 </ul>
		<div class = "pull-right"><a href = "SignUp.jsp"><button type="button" class="btn btn-danger">Sign Up</button></a></div>
		<div class = "pull-right"><button type="submit" class="btn btn-warning" onclick ="checkForm()">Login</button><br></div>
		
	    
	</div>
</nav>
<nav class="navbar navbar-default nav2">

	<div class="container-fluid">
		  <ul class="nav navbar-nav">
		      <li ><a href="NotApproved.jsp">Not Approved</a></li>
		      <li ><a href="Moved.jsp">Moved to a later date</a></li>	      
		      <li><a href="NotLocated.jsp">Terminal is Located at a Remote Area</a></li>
		      <li ><a href="Desktop.jsp">Desktop Review</a></li>
		      <li class ="active"><a href="Unproven.jsp">Unproven Technology</a></li> 
		 </ul>
	</div>
</nav></div></br>
<div class="container">
<div class="panel panel-warning">
	<div class="panel-heading">  
 		<h4 class = "text-center"><font color="orange">Unproven Technology</font></h4>
 	</div>
 	
 	<div class="panel-body">
 	
 	<div class = "col-md-6 col-md-offset-3">
 A new proposed terminal or a terminal which was previously used which has an annual exposure of less that 50 clearances per annum. A terminal that is currently in design phase, has not been commissioned or is categorized under MMG05 definition of "unproven technology".  	</div>
 	
 	</br></br></br></br></br><label for="comment">Terminal & Associated asset Review</label>
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
 Is there any third party available?
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Please explain</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <div class="form-group">
				  <textarea class="form-control" rows="5" id="comment"></textarea>
				</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-warning">Save</button>
		      </div>
		    </div>
		  </div>
		</div>

	</div>  
	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
The terminal operator is reputable and operates in accordance to OCIMF / SIGTTO guidelines and recommendations. Is this true?
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
		
	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
Terminal provided critical information. Is this true?
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
		
	</div>  
	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
The terminal has submitted a valid MTMSA and it has been reviewed by an AP. Is this true?	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
		

	</div>  
	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
Master's feedback from Shell chartered vessel was crossed referenced with no major observations. Is this true?
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	

	</div>  
	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
Berth data and parameters were extracted from Ship Shore Compatibility Check or berth fit check documents provided by the terminal. Is this true?
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>


	</div>  
	</div>
 	</div>
 	
 	</br></br><label for="comment">Task 2</label>
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
 The terminal has been inspected by an AP or a company approved Contractor in the past 5 years. All former high observations, if any were closed. 

 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
A jetty walkabout has been conducted before by an AP or an approved contractor which may form part of the terminal. 

 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
A teleconference between an AP and the terminal operations manager was conducted with no significant observation or issues. (Random sampling of BLC questionnaire used across all chapters) 

 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
 A written confirmation from the counterparty agreeing to an inspection which will occur within 6 months from the first Shell chartered vessel arrival date.
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
Counterparty has agreed in principle to an inspection which will occur within 12 months from the first Shell chartered vessel arrival date. 
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
Alternative terminals available for the deal due consideration that a vessel feedback / positive vetting may impact future terminal rating. 
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	
 	</br></br><label for="comment">Task 3</label>
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
No major findings from indepth research conducted by AP which covers safe port and safe berth criterias (Ref MPM OPS.10.05) along with critical navigational approaches to and from the berth. 

 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
Information was extracted from the company's website and/or from the agents or 3rd Party source and has been reviewed by an AP. 

 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
Current available AP and approved company contractors do not have appropriate visa or diplomatic ties to carry out an inspection. i.e Israels, Qatar, Iran and etc. 

 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
Local port requirements or authorities do not permit entry into the terminal.  	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
Travel cost has been reviewed and found to be grossly disproportion.  i.e charter a private helicopter
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
 Available AP or approved company contractors unable to comply with company's business travel requirements due to HSSE alerts, remoteness of terminal, war/high risk and etc. 
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
Long term contract includes contractual inspection rights. 
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
Business contractual obligations requires to be managed i.e existing contract, inherited, major loss of revenue.
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	</br></br><label for="comment">Task 4</label>
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
No major findings from indepth research conducted by AP which covers safe port and safe berth criterias (Ref MPM OPS.10.05) along with critical navigational approaches to and from the berth. 
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
Information was extracted from the company's website and/or from the agents or 3rd Party source and has been reviewed by an AP. 
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
Current available AP and approved company contractors do not have appropriate visa or diplomatic ties to carry out an inspection. i.e Israels, Qatar, Iran and etc. 

 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
Local port requirements or authorities do not permit entry into the terminal.  	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
Travel cost has been reviewed and found to be grossly disproportion.  i.e charter a private helicopter
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
 Available AP or approved company contractors unable to comply with company's business travel requirements due to HSSE alerts, remoteness of terminal, war/high risk and etc. 
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
Long term contract includes contractual inspection rights. 
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
Business contractual obligations requires to be managed i.e existing contract, inherited, major loss of revenue.
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	
 	</br></br><label for="comment">Task 5</label>
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
No major findings from indepth research conducted by AP which covers safe port and safe berth criterias (Ref MPM OPS.10.05) along with critical navigational approaches to and from the berth. 
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
Information was extracted from the company's website and/or from the agents or 3rd Party source and has been reviewed by an AP. 
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
Current available AP and approved company contractors do not have appropriate visa or diplomatic ties to carry out an inspection. i.e Israels, Qatar, Iran and etc. 

 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
Local port requirements or authorities do not permit entry into the terminal.  	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
Travel cost has been reviewed and found to be grossly disproportion.  i.e charter a private helicopter
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
 Available AP or approved company contractors unable to comply with company's business travel requirements due to HSSE alerts, remoteness of terminal, war/high risk and etc. 
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
Long term contract includes contractual inspection rights. 
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
Business contractual obligations requires to be managed i.e existing contract, inherited, major loss of revenue.
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">No</button>
	</div>  
	</div>
 	</div>
 	
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	</br></br></br></br><button type="submit" class="btn btn-lg btn-warning signup-btn active">Submit</button>
 	</div>
 	</div>

</div>
</div>
</body>
</html>