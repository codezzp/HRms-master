<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>Register HRMS</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="CSS/my_styles.css">

<script language="javascript">
	function myAlert() {
		if (document.form1.Account.value == "") {
			alert("请输入账号!");
			return false;
		}
		if (document.form1.Password.value == "") {
			alert("请输入密码!");
			return false;
		}
		if (document.form1.Cer_Password.value != document.form1.Password.value) {
			alert("确认密码与设定密码不一致，请重新输入!");
			return false;
		}
		if (document.form1.Actual_Name.value == "") {
			alert("请输入真实姓名!");
			return false;
		}
		if (document.form1.Identaty_ID.value == "") {
			alert("请输入身份证号码!");
			return false;
		}
		alert("注册成功！");
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
		window.location.href = "register.jsp";
	}
</script>
</head>

<body>
	<div id="container">
		<div style="width: 100%; position: relative;">
			<div id="head">
				<img height="7%" style="border-radius: 20px;" src="IMG/logo.jpg"></img>
				<big_head>人力资源管理系统 </big_head>
			</div>
			<div id="head_button">
				<input type="button" id="login" value="[返回登录]" class="head_button"
					onclick="javascript:window.location.href='index.jsp'"> | <input
					type="button" id="exit" value="[退出系统]" class="head_button"
					onclick="javascript:window.location.href='exit.jsp'">
			</div>
		</div>

		<div id="banner">
			<table width="100%" border="0">
				<tr align="center">
					<td><input type="button" id="text" value="用户注册"
						class="banner_button" disabled="disabled">
					</td>
			</table>
		</div>

		<div id="menu">
			<input type="button" id="register" value="用户注册 >" class="menu_button"
				onmousedown="changeBC('register')"
				onmouseup="originalBC('register')">
		</div>

		<div id="content">
			<div
				style="width:600px; height:500px; position: relative; top: 50%; left: 50%; margin: -200px 0 0 -300px;">
				<form action="Register_control" method="post" name="form1" id="form1">
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
								name="Account" class="input" /> *必填</td>
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
								name="Actual_Name" class="input" /> *必填</td>
						</tr>
						<tr>
							<th scope="row">身份证号码：</th>
							<td><label for="Identaty_ID"></label> <input type="text"
								name="Identaty_ID" class="input" /> *必填</td>
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
