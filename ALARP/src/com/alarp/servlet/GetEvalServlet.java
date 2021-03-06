package com.alarp.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alarp.javabean.EvaluationBean;
import com.alarp.services.EvaluationService;

/**
 * Servlet implementation class GetEvalServlet
 */
@WebServlet("/GetEvalServlet")
public class GetEvalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetEvalServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		int ideval = Integer.parseInt(request.getParameter("id"));
		EvaluationService EvalsService = new EvaluationService();
		ArrayList<EvaluationBean> eval = EvalsService.getEval(ideval);
		System.out.println("This is the type bitch " + eval.get(0).getType() );
		
		request.setAttribute("eval", eval);
		if(eval.get(0).getType().equals("Not Approved"))
			request.getRequestDispatcher("EvalResults.jsp").forward(request, response);

		else if(eval.get(0).getType().equals("Moved")) {
			System.out.println("This is the type bitch:" + eval.get(0).getType() );
			eval = EvalsService.getFullEval(ideval);			
			request.setAttribute("eval", eval);
			request.getRequestDispatcher("SemiFullEvalResults.jsp").forward(request, response);
			
		}
		else {
			eval = EvalsService.getFullEval(ideval);
			request.setAttribute("eval", eval);
			request.getRequestDispatcher("FullEvalResults.jsp").forward(request, response);
		}

		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
