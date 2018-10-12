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
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ALARP: Start</title>
</head>
<body style="background-color:orange;">
<nav class="nnavbar navbar-inverse navbar-static-top nav-upper nav1">
<div class="row">
<div class="container-fluid">
		<a class="navbar-brand"><img src="Shell.png" alt="Dispute Bills" height = 120% >
        </a>
		  <ul class="nav navbar-nav">
		      <li><a href="WelcomeReview.jsp"><font color="orange">Submit Review</font></a></li>
		      <li><a href="Display?page=Digital"><font color="orange">View Past Reviews</font></a></li>
		 </ul>
		<c:choose>
  				<c:when test="${sessionScope.iduser != null}">
  				<form action="Logout" class="navbar-form navbar-right">
      				<input type="submit" class="btn btn-info" value="Logout" onclick = "myFunction2()">
      				<script>
						function myFunction2() {
    					alert("Successfully Logged Out.");
						}
						
					</script>
      			</form>
                </c:when>
                <c:otherwise>
                <div class = "pull-right"><button type="submit" class="btn btn-danger"data-toggle="modal" data-target="#ModalLogin">Login</button><br></div> 
				<form id="signin" class="navbar-form navbar-right" role="form" action="Login" method="post">
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
								  <div class="form-group">
								    <label for="uname">Username</label>
								    <input id="uname" type="text" class="form-control" name="username" placeholder="username">
								  </div>
								  <div class="form-group">
								    <label for="exampleInputPassword1">Password</label>
								    <input id="password" type="password" class="form-control" name="password" placeholder ="password">
								  </div>										      
							  </div>
						      <div class="modal-footer">
						        <button type="submit" class="btn btn-danger" >Login</button>
						        <button type="button" class="btn btn-warning">Cancel</button>
						      </div>
					      	
					    </div>
					  </div>
					</div>  
				</form>              
                </c:otherwise>
    		</c:choose>	
		
	    
	</div>
</nav>
<nav class="navbar navbar-default nav2">

	<div class="container-fluid">
		  <ul class="nav navbar-nav">
		      <li><a href="NotApproved.jsp">Not Approved</a></li>
		      <li ><a href="Moved.jsp">Moved to a later date</a></li>	      
		      <li><a href="NotLocated.jsp">Terminal is Located at a Remote Area</a></li>
		      <li><a href="Desktop.jsp">Desktop Review</a></li>
		      <li><a href="Unproven.jsp">Unproven Technology</a></li> 
		      
		      
		 </ul>
	</div>
</nav></div></br>

<div class="container">
<div class="panel panel-warning">
	<div class="panel-heading">  
 		<h4 class = "text-center"><font color="orange">Welcome</font></h4>
 	</div>
 	
	
<div class="panel panel-default">
       			<div class="panel-body">
       			Reminder: It is expected that all downstream 3rd party terminals will be inspected prior to usage (MMG05), 
 	however there are circumstances whereby an inspection is unable to take place prior to the required date, 
 	resource constrain or not permitted. 
 				
				<%--  <table class="table">  				
					  <thead>
					    <tr>
					      <th scope="col">ID</th>
					      <th scope="col">Terminal Name</th>
					      <th scope="col">Date Submitted</th>
					      <th scope="col">Monitor</th>
					      <th scope="col">Edit</th>
					      <th scope="col">SME Decision</th>
					      
					      
					      <th scope="col">Status</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
					      <td>I</td>
					      <td>Juan De La Cruz</td>
					      <td>10-10-19</td>
					      <td><a href="#" class="btn btn-primary a-btn-slide-text">
						        <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>           
						      </a>
						  </td>
						  <td><a href="#" class="btn btn-warning a-btn-slide-text">
						        <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>	                 
						      </a>
						  </td>
					      <td>Supported</td>
					      
					      
						  
	    				  <td><span class="badge badge-warning">Success</span>
						  </td>	
					    </tr>
					  </tbody>
			</table> --%>
			</div>
			</div>
</div>
</div>
</body>
</html>