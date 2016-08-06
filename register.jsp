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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/vali.js"></script>
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
</head>
<body style="
    height: 300px;
    padding-top: 50px;
">
<div class="login">
	<div class="login-top">
	  <h1>注册</h1>
		<form action="${pageContext.request.contextPath}/UserAction?action=register" method="post">
			<div><input type="text" name="uname" value="${uname}" onblur="isNum(this)" placeholder="用户名">${msg}${signun}</div>
			<div><input type="password" name="upassword" value="" placeholder="密码">${signup}</div>
            <div><input type="password" name="reupassword" value="" placeholder="重复密码">${signre}</div>
            <div><input type="text" name="email" value="" placeholder="邮箱">${signem}</div>
	   <div class="forgot">
	    	<a href="#">同意协议</a>
	    	<input type="submit" value="注册" >
	    </div>
      </form>
	</div>
	<div class="login-bottom">
		 	<h3>已有账号请返回 &nbsp;<a href="${pageContext.request.contextPath}/login.jsp">登录</a></h3>
    </div>
</div>
</body>
</html>