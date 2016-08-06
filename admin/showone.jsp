<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showone.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor="#F1F1F1" style="margin-top: 100px">
  <div align="center" >
      <table>
      
      <tr>
      <th>用户名：</th>
      <td>${msg.uname }</td>
      </tr>
      <tr>
      <th>添加时间：</th>
      <td>${msg.addtime }</td>
      </tr>
      
      <tr>
      <th>真实名字：</th>
      <td>${msg.name }</td>
      </tr>
      
      <tr>
      <th>性别：</th>
      <td>${msg.sex }</td>
      </tr>
      
      <tr>
      <th>邮箱：</th>
      <td>${msg.email }</td>
      </tr>
      
      <tr>
      <th>手机号：</th>
      <td>${msg.tel }</td>
      </tr> 
      
      <tr>
      <th>权限：</th>
      <td>${msg.juri }</td>
      </tr>
      
      <tr>
      <th>状态：</th>
      <td>${msg.state }</td>
      </tr>
      
      </table>
  </div>
  
  </body>
</html>
