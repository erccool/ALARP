<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="Style/styles.css">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body style="background-color:orange;">

<div class="row">
<nav class="nnavbar navbar-inverse navbar-static-top nav-upper nav1">

	<div class="container-fluid">
		<a class="navbar-brand"><img src="Shell.png" alt="Dispute Bills" height = 120% >
        </a>
		  <ul class="nav navbar-nav">
		      <li><a href="Home.jsp"><font color="orange">Decide on forms</font></a></li>
		      <li><a href="WelcomeReview.jsp"><font color="orange">Submit Review</font></a></li>
		      <li><a href="Display?page=Digital"><font color="orange">View Past Reviews</font></a></li>
		 </ul>
		<div class = "pull-right"><a href = "SignUp.jsp"><button type="button" class="btn btn-warning">Sign Up</button></a></div>
		<div class = "pull-right"><button type="submit" class="btn btn-danger"data-toggle="modal" data-target="#ModalLogin">Login</button><br></div>
		<div class="modal fade" id="ModalLogin" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Login</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <form>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
</form>		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal">Login</button>
		        <button type="button" class="btn btn-warning">Cancel</button>
		      </div>
		    </div>
		  </div>
		</div>
		
	    
	</div>
</nav>
</div></br>

<div class = "container">
  	<div class="panel panel-default">
      	<div class="panel-heading"><h4 >All Evaluations</h4></div>
       			<div class="panel-body">
				<table class="table">  				
					  <thead>
					    <tr>
					      <th scope="col">ID</th>
					      <th scope="col">Submitted by</th>
					      <th scope="col">Date Submitted</th>
					      <th scope="col">Evaluators Decision</th>
					      <th scope="col">SME Decision</th>
					      <th scope="col">View</th>
					      <th scope="col">Delete</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
					      <td>I</td></a>
					      <td>Juan De La Cruz</td>
					      <td>10-10-19</td>
					      <td>Not Approved</td>
					      <td>Supported</td>
					      <td><a href="EvalResults.jsp" class="btn btn-warning a-btn-slide-text">
						        <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>           
						      </a>
						  </td>
	    				  <td><a href="#" class="btn btn-danger a-btn-slide-text">
						       <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>         
						      </a>
						  </td>	
						  </a>
					    </tr>
					  </tbody>
			</table>
			</div>
			</div>
			
			
</div>
</body>
</html>