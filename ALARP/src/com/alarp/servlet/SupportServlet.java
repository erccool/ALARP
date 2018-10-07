package com.alarp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alarp.services.EvaluationService;

/**
 * Servlet implementation class SupportServlet
 */
@WebServlet("/SupportServlet")
@MultipartConfig
public class SupportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SupportServlet() {
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
		
		int ideval = Integer.parseInt(request.getParameter("id"));
		EvaluationService evaluationService = new EvaluationService();
		String decision = request.getParameter("decision");
		evaluationService.decide(ideval, decision);
		
		request.getRequestDispatcher("GetAllEvalServlet").forward(request, response);

		
	}

}
