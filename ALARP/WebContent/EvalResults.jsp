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
		      <li><a href="Home.jsp"><font color="orange">Decide On Forms</font></a></li>
		      <li><a href="WelcomeReview.jsp"><font color="orange">Submit Review</font></a></li>
		      <li><a href="Display?page=Digital"><font color="orange">View Past Reviews</font></a></li>
		 </ul>
		<div class = "pull-right"><a href = "SignUp.jsp"><button type="button" class="btn btn-danger">Sign Up</button></a></div>
		<div class = "pull-right"><button type="submit" class="btn btn-warning" onclick ="checkForm()">Login</button><br></div>
		
	    
	</div>
</nav>
</br>
<div class="container">
<div class="panel panel-warning">
	<div class="panel-heading">  
 		<h4 class = "text-center"><font color="orange">Not Approved</font></h4>
 	</div>
 	
 	<div class="panel-body">
 	
 	<div class = "col-md-6 col-md-offset-3">
 	</div>
 	
 	</br></br><label for="comment">Terminal & Associated asset Review</label>
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
 Is there any third party available?
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" readonly>${eval[0].q1}</textarea>


	</div>  
	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
The terminal operator is reputable and operates in accordance to OCIMF / SIGTTO guidelines and recommendations. Is this true?
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" readonly>${eval[0].q2}</textarea>

	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
Terminal provided critical information. Is this true?
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" readonly>${eval[0].q3}</textarea>

	</div>  
	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
The terminal has submitted a valid MTMSA and it has been reviewed by an AP. Is this true?	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" readonly>${eval[0].q4}</textarea>


	</div>  
	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
Master's feedback from Shell chartered vessel was crossed referenced with no major observations. Is this true?
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" readonly>${eval[0].q5}</textarea>

	</div>  
	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
Berth data and parameters were extracted from Ship Shore Compatibility Check or berth fit check documents provided by the terminal. Is this true?
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class="form-group"><div class = "col-md-9 col-sm-3 col-xs-12 ">
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" readonly>${eval[0].q6}</textarea>
    </div>
  </div> 
	</div>
 	</div>
 	
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<form action = "SupportServlet" method = "POST" enctype="multipart/form-data" onsubmit="return checkForm(this);">
 	
 	<div class = "col-md-3 col-sm-3 col-xs-12 ">
 	<div class="form-group" id = answer display = "none" >
		    <input type="email" class="fform-group mb-2" id="id" name="id" readonly value="${eval[0].ideval}" hidden>
	 </div> 
	 <div class="form-group" id = answer display = "none" >
		    <input type="email" class="fform-group mb-2" id="decision" name="decision" readonly value="Supported" hidden>
	 </div> 
		<button type="submit" class="btn btn-lg btn-warning signup-btn active">Supported</button></a>
	
		</div>  
	</form>	
	<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#exampleModal">Supported with conditions</button>
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Please provide conditions</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <fieldset class="form-group">
				<div class="form-group">
				  <textarea class="form-control" rows="5" id="comment1" name = "decision" > </textarea>
				</div>              
				</fieldset>
		      </div>
		      <div class="modal-footer">
		        <button onClick="No1()" type="button" class="btn btn-warning" data-dismiss="modal">Submit</button>
		      </div>
		    </div>
		  </div>
		</div>
	</div>
 	</div>

</div>
</div>

<script>

function No1() {
    document.getElementById("decision").value = "Supported if: " + document.getElementById("comment1").value;
   
}

</script>
</body>
</html>