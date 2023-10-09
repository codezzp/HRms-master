package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hnust.cwz.javabeans.BusinessBean;
/**
 * Servlet implementation class user_control
 */
public class user_control extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public user_control() {
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
		String nickname = request.getParameter("NickName");
		String password = request.getParameter("Password");
		String cer_password = request.getParameter("Cer_Password");
		String email = request.getParameter("E_Mail");
		HttpSession session = request.getSession();
		if ("".equals(password)) {
			response.sendRedirect("user.jsp");
		} else if (!password.equals(cer_password)) {
			response.sendRedirect("user.jsp");
		} else {
			BusinessBean businessBean = new BusinessBean();
			businessBean.user_update(nickname, password, email, session.getAttribute("account").toString());
			response.sendRedirect("home.jsp");
		}
	}

}
