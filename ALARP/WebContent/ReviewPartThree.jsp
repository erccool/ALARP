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
 		<h4 class = "text-center"><font color="orange">ALARP Decision</font></h4>
 	</div>
 	<div class="panel-body">
 	<div class = "col-md-6 col-md-offset-3">
 	<label for="Yes">SME Decision Support</label>
 	<fieldset class = "form-group"  id="Yes">
	              <select name = "type">
					  <option value="Supported" name = "type">Supported</option>
					  <option value="Supported if the below action plan is implemented" name = "type">Supported if the below action plan is implemented</option>
					  <option value="Rejected" name = "type">Rejected </option>
					  <option value="Escalated to RMM " name = "type">Escalated to RMM  </option>
				  </select>
    </fieldset>
	<div class="form-group">
	  <label for="comment">Action Plan</label>
	  <textarea class="form-control" rows="5" id="comment"></textarea>
	</div>
	<label for="Assigned">Assigned To</label>
	<fieldset class="form-group" id="Assigned">
      <input type="text" class="form-control input-lg" id="formGroupExampleInput" placeholder="Name" name = "name" required>
    </fieldset>
    <div class="form-group">
	  <label for="comment">Remarks</label>
	  <textarea class="form-control" rows="5" id="comment"></textarea>
	</div>
	<label for="Yes2">Action Closeout</label>
 	<fieldset class = "form-group"  id="Yes2">
	              <select name = "type">
					  <option value="Supported" name = "type">Supported</option>
					  <option value="Supported if the below action plan is implemented" name = "type">Supported if the below action plan is implemented</option>
					  <option value="Rejected" name = "type">Rejected </option>
					  <option value="Escalated to RMM " name = "type">Escalated to RMM  </option>
				  </select>
    </fieldset>
	<div class="col-md-8  col-md-offset-6"><button type="submit" class="btn btn-danger" onclick ="checkForm()">Finish Review</button><br>
	</div>
</div>
</div>
</div>
</body>
</html>