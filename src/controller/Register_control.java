package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hnust.cwz.javabeans.BusinessBean;

/**
 * Servlet implementation class Register_control
 */
public class Register_control extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register_control() {
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
		String account = request.getParameter("Account");
		String password = request.getParameter("Password");
		String cer_password = request.getParameter("Cer_Password");
		String email = request.getParameter("E_Mail");
		String actualname = request.getParameter("Actual_Name");
		String identatyid = request.getParameter("Identaty_ID");

		java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		java.util.Date currentTime = new java.util.Date();//得到当前系统时间
		String str_date1 = formatter.format(currentTime); //将日期时间格式化 
		String str_date2 = currentTime.toString(); //将Date型日期时间转换成字符串形式

		if (account.equals("") || password.equals("")
				|| actualname.equals("") || identatyid.equals("")) {
			response.sendRedirect("register.jsp");
		} else if (!password.equals(cer_password)) {
			response.sendRedirect("register.jsp");
		} else {
			BusinessBean businessBean = new BusinessBean();
			businessBean.user_insert(nickname, account, password, email,
					actualname, identatyid, str_date2);
			response.sendRedirect("index.jsp");
		}
	}

}
