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
		      <li class ="active"><a href="NotApproved.jsp">Not Permitted</a></li>
		      <li ><a href="Moved.jsp">Moved to a later date</a></li>	      
		      <li><a href="NotLocated.jsp">Located at a Remote Area</a></li>
		      <li><a href="Desktop.jsp">Annual exposure exceeded over 100 clearance / CARM waiver</a></li>
		      <li><a href="Unproven.jsp">Unproven Technology</a></li> 
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

<div class="container">
<div class="panel panel-warning">
		
	<div class="panel-heading">  
 		<h4 class = "text-center"><font color="orange">Not Approved</font></h4>
 	</div>
 	
 	
 	
 	<div class="panel-body">
 	
 	<div class = "col-md-6 col-md-offset-3">
 	
 	Terminal operator does NOT permit an inspection by Shell. 
 	
 	
 	</div>
 	
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
 	
 	<label for="email">Berth data and parameters were extracted from Ship Shore Compatibility Check or berth fit check documents provided by the terminal. Is this true?
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
 	<form action = "AddEvalServlet" method = "POST" enctype="multipart/form-data" onsubmit="return checkForm(this);">
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
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
    
 	<div class="form-group" id = answer display = "none" >
		    <label for="email" hidden>Answer 1: </label>
		    <input type="email" class="fform-group mb-2" id="ques1" name="q1" readonly hidden>
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
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<button type="submit" class="btn  btn-warning signup-btn active">Submit</button>
 	</div>
 	</div>
	</form>
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
</script>
</body>
</html>