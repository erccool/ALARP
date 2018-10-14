/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 * https://www.google.com/settings/security/lesssecureapps
 */

package com.alarp.javabean;

/**
 *
 * @author Naveen
 */
import java.util.*;

import javax.mail.*;
import javax.mail.internet.*;
public class EmailSend {

    public void send(){
    	String host ="smtp.gmail.com" ;
        String user = "edward_curugan@dlsu.edu.ph";
        String pass = "Oggbog12!";
        String to = "edward_curugan@dlsu.edu.ph";
        String from = "edward_curugan@dlsu.edu.ph";
        String subject = "New Evaluation";
        String messageText = "Kindly check the newly sent evaluation";
        boolean sessionDebug = false;

        Properties props = System.getProperties();
    	
    	try{
            

            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.host", host);
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.required", "true");
            props.put("mail.smtp.ssl.trust", "smtp.gmail.com");

            
            Session mailSession = Session.getDefaultInstance(props, null);
            
            mailSession.setDebug(sessionDebug);
            Message msg = new MimeMessage(mailSession);
            msg.setFrom(new InternetAddress(from));
            InternetAddress[] address = {new InternetAddress(to)};
            msg.setRecipients(Message.RecipientType.TO, address);
            msg.setSubject(subject); msg.setSentDate(new Date());
            msg.setText(messageText);
            System.out.println("pasok dito5");
           Transport transport=mailSession.getTransport("smtp");
           System.out.println("pasok dito7");
           transport.connect(host, user, pass);
           System.out.println("pasok dito6");
          
           transport.sendMessage(msg, msg.getAllRecipients());
           transport.close();
           System.out.println("message send successfully");
        }catch(Exception ex)
        {
            System.out.println(ex);
        }

    }
}
