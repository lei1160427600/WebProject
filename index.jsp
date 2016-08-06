<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="bean.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页</title>
</head>
<frameset rows="159,*" cols="*" framespacing="3" frameborder="no" border="3">
  <frame src="head.jsp" name="topFrame" scrolling="no" noresize="noresize" id="topFrame" title="head" />
  <frame src="${pageContext.request.contextPath}/MessageAction?action=index" name="mainFrame" id="mainFrame" title="mainFrame" />
</frameset>
<noframes>
<body></body>
</noframes>
</html>
