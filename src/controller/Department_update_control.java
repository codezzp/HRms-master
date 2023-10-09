package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hnust.cwz.javabeans.BusinessBean;

/**
 * Servlet implementation class Department_update_control
 */
public class Department_update_control extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Department_update_control() {
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
		request.setCharacterEncoding("UTF-8");
		String per_name = request.getParameter("per_name");
		String name = request.getParameter("name");
		String amount = request.getParameter("amount");
		String director = request.getParameter("director");

		if (name.equals("") || amount.equals("") || director.equals("")) {
			response.sendRedirect("department_update.jsp");
		} else {
			BusinessBean businessBean = new BusinessBean();
			businessBean.department_update(per_name, name, amount, director);
			response.sendRedirect("department.jsp");
		}
	}

}
