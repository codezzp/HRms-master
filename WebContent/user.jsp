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

<title>Update User Information</title>

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
	function myAlert() {
		if (document.form1.Password.value == "") {
			alert("请输入密码!");
			return false;
		}
		if (document.form1.Cer_Password.value != document.form1.Password.value) {
			alert("确认密码与设定密码不一致，请重新输入!");
			return false;
		}
		alert("修改成功！");
	}

	function changeBC(id) {
		var mychar = document.getElementById(id); //获取要改变颜色的id
		mychar.style.color = "#2D2D3F";
		mychar.style.backgroundColor = "#F0F0F0";
	}

	function originalBC(id) {
		var mychar = document.getElementById(id); //获取要改变颜色的id
		mychar.style.color = "#F0F0F0";
		mychar.style.backgroundColor = "#2D2D3F";
		window.location.href = "user.jsp";
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
						onclick="javascript:window.location.href='department.jsp'">
					</td>
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
				<input type="button" id="user2" value="用户信息修改 >" class="menu_button"
					onmousedown="changeBC('user2')" onmouseup="originalBC('user2')">
		</div>

		<div id="content">
			<div
				style="width:600px; height:500px; position: relative; top: 50%; left: 50%; margin: -200px 0 0 -300px;">
				<form action="user_control" method="post"
					name="form1" id="form1">
					<table width="600px" border="0" align="center"
						style="font-size: 15px;">
						<tr>
							<th width="40%" scope="row">昵称：</th>
							<td width="60%"><label for="NickName"></label> <input
								type="text" name="NickName" class="input" /></td>
						</tr>
						<tr>
							<th scope="row">用户名：</th>
							<td><label for="Account"></label> <input type="text"
								name="Account" class="input" disabled="disabled"
								style="background-color: #F0F0F0;" /></td>
						</tr>
						<tr>
							<th scope="row">密码：</th>
							<td><label for="Password"></label> <input type="text"
								name="Password" class="input" /> *必填</td>
						</tr>
						<tr>
							<th scope="row">确认密码：</th>
							<td><label for="Cer_Password"></label> <input type="text"
								name="Cer_Password" class="input" /> *必填</td>
						</tr>
						<tr>
							<th scope="row">电子邮箱：</th>
							<td><label for="E_Mail"></label> <input type="text"
								name="E_Mail" class="input" /></td>
						</tr>
						<tr>
							<th scope="row">真实姓名：</th>
							<td><label for="Actual_Name"></label> <input type="text"
								name="Actual_Name" class="input" disabled="disabled"
								style="background-color: #F0F0F0;" /></td>
						</tr>
						<tr>
							<th scope="row">身份证号码：</th>
							<td><label for="Identaty_ID"></label> <input type="text"
								name="Identaty_ID" class="input" disabled="disabled"
								style="background-color: #F0F0F0;" /></td>
						</tr>
					</table>
					<p align="center" style="margin-top: 50px;">
						<input type="submit" id="yes" value="提交" class="content_button"
							onmouseup="myAlert()" /> <input type="submit" id="no" value="重填"
							class="content_button" />
					</p>
				</form>
			</div>
		</div>
		<div id="footer">
		<a href="#">关于网页  </a>
  		<a href="#">意见反馈  </a>
  		<a href="#">帮助中心</a>
		</div>
	</div>
</body>
</html>
