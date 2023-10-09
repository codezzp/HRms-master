package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hnust.cwz.javabeans.BusinessBean;

/**
 * Servlet implementation class Staff_insert_control
 */
public class Staff_insert_control extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Staff_insert_control() {
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
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		String age = request.getParameter("age");
		String department = request.getParameter("department");
		String position = request.getParameter("position");
		String salary = request.getParameter("salary");

		if (name.equals("") || sex.equals("") || age.equals("")) {
			response.sendRedirect("staff_insert.jsp");
		} else {
			BusinessBean businessBean = new BusinessBean();
			businessBean.staff_insert(name, sex, age, department, position,
					salary);
			response.sendRedirect("staff.jsp");
		}
	}

}
