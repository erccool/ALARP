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
<style>

</style>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ALARP: Start</title>
</head>
<body style="background-color:orange;">
<div class="row"><%@ include file="Navbar.jsp" %>
<nav class="navbar navbar-default nav2">

	<div class="container-fluid">
		  <ul class="nav navbar-nav">
		      <li><a href="Display?page=Analog">Approved</a></li>
		      <li><a href="Display?page=SmartWatch">Not Approved</a></li>
		      <li class ="active"><a href="ReviewPartThree.jsp">Moved to a later date</a></li>	      
		      <li><a href="Display?page=SmartWatch">Terminal is Located at a Remote Area</a></li>
		      <li><a href="Display?page=SmartWatch">SME Decision Support</a></li>
		      <c:if test="${sessionScope.username != null}">
		      <li><a href="AIONProfile">Profile</a></li>
		      
		      </c:if>
		      <c:if test="${sessionScope.cartnum != null}">
		      <li><a href="CartProducts">Cart</a></li>
		      </c:if>
		      
		      
		 </ul>
	</div>
</nav></div></br>
<div class="container">
<div class="panel panel-primary">
	<div class="panel-heading">  
 		<h4 class = "text-center"><font color="orange">Moved to a later date</font></h4>
 	</div>
 	<nav class="navbar navbar-default nav3">

		<div class="container-fluid">
			  <ul class="nav navbar-nav">
			      <li class ="active"><a href="ReviewPartThreea.jsp">Task 1</a></li>
			      <li class ="active"><a href="ReviewPartThreeb.jsp">Task 2</a></li>
			      <li class ="active"><a href="ReviewPartThreec.jsp">Task 3</a></li>
			      <li class ="active"><a href="ReviewPartThreed.jsp">Task 4</a></li>
			      <li class ="active"><a href="ReviewPartThreee.jsp">Task 5</a></li>
			      <li><a href="ReviewPartThref.jsp">Task 6</a></li>
			      <c:if test="${sessionScope.username != null}">
			      <li><a href="AIONProfile">Profile</a></li>
			      
			      </c:if>
			      <c:if test="${sessionScope.cartnum != null}">
			      <li><a href="CartProducts">Cart</a></li>
			      </c:if>
			      
			      
			      
			 </ul>
		</div>
	</nav>
 	<div class="panel-body">
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
 	 Counterparty has agreed in principle to an inspection which will occur within 12 months from the first Shell chartered vessel arrival date. 
	 Is this correct?
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
	<button type="submit" class="btn btn-lg btn-primary signup-btn active">Yes</button>

	</div>  
	
	<div class = "col-md-3 col-sm-3 col-xs-12 ">
	<button type="submit" class="btn btn-lg btn-danger signup-btn active">No</button>

	</div>  
	</div>
 	</div>
 	
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	
 	<div class="form-group">
	  <label for="comment">Explain:</label>
	  <textarea class="form-control" rows="5" id="comment"></textarea>
	</div>
 	
 	</div>
 	</div>
 	
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<button type="submit" class="btn btn-lg btn-warning signup-btn active">Continue</button>
 	</div>
 	</div>
 	<%-- --<label for="Yes">Legal implications & Other restrictions (Check all that apply)</label>
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
	
	<label for="Yes">Commitments regarding next inspection (Check all that apply)</label>
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
	<div class="form-group">
	  <label for="comment">Other problems that prevent inspection (If Any)</label>
	  <textarea class="form-control" rows="5" id="comment"></textarea>
	</div>
	 <fieldset class="form-group">
                <label for="exampleInputFile">Upload Image Proof Of Problem/s</label>
                <input type="file" class="form-control-file" id="exampleInputFile" name= "filename" required>
    </fieldset>
	<div class="col-md-8  col-md-offset-6"><button type="submit" class="btn btn-danger" onclick ="checkForm()">Finish Review</button><br>
	</div> --%>

</div>
</div>
</body>
</html>