<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<!-- Custom Theme files -->
<link href="${pageContext.request.contextPath}/css/style1.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
</head>
<body>
<div class="login">
	<div class="login-top">
		<h1>登录</h1>
		<form action="UserAction?action=login" method="post">
			<input type="text" name="uname" value="" placeholder="用户名">
			<input type="password" name="upassword" value="" placeholder="*********">
	  
	    <div class="forgot">
	    	<a href="#">忘记密码？</a>
	    	<input type="submit" value="登录" >
	    </div>
	      </form>
	</div>
	<div class="login-bottom">
		<h3>新用户 &nbsp;<a href="register.jsp">注册</a></h3>
	</div>
</div>
</body>
</html>