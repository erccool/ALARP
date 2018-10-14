<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<%   
	String host ="smtp.gmail.com" ;
	String user = "edward_curugan@dlsu.edu.ph";
	String pass = "Oggbog12!";
	String to = "edward_curugan@dlsu.edu.ph";
	String from = "edward_curugan@dlsu.edu.ph";
	String subject = "New itu";
	String messageText = "Your Is Test Email :";
	boolean sessionDebug = false;

   // Assuming you are sending email from localhost
   // Get system properties object
   Properties props = System.getProperties();

   // Setup mail server
   props.put("mail.smtp.starttls.enable", "true");
   props.put("mail.smtp.host", host);
   props.put("mail.smtp.port", "587");
   props.put("mail.smtp.auth", "true");
   props.put("mail.smtp.starttls.required", "true");
   props.put("mail.smtp.ssl.trust", "smtp.gmail.com");

   // Get the default Session object.
   Session mailSession = Session.getDefaultInstance(props, null);
   mailSession.setDebug(sessionDebug);

   try {
	   Message msg = new MimeMessage(mailSession);
       msg.setFrom(new InternetAddress(from));
       InternetAddress[] address = {new InternetAddress(to)};
       msg.setRecipients(Message.RecipientType.TO, address);
       msg.setSubject(subject); msg.setSentDate(new Date());
       msg.setText(messageText);
      Transport transport=mailSession.getTransport("smtp");
      transport.connect(host, user, pass);
     
      transport.sendMessage(msg, msg.getAllRecipients());
      transport.close();
   } catch (MessagingException mex) {
      mex.printStackTrace();
   }
%>

<html>
   <head>
      <title>Send Email using JSP</title>
   </head>
   
   <body>
      <center>
         <h1>Send Email using JSP</h1>
      </center>
      
      <p align = "center">
         <% 
            out.println("Result: \n");
         %>
      </p>
   </body>
</html>