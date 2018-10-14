package com.alarp.javabean;

import javax.ejb.*;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.*;

import java.util.Properties;


/**
 * Session Bean implementation class MailSenderBean
 */
@Stateless
public class MailSenderBean {

    public void Sendemail(String fromEmail, String username, String password,
    					  String toEmail, String subject, String message) {
    	
    	
    	System.out.println("Pasok yung username dito boi" + toEmail);

    	try {
    		Properties props = System.getProperties();
        	props.put("mail.smtp.host", "smtp.gmail.com");
        	props.put("mail.smtp.auth", "true");
        	props.put("mail.smtp.port", "465");
        	props.put("mail.smtp.socketFactory.class", "javax.net.SSLSocketFactory");
        	props.put("mail.smtp.socketFactory.class", "465");
        	props.put("mail.smtp.socketFactory.fallback", "false");
        	
        	System.out.println("Pasok yung username dito boi" + toEmail);
        	Session mailSession = Session.getDefaultInstance(props, null);
        	mailSession.setDebug(true);
        	
        	Message mailMessage = new MimeMessage(mailSession);
    		
			mailMessage.setFrom(new InternetAddress(fromEmail));
			mailMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
			mailMessage.setContent(message, "text/html");
			
			Transport transport = mailSession.getTransport("smtp");
			transport.connect("smtp.gmail.com", username, password);
			
			transport.sendMessage(mailMessage, mailMessage.getAllRecipients());
			
		} catch (Exception ex) {
			// TODO: handle exception
			
		}
    	
    }

}
