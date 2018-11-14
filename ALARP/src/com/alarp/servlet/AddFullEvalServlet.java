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
 * Servlet implementation class AddFullEvalServlet
 */
@WebServlet("/AddFullEvalServlet")
@MultipartConfig
public class AddFullEvalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFullEvalServlet() {
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
		EmailSend es = new EmailSend();		
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		
		String id = null;
		
		eb.setType(request.getParameter("type"));
		
		if(eb.getType().equals("Moved") == true) {
			eb.setDate_inspected(request.getParameter("date_inspected"));
		}
		else
			eb.setDate_inspected("Not applicable");
		
		eb.setDate_submitted(dateFormat.format(date));
		eb.setSme_decision("No Decision Yet");
		eb.setQ1(request.getParameter(EvaluationBean.Q1));
		eb.setQ2(request.getParameter(EvaluationBean.Q2));
		eb.setQ3(request.getParameter(EvaluationBean.Q3));
		eb.setQ4(request.getParameter(EvaluationBean.Q4));
		eb.setQ5(request.getParameter(EvaluationBean.Q5));
		eb.setQ6(request.getParameter(EvaluationBean.Q6));
		eb.setQ7(request.getParameter(EvaluationBean.Q7));
		eb.setQ8(request.getParameter(EvaluationBean.Q8));
		eb.setQ9(request.getParameter(EvaluationBean.Q9));
		eb.setQ10(request.getParameter(EvaluationBean.Q10));
		eb.setQ11(request.getParameter(EvaluationBean.Q11));
		eb.setQ12(request.getParameter(EvaluationBean.Q12));
		eb.setQ13(request.getParameter(EvaluationBean.Q13));
		eb.setQ14(request.getParameter(EvaluationBean.Q14));
		eb.setQ15(request.getParameter(EvaluationBean.Q15));
		eb.setQ16(request.getParameter(EvaluationBean.Q16));
		eb.setQ17(request.getParameter(EvaluationBean.Q17));
		eb.setQ18(request.getParameter(EvaluationBean.Q18));
		eb.setQ19(request.getParameter(EvaluationBean.Q19));
		eb.setQ20(request.getParameter(EvaluationBean.Q20));
		eb.setQ21(request.getParameter(EvaluationBean.Q21));
		eb.setQ22(request.getParameter(EvaluationBean.Q22));
		eb.setQ23(request.getParameter(EvaluationBean.Q23));

		
		
		
		EvaluationService evaluationsService = new EvaluationService();
		evaluationsService.addFullEvaluation(eb);
		id = evaluationsService.getlastID();
		es.send(dateFormat.format(date), id);
		request.getRequestDispatcher("WelcomeReview.jsp").forward(request, response);

	}

}
