<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<html>
<head>
<link rel="stylesheet" href="Style/bootstrap-4.0.0-dist/bootstrap.css">
<link rel="stylesheet" type="text/css" href="Style/styles.css">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Email</title>
</head>
<body>
	<form action = "MailDispatcherServlet" method = "POST" enctype="multipart/form-data" onsubmit="return checkForm(this);">
              <fieldset class="form-group">
                <input type="text" class="form-control input-lg" id="formGroupExampleInput" placeholder="To" name = "email">
              </fieldset>
              <fieldset class="form-group">
                <input type="text" class="form-control input-lg" id="formGroupExampleInput2" placeholder="Subject" name = "subject">
              </fieldset>
              <fieldset class="form-group">
                <textarea rows="3" class="form-control" id="formGroupExampleInput2" placeholder="Email Body" name = "message"> </textarea>
              </fieldset>
              <input type = "submit" a href = "Home.jsp" button type="submit" class="btn btn-info btn-lg"></a>

        </form>
</body>
</html>