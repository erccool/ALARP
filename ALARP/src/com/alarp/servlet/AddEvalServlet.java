package com.alarp.servlet;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alarp.javabean.EmailSend;
import com.alarp.javabean.EvaluationBean;
import com.alarp.services.EvaluationService;

/**
 * Servlet implementation class AddEvalServlet
 */
@WebServlet("/AddEvalServlet")
@MultipartConfig
public class AddEvalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddEvalServlet() {
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
		EvaluationBean eb = new EvaluationBean();
		
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		
		eb.setType("Not Approved");
		eb.setDate_inspected("Not applicable");
		eb.setDate_submitted(dateFormat.format(date));
		eb.setSme_decision("No Decision Yet");
		eb.setQ1(request.getParameter(EvaluationBean.Q1));
		eb.setQ2(request.getParameter(EvaluationBean.Q2));
		eb.setQ3(request.getParameter(EvaluationBean.Q3));
		eb.setQ4(request.getParameter(EvaluationBean.Q4));
		eb.setQ5(request.getParameter(EvaluationBean.Q5));
		eb.setQ6(request.getParameter(EvaluationBean.Q6));
		
		EvaluationService evaluationsService = new EvaluationService();
		evaluationsService.addEvaluation(eb);
EmailSend es = new EmailSend();
		
		
		es.send();
		request.getRequestDispatcher("WelcomeReview.jsp").forward(request, response);

	}

}
