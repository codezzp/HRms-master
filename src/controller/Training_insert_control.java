package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hnust.cwz.javabeans.BusinessBean;

/**
 * Servlet implementation class Training_insert_control
 */
public class Training_insert_control extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Training_insert_control() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("UTF-8");	
		String time = request.getParameter("time");
		String site = request.getParameter("site");
		String content = request.getParameter("content");
		String amount = request.getParameter("amount");
		if (time.equals("") || site.equals("") ) {
			response.sendRedirect("training_insert.jsp");
		} else {
			BusinessBean businessBean = new BusinessBean();
			businessBean.training_insert(time,site,content,amount);
			response.sendRedirect("training.jsp");
		}
	}

}
