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
</br>
<div class="container">
<div class="panel panel-warning">
	<div class="panel-heading">  
 		<h4 class = "text-center"><font color="orange">${eval[0].type}</font></h4>
 	</div>
 	
 	<div class="panel-body">
 	
 	
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
 	<br><label for="section1">Task 2</label>
 	<div id="section1" class = "row"><div class = "col-md-6 col-md-offset-3">
 	
 The terminal has been inspected by an AP or a company approved Contractor in the past 5 years. All former high observations, if any were closed. 
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" readonly>${eval[0].q7}</textarea>

	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
A jetty walkabout has been conducted before by an AP or an approved contractor which may form part of the terminal. 
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" readonly>${eval[0].q8}</textarea>

	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
A teleconference between an AP and the terminal operations manager was conducted with no significant observation or issues. (Random sampling of BLC questionnaire used across all chapters) 
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" readonly>${eval[0].q9}</textarea>

	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
 A written confirmation from the counterparty agreeing to an inspection which will occur within 6 months from the first Shell chartered vessel arrival date.
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" readonly>${eval[0].q10}</textarea>

	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
Counterparty has agreed in principle to an inspection which will occur within 12 months from the first Shell chartered vessel arrival date. 
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" readonly>${eval[0].q11}</textarea>

	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
Alternative terminals available for the deal due consideration that a vessel feedback / positive vetting may impact future terminal rating. 
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" readonly>${eval[0].q12}</textarea>

	</div>
 	</div>
 	
 	<br><br><br><br><label for="section2">Task 3</label><br><br>
 	<div id = "section2"class = "row"><div class = "col-md-6 col-md-offset-3">
 	
No major findings from indepth research conducted by AP which covers safe port and safe berth criterias (Ref MPM OPS.10.05) along with critical navigational approaches to and from the berth. 
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" readonly>${eval[0].q13}</textarea>

	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
Information was extracted from the company's website and/or from the agents or 3rd Party source and has been reviewed by an AP. 
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" readonly>${eval[0].q14}</textarea>

	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
Current available AP and approved company contractors do not have appropriate visa or diplomatic ties to carry out an inspection. i.e Israels, Qatar, Iran and etc. 
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" readonly>${eval[0].q15}</textarea>

	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
Local port requirements or authorities do not permit entry into the terminal.  	
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" readonly>${eval[0].q16}</textarea>

	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
Travel cost has been reviewed and found to be grossly disproportion.  i.e charter a private helicopter
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" readonly>${eval[0].q17}</textarea>

	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
 Available AP or approved company contractors unable to comply with company's business travel requirements due to HSSE alerts, remoteness of terminal, war/high risk and etc. 
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" readonly>${eval[0].q18}</textarea>

	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
Long term contract includes contractual inspection rights. 
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" readonly>${eval[0].q19}</textarea>

	</div>
 	</div>
 	
 	<div class = "row"><div class = "col-md-6 col-md-offset-3">
 	
Business contractual obligations requires to be managed i.e existing contract, inherited, major loss of revenue.
 	
 	</div> </div>
 	<div class = "row">
 	<div class = "col-md-6 col-md-offset-3">
 	<div class = "col-md-9 col-sm-3 col-xs-12 ">
		    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" readonly>${eval[0].q20}</textarea>

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