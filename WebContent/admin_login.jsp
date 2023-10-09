<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录</title>
    <style>
        h2{
        border-bottom:5px solid red;
        padding-bottom:10px;
        text-align:center;
        width:100%;
        }   
    </style>
    
	<script type="text/javascript">
		function myReload() 
		{
    		document.getElementById("CreateCheckCode").src = document
            		.getElementById("CreateCheckCode").src
            		+ "?nocache=" + new Date().getTime();
		}
	</script>

</head>
<body style="background-image:url(login.gif)">
<div align="center" >
<h2>用户登录</h2>
<form action="${pageContext.request.contextPath}/check_admin_login.jsp" method="post">
	<p>用户名:
	<input type="text" name="username"/>
	</p>
	
	<p>密码:
	<input type="password" name="password"/>
	</p>
	
    <p>验证码:
    <input name="checkCode" type="text" id="checkCode" title="验证码不区分大小写"
            size="10" maxlength="8" />
    <img src="PictureCheckCode" id="CreateCheckCode" align="middle">
    <a onclick="myReload()"> 看不清,换一个</a>
	</p>
    
    <p><input type="submit" value="登录"> <input type="reset" value="重置"></p>
    <p><a href="admin_register.jsp">注册</a></p>
</form>
</div>
</body>
</html>