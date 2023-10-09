<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>用户注册</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <style>
        body{
         background-image:url(bt.gif);
        }
        .container{
        margin-top:100px;
        border-radius:10px;
        padding-top:50px;
        padding-bottom:50px;
        align:center;
        background-color:white;
        opacity:0.8;
        width:500px;
        }
        form{
        margin-top:20px;
        }
        .form-group{
        align:center;
        width:350px;
        margin:auto;
        position:relative;
        }
        h2{
        border-bottom:5px solid red;
        padding-bottom:10px;
        text-align:center;
        width:100%;
        }
        .label{
        float:left;
        width:80px;
        margin-top:7px;
        margin-right:5px;
        text-align:left;
        }
        .form-control{
        width:200px;
        margin-top:7px;
        }
        .sex{
        border:0px solid #000;
        width:200px;
        margin-top:7px;
        }
        .sign{
        width:160px;
        margin-top:10px;
        }
        .tip{
        position:relative;
        width:100%;
        height:auto;
        padding:5px;
        }
        .tip .tipicon{
        float:left;
        background-image:url(D:/Desktop/bt.gif);
        background-repeat:no-repeat;
        background-position:center;
        background-size:cover;
        width:20px;
        height:20px;
        }
        .tipmessage{
        color:red;
        font-size:15px;
        }
         
        .tip{
        display:none;
        }
        .righttip{
        display:none;
        position:absolute;
        right:8px;
        top:8px;
        width:25px;
        height:25px;
        background-image:url(D:/Desktop/bt.gif);
        background-repeat:no-repeat;
        background-position:center;
        background-size:cover;
        }       
    </style>
     
<script type="text/javascript">
    
     
    function GetQueryString(name) {
          var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
          var r = window.location.search.substr(1).match(reg); //获取url中"?"符后的字符串并正则匹配
          var context = "";
          if (r != null)
             context = r[2];
          reg = null;
          r = null;
          return context == null || context == "" || context == "undefined" ? "" : context;
    }
 
     
    
     
    function isPwd(password)
    {
        var myreg=/[0-9a-zA-Z]+/;
        if(!myreg.test(password))
            return false;
        else
            return true;
    }
     
    
    function inputusername()
    {
        var username=$("#usr").val();
        var tip1=$("#tip1");
        var tip_1=$("#tip_1");
        if(!((username[0]>='a'&&username[0]<='z')||(username[0]>='A'&&username[0]<='Z')))
        {
            $("#usr").next().css("display","none");
            tip1.css("display","block");
            tip_1.html("用户名必须以英文字母开头！");
        }
        else if(username.length<6||username.length>12){
            $("#usr").next().css("display","none");
            tip1.css("display","block");
            tip_1.html("用户名必须为6-12位字符！");
        }
        else
        {
            tip1.css("display","none");
            $.post(
                    "UserServlet",
                    {username:username},
                    function(data){
                        if(data=="yes"){
                            tip1.css("display","none");
                            $("#usr").next().css("display","block");
                        }
                        else{
                            $("#usr").next().css("display","none");
                            tip1.css("display","block");
                            tip_1.html("用户名已被注册！");
                        }
                    },
                    "text"
                    );
        }
    }
     
   
     
    function inputpassword()
    {
        var password=$("#pwd").val();
        var tip2=$("#tip2");
        var tip_2=$("#tip_2");
        if(password.length<6)
        {
            $("#pwd").next().css("display","none");
            tip2.css("display","block");
            tip_2.html("请输入6位以上密码！");
        }
        else if(!isPwd(password)){
            $("#pwd").next().css("display","none");
            tip2.css("display","block");
            tip_2.html("密码仅由英文或数字组成！");
        }
        else{
            tip2.css("display","none");
            $("#pwd").next().css("display","block");
        }
    }
     
     
    
     
    function isEmpty()
    {
        if($("#usr").val()==""||$("#pwd").val()=="")
        {
            alert("请将信息填写完整！");
            return false;
        }
        return true;
    }
     
    function getResult()
    {
        if(GetQueryString("result")=="true")
            alert("添加成功！");
        else if(GetQueryString("result")=="false")
            alert("添加失败！");
    }
     
    var inputs=document.getElementsByTagName("input");
    for(var i=0;i<inputs.length;i++)
    {
        inputs[i].onkeyup=function(event){
            if(event.keyCode=13){
                var next=this.nextElementSibling.nextElementSibling;
                next.focus();
            }
        }
    }
     
</script>
     
</head>
 
<body onload="getResult()">
    <div class="container">
      <h2>管理员注册<a href="admin_login.jsp">登陆</a></h2>
      <form action="Signin_admin" method="post">
        <div class="form-group">
          <label for="usr" class="label">账号:</label>
          <input type="text" class="form-control" id="usr" name="username" oninput="inputusername()" placeholder="请输入用户名">
          <div class="righttip"></div>
            <div class="tip" id="tip1">
                <div class="tipicon"></div>
                <div id="tip_1" class="tipmessage"></div>
            </div>
        </div>
        <div class="form-group">
          <label for="pwd" class="label">密码:</label>
          <input type="password" class="form-control" id="pwd" name="password" placeholder="请输入密码" oninput="inputpassword()">
          <div class="righttip"></div>
            <div class="tip" id="tip2">
                <div class="tipicon"></div>
                <div id="tip_2" class="tipmessage"></div>
            </div>
        </div>
         
        
        <input type="submit" class="sign btn btn-primary btn-lg" value="添加" onclick="return isEmpty()">
    </form>    
    </div>
</body>
</html>