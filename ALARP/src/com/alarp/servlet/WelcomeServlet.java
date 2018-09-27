package com.alarp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class WelcomeServlet
 */
@WebServlet("/WelcomeServlet")
@MultipartConfig
public class WelcomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WelcomeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		System.out.print("This is one " + request.getParameter("type"));

		doPost(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String input = request.getParameter("type");
		
		System.out.print(request.getParameter("type") + " and input is = " + input);
		
		if (input.equals("Approved") == true){
		
		request.getRequestDispatcher("WelcomeReviewPartOne.jsp").forward(request, response);

		}
		
		else if (input.equals("Rejected") == true) {
		request.getRequestDispatcher("ReviewPartTwo.jsp").forward(request, response);			
		}
		
		else
			request.getRequestDispatcher("ReviewPartThree.jsp").forward(request, response);

	}

}
