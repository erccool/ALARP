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
		      <li ><a href="NotApproved.jsp">Not Approved</a></li>
		      <li ><a href="Moved.jsp">Moved to a later date</a></li>	      
		      <li><a href="NotLocated.jsp">Terminal is Located at a Remote Area</a></li>
		      <li class ="active"><a href="Desktop.jsp">Desktop Review</a></li>
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

<div class="modal fade" id="Modal13" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
				  <textarea class="form-control" rows="5" id="comment13" > </textarea>
				</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		        <button onClick="No13()" type="button" class="btn btn-warning" data-dismiss="modal">Save</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="Modal14" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
				  <textarea class="form-control" rows="5" id="comment14" > </textarea>
				</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		        <button onClick="No14()" type="button" class="btn btn-warning" data-dismiss="modal">Save</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="Modal15" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
				  <textarea class="form-control" rows="5" id="comment15" > </textarea>
				</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		        <button onClick="No15()" type="button" class="btn btn-warning" data-dismiss="modal">Save</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="Modal16" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
				  <textarea class="form-control" rows="5" id="comment16" > </textarea>
				</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		        <button onClick="No16()" type="button" class="btn btn-warning" data-dismiss="modal">Save</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="Modal17" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
				  <textarea class="form-control" rows="5" id="comment17" > </textarea>
				</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		        <button onClick="No17()" type="button" class="btn btn-warning" data-dismiss="modal">Save</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="Modal18" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
				  <textarea class="form-control" rows="5" id="comment18" > </textarea>
				</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		        <button onClick="No18()" type="button" class="btn btn-warning" data-dismiss="modal">Save</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="Modal19" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
				  <textarea class="form-control" rows="5" id="comment19" > </textarea>
				</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		        <button onClick="No19()" type="button" class="btn btn-warning" data-dismiss="modal">Save</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="Modal20" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
				  <textarea class="form-control" rows="5" id="comment20" > </textarea>
				</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		        <button onClick="No20()" type="button" class="btn btn-warning" data-dismiss="modal">Save</button>
      </div>
    </div>
  </div>
</div>

<div class="container">
<div class="panel panel-warning">
		
	<div class="panel-heading">  
 		<h4 class = "text-center"><font color="orange">Desktop Review</font></h4>
 	</div>
 	
 	
 	
 	<div class="panel-body">
 	
 	<div class = "col-md-6 col-md-offset-3">
 	
Terminal has been extended repeatedly on the basis of a desk top review, however the annual exposure exceed over 100 clearance per annum or the terminal requires a CARM waiver.
 	
 	
 	</div>
 	
 	</br></br></br></br></br><label for="comment">Terminal & Associated asset Review</label>
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
 Is there any third party available?
 	
 	</div> </div>
 	
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button onClick = "Yes1()" type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#Modal1">No</button>

	</div>  
	</div>
 	</div>
	 
	
 	
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
The terminal operator is reputable and operates in accordance to OCIMF / SIGTTO guidelines and recommendations. Is this true?
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button onClick = "Yes2()" type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#Modal2">No</button>
	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
Terminal provided critical information. Is this true?
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button onClick = "Yes3()" type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#Modal3">No</button>`
	</div>  
	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
The terminal has submitted a valid MTMSA and it has been reviewed by an AP. Is this true?	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button onClick = "Yes4()" type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#Modal4">No</button>

	</div>  
	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
Master's feedback from Shell chartered vessel was crossed referenced with no major observations. Is this true?
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button onClick = "Yes5()" type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#Modal5">No</button>

	</div>  
	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
Berth data and parameters were extracted from Ship Shore Compatibility Check or berth fit check documents provided by the terminal. Is this true?
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button onClick = "Yes6()" type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#Modal6">No</button>

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
		<button onClick = "Yes7()" type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#Modal7">No</button>
	</div>  
	</div>
 	</div>
 	
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
A jetty walkabout has been conducted before by an AP or an approved contractor which may form part of the terminal. 

 	
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
 	
A teleconference between an AP and the terminal operations manager was conducted with no significant observation or issues. (Random sampling of BLC questionnaire used across all chapters) 

 	
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
 	
 A written confirmation from the counterparty agreeing to an inspection which will occur within 6 months from the first Shell chartered vessel arrival date.
 	
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
 	
Counterparty has agreed in principle to an inspection which will occur within 12 months from the first Shell chartered vessel arrival date. 
 	
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
 	
Alternative terminals available for the deal due consideration that a vessel feedback / positive vetting may impact future terminal rating. 
 	
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
 	
 	
 	</br></br><label for="comment">Task 3</label>
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
No major findings from indepth research conducted by AP which covers safe port and safe berth criterias (Ref MPM OPS.10.05) along with critical navigational approaches to and from the berth. 

 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button onClick = "Yes13()" type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#Modal13">No</button>
	</div>  
	</div>
 	</div>
 	
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
Information was extracted from the company's website and/or from the agents or 3rd Party source and has been reviewed by an AP. 

 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button onClick = "Yes14()" type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#Modal14">No</button>
	</div>  
	</div>
 	</div>
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
Current available AP and approved company contractors do not have appropriate visa or diplomatic ties to carry out an inspection. i.e Israels, Qatar, Iran and etc. 

 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button onClick = "Yes15()" type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#Modal15">No</button>
	</div>  
	</div>
 	</div>
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
Local port requirements or authorities do not permit entry into the terminal.  	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button onClick = "Yes16()" type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#Modal16">No</button>
	</div>  
	</div>
 	</div>
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
Travel cost has been reviewed and found to be grossly disproportion.  i.e charter a private helicopter
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button onClick = "Yes17()" type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#Modal17">No</button>
	</div>  
	</div>
 	</div>
 	
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
 Available AP or approved company contractors unable to comply with company's business travel requirements due to HSSE alerts, remoteness of terminal, war/high risk and etc. 
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button onClick = "Yes18()" type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#Modal18">No</button>
	</div>  
	</div>
 	</div>
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
Long term contract includes contractual inspection rights. 
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button onClick = "Yes19 ()"type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#Modal19">No</button>
	</div>  
	</div>
 	</div>
 	
 	<div class = "row" id = "comment"><div class = "col-md-6 col-md-offset-3">
 	
Business contractual obligations requires to be managed i.e existing contract, inherited, major loss of revenue.
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		<button onClick = "Yes20()" type="submit" class="btn btn-lg btn-warning signup-btn active">Yes</button>
	
		</div>  
		
		<div class = "col-md-3 col-sm-3 col-xs-12 ">
		<button type="submit" class="btn btn-lg btn-danger signup-btn active" data-toggle="modal" data-target="#Modal20">No</button>
	</div>  
	</div>
 	</div>
 	<form action = "AddFullEvalServlet" method = "POST" enctype="multipart/form-data" onsubmit="return checkForm(this);">
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 
    </div></div>
    
    <div class="form-group" id = answer display = "none" >
		    <label for="type">Eval Type: </label>
		    <input type="input" class="fform-group mb-2" id="questo" name="type" value = "Desktop Review">
	 </div> 
    
 	<div class="form-group" id = answer display = "none" >
		    <label for="email">Answer 1: </label>
		    <input type="email" class="fform-group mb-2" id="ques1" name="q1" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" >
		    <label for="email">Answer 2: </label>
		    <input type="email" class="fform-group mb-2" id="ques2" name="q2" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" >
		    <label for="email">Answer 3: </label>
		    <input type="email" class="fform-group mb-2" id="ques3" name="q3" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" >
		    <label for="email">Answer 4: </label>
		    <input type="email" class="fform-group mb-2" id="ques4" name="q4" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" >
		    <label for="email">Answer 5: </label>
		    <input type="email" class="fform-group mb-2" id="ques5" name="q5" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" >
		    <label for="email">Answer 6: </label>
		    <input type="email" class="fform-group mb-2" id="ques6" name="q6" readonly>
	 </div> 
	 
	 
	 <div class="form-group" id = answer display = "none" >
		    <label for="email">Answer 7: </label>
		    <input type="email" class="fform-group mb-2" id="ques7" name="q7" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" >
		    <label for="email">Answer 8: </label>
		    <input type="email" class="fform-group mb-2" id="ques8" name="q8" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" >
		    <label for="email">Answer 9: </label>
		    <input type="email" class="fform-group mb-2" id="ques9" name="q9" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" >
		    <label for="email">Answer 10: </label>
		    <input type="email" class="fform-group mb-2" id="ques10" name="q10" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" >
		    <label for="email">Answer 11: </label>
		    <input type="email" class="fform-group mb-2" id="ques11" name="q11" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" >
		    <label for="email">Answer 12: </label>
		    <input type="email" class="fform-group mb-2" id="ques12" name="q12" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" >
		    <label for="email">Answer 13: </label>
		    <input type="email" class="fform-group mb-2" id="ques13" name="q13" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" >
		    <label for="email">Answer 14: </label>
		    <input type="email" class="fform-group mb-2" id="ques14" name="q14" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" >
		    <label for="email">Answer 15: </label>
		    <input type="email" class="fform-group mb-2" id="ques15" name="q15" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" >
		    <label for="email">Answer 16: </label>
		    <input type="email" class="fform-group mb-2" id="ques16" name="q16" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" >
		    <label for="email">Answer 17: </label>
		    <input type="email" class="fform-group mb-2" id="ques17" name="q17" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" >
		    <label for="email">Answer 18: </label>
		    <input type="email" class="fform-group mb-2" id="ques18" name="q18" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" >
		    <label for="email">Answer 19: </label>
		    <input type="email" class="fform-group mb-2" id="ques19" name="q19" readonly>
	 </div> 
	 
	 <div class="form-group" id = answer display = "none" >
		    <label for="email">Answer 20: </label>
		    <input type="email" class="fform-group mb-2" id="ques20" name="q20" readonly>
	 </div> 
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<button type="submit" class="btn btn-lg btn-warning signup-btn active">Submit</button>
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
		   
		}
		
		function Yes2() {
		    document.getElementById("ques2").value = "Yes";
		   
		}
		
		function No2() {
		    document.getElementById("ques2").value = "No: " + document.getElementById("comment2").value;
		   
		}
		
		function Yes3() {
		    document.getElementById("ques3").value = "Yes";
		   
		}
		
		function No3() {
		    document.getElementById("ques3").value = "No: " + document.getElementById("comment3").value;
		   
		}
		
		function Yes4() {
		    document.getElementById("ques4").value = "Yes";
		   
		}
		
		function No4() {
		    document.getElementById("ques4").value = "No: " + document.getElementById("comment4").value;
		   
		}function Yes5() {
		    document.getElementById("ques5").value = "Yes";
		   
		}
		
		function No5() {
		    document.getElementById("ques5").value = "No: " + document.getElementById("comment5").value;
		   
		}
		
		function Yes6() {
		    document.getElementById("ques6").value = "Yes";
		   
		}
		
		function No6() {
		    document.getElementById("ques6").value = "No: " + document.getElementById("comment6").value;
		   
		}
		
		function Yes7() {
		    document.getElementById("ques7").value = "Yes";
		   
		}
		
		function No7() {
		    document.getElementById("ques7").value = "No: " + document.getElementById("comment7").value;
		   
		}
		function Yes8() {
		    document.getElementById("ques8").value = "Yes";
		   
		}
		
		function No8() {
		    document.getElementById("ques8").value = "No: " + document.getElementById("comment8").value;
		   
		}
		function Yes9() {
		    document.getElementById("ques9").value = "Yes";
		   
		}
		
		function No9() {
		    document.getElementById("ques9").value = "No: " + document.getElementById("comment9").value;
		   
		}
		function Yes10() {
		    document.getElementById("ques10").value = "Yes";
		   
		}
		
		function No10() {
		    document.getElementById("ques10").value = "No: " + document.getElementById("comment10").value;
		   
		}
		function Yes11() {
		    document.getElementById("ques11").value = "Yes";
		   
		}
		
		function No11() {
		    document.getElementById("ques11").value = "No: " + document.getElementById("comment11").value;
		   
		}
		function Yes12() {
		    document.getElementById("ques12").value = "Yes";
		   
		}
		
		function No12() {
		    document.getElementById("ques12").value = "No: " + document.getElementById("comment12").value;
		   
		}
		function Yes13() {
		    document.getElementById("ques13").value = "Yes";
		   
		}
		
		function No13() {
		    document.getElementById("ques13").value = "No: " + document.getElementById("comment13").value;
		   
		}
		function Yes14() {
		    document.getElementById("ques14").value = "Yes";
		   
		}
		
		function No14() {
		    document.getElementById("ques14").value = "No: " + document.getElementById("comment14").value;
		   
		}
		function Yes15() {
		    document.getElementById("ques15").value = "Yes";
		   
		}
		
		function No15() {
		    document.getElementById("ques15").value = "No: " + document.getElementById("comment15").value;
		   
		}
		function Yes16() {
		    document.getElementById("ques16").value = "Yes";
		   
		}
		
		function No16() {
		    document.getElementById("ques16").value = "No: " + document.getElementById("comment16").value;
		   
		}
		function Yes17() {
		    document.getElementById("ques17").value = "Yes";
		   
		}
		
		function No17() {
		    document.getElementById("ques17").value = "No: " + document.getElementById("comment17").value;
		   
		}
		function Yes18() {
		    document.getElementById("ques18").value = "Yes";
		   
		}
		
		function No18() {
		    document.getElementById("ques18").value = "No: " + document.getElementById("comment18").value;
		   
		}
		function Yes19() {
		    document.getElementById("ques19").value = "Yes";
		   
		}
		
		function No19() {
		    document.getElementById("ques19").value = "No: " + document.getElementById("comment19").value;
		   
		}
		function Yes20() {
		    document.getElementById("ques20").value = "Yes";
		   
		}
		
		function No20() {
		    document.getElementById("ques20").value = "No: " + document.getElementById("comment20").value;
		   
		}
</script>
</body>
</html>