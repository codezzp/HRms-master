<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="hnust.cwz.javabeans.DBAccessBean"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%><!-- 拼接当前网页的相对路径 -->

<!DOCTYPE>
<html>
<head>
<base href="<%=basePath%>"><!-- 用来表明当前页面的相对路径所使用的根路径的 -->

<title>HR Management System</title>

<!-- 清除浏览器中的缓存，它和其它几句合起来用，
就可以使你再次进入曾经访问过的页面时，ie浏览器必须从服务端下载最新的内容，达到刷新的效果。 -->
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">

<!-- 用搜索引擎搜索的时候 会和这个关键字匹配 从而找到你的网站 -->
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">

<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="CSS/my_styles.css">

<!-- BootStrap----W3C推荐  低版本 -->
<!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- 引入React可以直接使用 Staticfile CDN 的 React CDN 库 -->
	<script src="https://cdn.staticfile.org/react/16.4.0/umd/react.development.js"></script>
<script src="https://cdn.staticfile.org/react-dom/16.4.0/umd/react-dom.development.js"></script>
<script src="https://cdn.staticfile.org/babel-standalone/6.26.0/babel.min.js"></script>
	
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

<%!public String str_date2;%>
<body>
	<div id="container"> <!-- div居中 -->
		<div style="width: 100%; position: relative;"><!-- 父级标签relative，子级标签position来做到无论浏览器如何改变，都是相对浏览器的定位 -->
			<div id="head">
				<img height="7%" style="border-radius: 20px;" src="IMG/logo.jpg"
					onclick="javascript:window.location.href='home.jsp'"></img>
				<big_head onclick="javascript:window.location.href='home.jsp'">人力资源管理系统
				</big_head>
				欢迎您！管理员
			</div>
			<div id="example" align="right"></div>
			<script type="text/babel">
			class Clock extends React.Component {
  				render() {
    				return (<h3>{this.props.date.toLocaleTimeString()}.</h3>);
  				}
			}

			function tick() {
  				ReactDOM.render(<Clock date={new Date()} />,document.getElementById('example'));
			}

			setInterval(tick, 1000);
			</script>
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
					<li><a href="NewFile.html">其他消息</a></li>
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
						onclick="javascript:window.location.href='staff.jsp'"></td>
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
						onclick="javascript:window.location.href='salary.jsp'"></td>
					<td><input type="button" id="system" value="系统管理"
						class="banner_button"
						onclick="javascript:window.location.href='system.jsp'"></td>
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
				<input type="button" value="注册时间" class="menu_button"
					style="margin-bottom: -5px;" disabled="disabled">
			<div>
				<%
					DBAccessBean db1 = new DBAccessBean();
					if (db1.createConn()) {
						String sql = "select * from user where account='"
								+ session.getAttribute("account").toString() + "'";
						db1.query(sql);
						if (db1.next()) {
							out.println("<P>");
							out.println(db1.getValue("time"));
							out.println("<P>");
						}
						db1.closeRs();
						db1.closeStmt();
						db1.closeConn();
					}
				%>
			</div>
		</div>
		
		<div id="content"></div>
		<div id="footer">
		<a href="#">关于网页  </a>
  		<a href="#">意见反馈  </a>
  		<a href="#">帮助中心</a>
		</div>
	</div>
</body>
</html>
