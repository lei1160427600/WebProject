<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> --%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>信息修改页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
 	<form action="" method="post">
    <table align="center" style="text-align: right;">
    	<tr><td>用户名</td><td><input type="text" name="uname" value="${userbean.uname}" placeholder="请输入用户名" /></td></tr>
    	<tr><td>用户密码</td><td><input type="text" name="upassword" value="${userbean.upassword}" placeholder="请输入密码" /></td></tr>
    	<tr><td>头像路径</td><td><input type="text" name="headsrc" value="${userbean.headsrc}" placeholder="请输入headSrc" /></td></tr>
    	<tr><td>学号</td><td><input type="text" name="sid" value="${userbean.sid}" placeholder="请输入学号" /></td></tr>
    	<tr><td>姓名</td><td><input type="text" name="name" value="${userbean.name}" placeholder="请输入姓名" /></td></tr>
    	<tr><td>性别</td><td><input type="text" name="sex" value="${userbean.sex}" placeholder="请输入性别" /></td></tr>
    	<tr><td>专业</td><td><input type="text" name="prof" value="${userbean.prof}" placeholder="请输入专业" /></td></tr>
    	<tr><td>邮箱</td><td><input type="text" name="email" value="${userbean.email}" placeholder="请输入邮箱" /></td></tr>
    	<tr><td>电话</td><td><input type="text" name="tel" value="${userbean.tel}" placeholder="请输入联系方式" /></td></tr>
    	<tr><td><input type="submit"value="提交修改" /></td></tr>
  </table>
  </form>
  </body>
</html>
