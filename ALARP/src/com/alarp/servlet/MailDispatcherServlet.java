package com.alarp.servlet;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.mail.Address;

import com.alarp.javabean.EmailSend;
import com.alarp.javabean.MailSenderBean;

/**
 * Servlet implementation class MailDispatcherServlet
 */
@WebServlet("/MailDispatcherServlet")
@MultipartConfig
public class MailDispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	private MailSenderBean mailSender;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MailDispatcherServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String host ="smtp.gmail.com" ;
        String user = "edward_curugan@dlsu.edu.ph";
        String pass = "Oggbog12!";
        String to = "edward_curugan@dlsu.edu.ph";
        String from = "amiel_lumbuan@dlsu.edu.ph";
        String subject = "SMTP Auth";
        String messageText = "Your Is Test Email :";
		
        EmailSend es = new EmailSend();
		
		
		es.send();
	
		request.getRequestDispatcher("WelcomeReview.jsp").forward(request, response);

		
		
	}

}
