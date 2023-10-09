<<<<<<< HEAD
<%@ page import="java.sql.*" import="java.util.*"%>
=======
<%@page import="java.sql.*" import="java.util.*"%>
>>>>>>> cfa12f2 (张志朋第一次提交)
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//用户名和密码验证
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	Class.forName("com.mysql.cj.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT&allowPublicKeyRetrieval=true";
	String userName = "root";
	String Pwd = "123456";
	conn = DriverManager.getConnection(url, userName, Pwd);
	request.setCharacterEncoding("utf-8");
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String sql = "SELECT *FROM signin_admin WHERE username ='" + username + "'AND password = '" + password + "'";
	ps = conn.prepareStatement(sql);
	rs = ps.executeQuery();
	HttpSession session2 = request.getSession();
    session2.setAttribute("username", username);
    //验证码验证
    String checkcode=request.getParameter("checkCode");
    boolean flag;
    if(checkcode.equals("")||checkcode==null)
    {
    	out.print("<script>alert('请输入验证码');window.location.href('admin_login.jsp')</script>");
    	flag=false;
    }
    else
    {
    	if(!checkcode.equalsIgnoreCase((String)session.getAttribute("randCheckCode")))
    	{
                out.print("<script>alert('验证码不正确,请重新输入');history.back(-1);</script>");
                flag=false;
        }
    	else
    	{
                //out.print("登录成功");
                flag=true;
        }
    }
	if (rs.next() && flag==true) {
		response.sendRedirect("./file.jsp");
	}
	else{
		response.sendRedirect("./admin_login.jsp");
	}
%>