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
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body style="background-color:orange;">

<div class="row"><%@ include file="Navbar.jsp" %></div></br>

<div class = "container">
  	<div class="panel panel-default">
      	<div class="panel-heading"><h4 >Your Reviews</h4></div>
       			<div class="panel-body">
				<table class="table">  				
					  <thead>
					    <tr>
					      <th scope="col">ID</th>
					      <th scope="col">Terminal Name</th>
					      <th scope="col">Date Submitted</th>
					      <th scope="col">SME Decision</th>
					      <th scope="col">View</th>
					      <th scope="col">Edit</th>
					      <th scope="col">Delete</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
					      <td>I</td>
					      <td>Juan De La Cruz</td>
					      <td>10-10-19</td>
					      <td>Supported</td>
					      <td><a href="#" class="btn btn-primary a-btn-slide-text">
						        <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>           
						      </a>
						  </td>
						  <td><a href="#" class="btn btn-warning a-btn-slide-text">
						        <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>	                 
						      </a>
						  </td>
	    				  <td><a href="#" class="btn btn-danger a-btn-slide-text">
						       <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>         
						      </a>
						  </td>	
					    </tr>
					  </tbody>
			</table>
			</div>
			</div>
			
			
</div>
</body>
</html>