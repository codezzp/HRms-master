<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="hnust.cwz.javabeans.DBAccessBean"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>HR Management System</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="CSS/my_styles.css">
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function changeBC(id) {
		var mychar = document.getElementById(id); //获取要改变颜色的id
		mychar.style.color = "#2D2D3F";
		mychar.style.backgroundColor = "#F0F0F0";
	}

	function originalBC(id) {
		var mychar = document.getElementById(id); //获取要改变颜色的id
		mychar.style.color = "#F0F0F0";
		mychar.style.backgroundColor = "#2D2D3F";
	}
</script>
</head>

<body>
	<div id="container">
		<div style="width: 100%; position: relative;">
			<div id="head">
				<img height="7%" style="border-radius: 20px;" src="IMG/logo.jpg"
					onclick="javascript:window.location.href='home.jsp'"></img>
				<big_head onclick="javascript:window.location.href='home.jsp'">人力资源管理系统
				</big_head>
				欢迎您！管理员
			</div>
			
		</div>

		<div id="banner">
			<table width="100%" border="0">
				<tr align="center">
					<td>
					<ul class="nav navbar-nav">
					<li class="dropdown">
					<a href="home.jsp" class="banner_button" data-toggle="dropdown" >
					首页 
					<b class="caret"></b>
					</a>	
					<ul class="dropdown-menu">
					<li><a href="user.jsp">用户修改</a></li>
					<li><a href="exit.jsp">安全退出</a></li>
					<li class="divider"></li>
					<li><a href="home.jsp">返回首页</a></li>
					</ul>
					</ul>
				</td>
					<td><input type="button" id="department" value="部门管理"
						class="banner_button"
						onclick="javascript:window.location.href='department.jsp'"
						style="border: 1px solid #F0F0F0;"></td>
					<td><input type="button" id="staff" value="员工管理"
						class="banner_button"
						onclick="javascript:window.location.href='staff.jsp'">
					</td>
					<td><input type="button" id="employment" value="招聘管理"
						class="banner_button"
						onclick="javascript:window.location.href='employment.jsp'">
					</td>
					<td><input type="button" id="training" value="培训管理"
						class="banner_button"
						onclick="javascript:window.location.href='training.jsp'">
					</td>
					<td><input type="button" id="reward&punishment" value="奖惩管理"
						class="banner_button"
						onclick="javascript:window.location.href='reward&punishment.jsp'">
					</td>
					<td><input type="button" id="salary" value="薪资管理"
						class="banner_button"
						onclick="javascript:window.location.href='salary.jsp'">
					</td>
					<td><input type="button" id="system" value="系统管理"
						class="banner_button"
						onclick="javascript:window.location.href='system.jsp'">
					</td>
			</table>
		</div>

		<div id="menu">
			<img width="40%" style="border-radius: 1px;" src="IMG/user.png"></img>
			<%
				DBAccessBean db = new DBAccessBean();
				if (db.createConn()) {
					String sql = "select * from user where account='"
							+ session.getAttribute("account").toString() + "'";
					db.query(sql);
					if (db.next()) {
						out.println("<a>");
						out.println("你好，" + db.getValue("nickname"));
						out.println("</a>");
					}
					db.closeRs();
					db.closeStmt();
					db.closeConn();
				}
			%>
			<p>
				<input type="button" id="query" value="查询" class="menu_button"
					onmousedown="changeBC('query')" onmouseup="originalBC('query')"
					onclick="javascript:window.location.href='department_query.jsp'">
				<input type="button" id="insert" value="添加" class="menu_button"
					onmousedown="changeBC('insert')" onmouseup="originalBC('insert')"
					onclick="javascript:window.location.href='department_insert.jsp'">
				<input type="button" id="update" value="修改" class="menu_button"
					onmousedown="changeBC('update')" onmouseup="originalBC('update')"
					onclick="javascript:window.location.href='department_update.jsp'">
				<input type="button" id="delete" value="删除 >" class="menu_button"
					onmousedown="changeBC('delete')" onmouseup="originalBC('delete')"
					onclick="javascript:window.location.href='department_delete.jsp'">
		</div>

		<div id="content">
			<form action="Department_delete_control" method="post">
				<div
					style="border: 0px solid #FFFFFF; margin-top: 20px; text-align:center;">
					请输入删除部门编号： <input type="text" name="id" class="input" /> <input
						type="submit" id="yes" value="确定" class="content_button"
						style="width: 100px;" />
				</div>
			</form>
		</div>
		<div id="footer">
		<a href="#">关于网页  </a>
  		<a href="#">意见反馈  </a>
  		<a href="#">帮助中心</a>
		</div>
	</div>
</body>
</html>
