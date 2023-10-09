package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hnust.cwz.javabeans.BusinessBean;

/**
 * Servlet implementation class Login_control
 */
public class Login_control extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login_control() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("UTF-8");
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		if (account == null || password == null) {
			response.sendRedirect("index.jsp");

		} else {
			BusinessBean businessBean = new BusinessBean();
			boolean isVaild = businessBean.vaild(account, password);
			System.out.print(isVaild);
			if (isVaild) {
				session.setAttribute("account", account);
				response.sendRedirect("home.jsp");
			} else {
				response.sendRedirect("index.jsp");
			}
		}
	}
	}

