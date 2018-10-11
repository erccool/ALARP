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
<body style="background-color:lemonchiffon;">
<div class="row">
<nav class="nnavbar navbar-inverse navbar-static-top nav-upper nav1">

	<div class="container-fluid">
		<a class="navbar-brand"><img src="Shell.png" alt="Dispute Bills" height = 120% >
        </a>
		  <ul class="nav navbar-nav">
		      <li><a href="GetAllEvalServlet"><font color="orange">Decide On Forms</font></a></li>
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
		      <li class ="active"><a href="Moved.jsp">Moved to a later date</a></li>	      
		      <li><a href="NotLocated.jsp">Located at a Remote Area</a></li>
		      <li ><a href="Desktop.jsp">Annual exposure exceeded over 100 clearance / CARM waiver</a></li>
		      <li ><a href="Unproven.jsp">Unproven Technology</a></li> 
		 </ul>
	</div>
</nav></div></br>

<div class="modal fade" id="Modal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Please explain below</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <div class="form-group">
				  <textarea class="form-control" rows="5" id="comment1" > </textarea>
				</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		        <button onClick="No1()" type="button" class="btn btn-warning" data-dismiss="modal">Save</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="Modal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Please explain below</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <div class="form-group">
				  <textarea class="form-control" rows="5" id="comment2" > </textarea>
				</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		        <button onClick="No2()" type="button" class="btn btn-warning" data-dismiss="modal">Save</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="Modal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Please explain below</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <div class="form-group">
				  <textarea class="form-control" rows="5" id="comment3" > </textarea>
				</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		        <button onClick="No3()" type="button" class="btn btn-warning" data-dismiss="modal">Save</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="Modal4" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Please explain below</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <div class="form-group">
				  <textarea class="form-control" rows="5" id="comment4" > </textarea>
				</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		        <button onClick="No4()" type="button" class="btn btn-warning" data-dismiss="modal">Save</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="Modal5" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Please explain below</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <div class="form-group">
				  <textarea class="form-control" rows="5" id="comment5" > </textarea>
				</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		        <button onClick="No5()" type="button" class="btn btn-warning" data-dismiss="modal">Save</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="Modal6" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Please explain below</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <div class="form-group">
				  <textarea class="form-control" rows="5" id="comment6" > </textarea>
				</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		        <button onClick="No6()" type="button" class="btn btn-warning" data-dismiss="modal">Save</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="Modal7" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Please explain below</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <div class="form-group">
				  <textarea class="form-control" rows="5" id="comment7" > </textarea>
				</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		        <button onClick="No7()" type="button" class="btn btn-warning" data-dismiss="modal">Save</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="Modal8" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Please explain below</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <div class="form-group">
				  <textarea class="form-control" rows="5" id="comment8" > </textarea>
				</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		        <button onClick="No8()" type="button" class="btn btn-warning" data-dismiss="modal">Save</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="Modal9" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Please explain below</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <div class="form-group">
				  <textarea class="form-control" rows="5" id="comment9" > </textarea>
				</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		        <button onClick="No9()" type="button" class="btn btn-warning" data-dismiss="modal">Save</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="Modal10" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Please explain below</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <div class="form-group">
				  <textarea class="form-control" rows="5" id="comment10" > </textarea>
				</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		        <button onClick="No10()" type="button" class="btn btn-warning" data-dismiss="modal">Save</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="Modal11" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Please explain below</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <div class="form-group">
				  <textarea class="form-control" rows="5" id="comment11" > </textarea>
				</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		        <button onClick="No11()" type="button" class="btn btn-warning" data-dismiss="modal">Save</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="Modal12" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Please explain below</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <div class="form-group">
				  <textarea class="form-control" rows="5" id="comment12" > </textarea>
				</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		        <button onClick="No12()" type="button" class="btn btn-warning" data-dismiss="modal">Save</button>
      </div>
    </div>
  </div>
</div>


<div class="container">
<div class="panel panel-default">
		
	<div class="panel-heading">  
 		<h4 class = "text-center"><font color="black">Terminal operator permits an inspection however due to Shell resources constrains, unable to schedule an inspection prior to the required date. 
</font></h4>
 	</div>
 	
 	
 	<font color="gray">
 	<div class="panel-body">
 	
 	</br></br><label for="comment">Terminal & Associated asset Review</label>
 	
 	<div class = "row" id = "comment">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class="form-group" id = answer display = "none" >
		    <label for="email"> Is there any third party available?  </label>
		    <input type="email" class="fform-group mb-2" id="ques1a" name="q1" readonly>
	 </div> 

 	
 	</div> </div>
 	
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button onClick = "Yes1()" type="submit" class="btn btn-md btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-danger signup-btn active" data-toggle="modal" data-target="#Modal1">No</button>

	</div>  
	</div>
 	</div>
	 
	
 	
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	<label for="email">The terminal operator is reputable and operates in accordance to OCIMF / SIGTTO guidelines and recommendations. Is this true?
</label>
		    <input type="email" class="fform-group mb-2" id="ques2a" name="q2" readonly>
 	
 	</div> </div> <br>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button onClick = "Yes2()" type="submit" class="btn  btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn  btn-danger signup-btn active" data-toggle="modal" data-target="#Modal2">No</button>
	</div>
 	</div><br>
 	
 	 <br><div class = "row"><div class = "col-md-6 col-md-offset-3">
 	<label for="email">Terminal provided critical information. Is this true? </label>
		    <input type="email" class="fform-group mb-2" id="ques3a" name="q2" readonly>
 	
 	</div> </div> <br>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button onClick = "Yes3()" type="submit" class="btn  btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn  btn-danger signup-btn active" data-toggle="modal" data-target="#Modal3">No</button>`
	</div>  
	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	<label for="email">The terminal has submitted a valid MTMSA and it has been reviewed by an AP. Is this true?	</label>
		    <input type="email" class="fform-group mb-2" id="ques4a" name="q2" readonly> 	
 	</div> </div> <br>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button onClick = "Yes4()" type="submit" class="btn   btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn   btn-danger signup-btn active" data-toggle="modal" data-target="#Modal4">No</button>

	</div>  
	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	<label for="email">Master's feedback from Shell chartered vessel was crossed referenced with no major observations. Is this true?
	</label>
		    <input type="email" class="fform-group mb-2" id="ques5a" name="q2" readonly> 
 	
 	</div> </div> <br>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button onClick = "Yes5()" type="submit" class="btn  btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn  btn-danger signup-btn active" data-toggle="modal" data-target="#Modal5">No</button>

	</div>  
	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
 	<label for="email">
 	Berth data and parameters were extracted from Ship Shore Compatibility Check or berth fit check documents provided by the terminal. Is this true?
	</label>
		    <input type="email" class="fform-group mb-2" id="ques6a" name="q2" readonly> 
 	</div> </div><br>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button onClick = "Yes6()" type="submit" class="btn   btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn   btn-danger signup-btn active" data-toggle="modal" data-target="#Modal6">No</button>

	</div>  
	</div>
 	</div>
 	
 	</br></br><label for="comment">Task 2</label>
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	<label for="email">
 The terminal has been inspected by an AP or a company approved Contractor in the past 5 years. All former high observations, if any were closed. 
	</label>
		    <input type="email" class="fform-group mb-2" id="ques7a" name="q2" readonly> 		
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button onClick = "Yes7()" type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#Modal7">No</button>
	</div>  
	</div>
 	</div>
 	
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	<label for="email">
A jetty walkabout has been conducted before by an AP or an approved contractor which may form part of the terminal. 
	</label>
		    <input type="email" class="fform-group mb-2" id="ques8a" name="q2" readonly> 		
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button onClick = "Yes8()" type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#Modal8">No</button>
	</div>  
	</div>
 	</div>
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	<label for="email"> 	
A teleconference between an AP and the terminal operations manager was conducted with no significant observation or issues. (Random sampling of BLC questionnaire used across all chapters) 
	</label>
	<input type="email" class="fform-group mb-2" id="ques9a" name="q2" readonly> 		
 		
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button onClick = "Yes9()" type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#Modal9">No</button>
	</div>  
	</div>
 	</div>
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	<label for="email"> 	
 A written confirmation from the counterparty agreeing to an inspection which will occur within 6 months from the first Shell chartered vessel arrival date.
 	</label>
	<input type="email" class="fform-group mb-2" id="ques10a" name="q2" readonly> 		

 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button onClick = "Yes10()" type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#Modal10">No</button>
	</div>  
	</div>
 	</div>
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	<label for="email"> 	 	
Counterparty has agreed in principle to an inspection which will occur within 12 months from the first Shell chartered vessel arrival date. 
 	</label>
	<input type="email" class="fform-group mb-2" id="ques11a" name="q2" readonly> 		
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button onClick = "Yes11()" type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#Modal11">No</button>
	</div>  
	</div>
 	</div>
 	
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	<label for="email">
Alternative terminals available for the deal due consideration that a vessel feedback / positive vetting may impact future terminal rating. 
 	</label>
	<input type="email" class="fform-group mb-2" id="ques12a" name="q2" readonly> 		
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button onClick = "Yes12()" type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#Modal12">No</button>
	</div>  
	</div>
 	</div>
 	
 	<form action = "AddFullEvalServlet" method = "POST" enctype="multipart/form-data" onsubmit="return checkForm(this);">
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 		<div class="form-group" id = answer display = "none" >
		    <label for="date_inspected">Date of Inspection: </label>
		    <input type="input" class="fform-group mb-2" id="questosa" name="date_inspected"">
	 </div>
	 <br>
	 <label for="SMEinput">SME</label>
 	<fieldset class = "form-group" id = "SMEinput">
	              <select name = "SME">
					  <option value="1" name = "SME">SME1</option>
					  <option value="2" name = "SME">SME2</option>
					  <option value="3" name = "SME">SME3</option>
				  </select>
    </fieldset>
    </div></div>
    
    <div class="form-group" id = answer display = "none" hidden>
		    <label for="type">Eval Type: </label>
		    <input type="input" class="fform-group mb-2" id="questo" name="type" value = "Moved" readonly>
	 </div> 
    
 	<div class="form-group" id = answer display = "none" hidden>
		    <label for="email">Answer 1: </label>
		    <input type="email" class="fform-group mb-2" id="ques1" name="q1" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" hidden>
		    <label for="email">Answer 2: </label>
		    <input type="email" class="fform-group mb-2" id="ques2" name="q2" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" hidden>
		    <label for="email">Answer 3: </label>
		    <input type="email" class="fform-group mb-2" id="ques3" name="q3" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" hidden>
		    <label for="email">Answer 4: </label>
		    <input type="email" class="fform-group mb-2" id="ques4" name="q4" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" hidden>
		    <label for="email">Answer 5: </label>
		    <input type="email" class="fform-group mb-2" id="ques5" name="q5" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" hidden>
		    <label for="email">Answer 6: </label>
		    <input type="email" class="fform-group mb-2" id="ques6" name="q6" readonly>
	 </div> 
	 
	 
	 <div class="form-group" id = answer display = "none" hidden>
		    <label for="email">Answer 7: </label>
		    <input type="email" class="fform-group mb-2" id="ques7" name="q7" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" hidden>
		    <label for="email">Answer 8: </label>
		    <input type="email" class="fform-group mb-2" id="ques8" name="q8" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" hidden>
		    <label for="email">Answer 9: </label>
		    <input type="email" class="fform-group mb-2" id="ques9" name="q9" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" hidden>
		    <label for="email">Answer 10: </label>
		    <input type="email" class="fform-group mb-2" id="ques10" name="q10" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" hidden>
		    <label for="email">Answer 11: </label>
		    <input type="email" class="fform-group mb-2" id="ques11" name="q11" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" hidden>
		    <label for="email">Answer 12: </label>
		    <input type="email" class="fform-group mb-2" id="ques12" name="q12" readonly>
	 </div> 
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<br><button type="submit" class="btn btn-lg btn-warning signup-btn active">Submit</button>
 	</div>
 	</div>
	</form>
</font>
</div>
</div>


<script>
		function Yes1() {
		    document.getElementById("ques1").value = "Yes";
		   
		}
		
		function No1() {
		    document.getElementById("ques1").value = "No: " + document.getElementById("comment1").value;
		    document.getElementById("ques1a").value = "No: " + document.getElementById("comment1").value;		   
		}
		
		function Yes2() {
		    document.getElementById("ques2").value = "Yes";
		   
		}
		
		function No2() {
		    document.getElementById("ques2").value = "No: " + document.getElementById("comment2").value;
		    document.getElementById("ques2a").value = "No: " + document.getElementById("comment2").value;
		   
		}
		
		function Yes3() {
		    document.getElementById("ques3").value = "Yes";
		   
		}
		
		function No3() {
		    document.getElementById("ques3").value = "No: " + document.getElementById("comment3").value;
		    document.getElementById("ques3a").value = "No: " + document.getElementById("comment3").value;
		   
		}
		
		function Yes4() {
		    document.getElementById("ques4").value = "Yes";
		   
		}
		
		function No4() {
		    document.getElementById("ques4").value = "No: " + document.getElementById("comment4").value;
		    document.getElementById("ques4a").value = "No: " + document.getElementById("comment4").value;
		   
		}function Yes5() {
		    document.getElementById("ques5").value = "Yes";
		   
		}
		
		function No5() {
		    document.getElementById("ques5").value = "No: " + document.getElementById("comment5").value;
		    document.getElementById("ques5a").value = "No: " + document.getElementById("comment5").value;
		    
		}
		
		function Yes6() {
		    document.getElementById("ques6").value = "Yes";
		}
		
		function No6() {
		    document.getElementById("ques6").value = "No: " + document.getElementById("comment6").value;
		    document.getElementById("ques6a").value = "No: " + document.getElementById("comment6").value;
		   
		}
		
		function Yes7() {
		    document.getElementById("ques7").value = "Yes";
		   
		}
		
		function No7() {
		    document.getElementById("ques7").value = "No: " + document.getElementById("comment7").value;
		    document.getElementById("ques7a").value = "No: " + document.getElementById("comment6").value;
		   
		}
		function Yes8() {
		    document.getElementById("ques8").value = "Yes";
		   
		}
		
		function No8() {
		    document.getElementById("ques8").value = "No: " + document.getElementById("comment8").value;
		    document.getElementById("ques8a").value = "No: " + document.getElementById("comment6").value;
		   
		}
		function Yes9() {
		    document.getElementById("ques9").value = "Yes";
		   
		}
		
		function No9() {
		    document.getElementById("ques9").value = "No: " + document.getElementById("comment9").value;
		    document.getElementById("ques9a").value = "No: " + document.getElementById("comment6").value;
		   
		}
		function Yes10() {
		    document.getElementById("ques10").value = "Yes";
		   
		}
		
		function No10() {
		    document.getElementById("ques10").value = "No: " + document.getElementById("comment10").value;
		    document.getElementById("ques10a").value = "No: " + document.getElementById("comment6").value;
		   
		}
		function Yes11() {
		    document.getElementById("ques11").value = "Yes";
		   
		}
		
		function No11() {
		    document.getElementById("ques11").value = "No: " + document.getElementById("comment11").value;
		    document.getElementById("ques11a").value = "No: " + document.getElementById("comment6").value;
		   
		}
		function Yes12() {
		    document.getElementById("ques12").value = "Yes";
		   
		}
		
		function No12() {
		    document.getElementById("ques12").value = "No: " + document.getElementById("comment12").value;
		    document.getElementById("ques12a").value = "No: " + document.getElementById("comment6").value;
		   
		}
</script>
</body>
</html>