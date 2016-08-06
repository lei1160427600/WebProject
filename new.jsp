<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
#apDiv1 {
	position: absolute;
	width: 501px;
	height: 59px;
	z-index: 1;
	left: 150px;
	top: 4px;
}
#apDiv2 {
	position: absolute;
	width: 501px;
	height: 2050px;
	z-index: 2;
	left: 151px;
	top: 67px;
}
#apDiv3 {
	position: absolute;
	width: 401px;
	height: 224px;
	z-index: 3;
	left: 655px;
	top: 3px;
}
#apDiv4 {
	position: absolute;
	width: 401px;
	height: 844px;
	z-index: 4;
	left: 655px;
	top: 232px;
}
#apDiv5 {
	position: absolute;
	width: 402px;
	height: 1887px;
	z-index: 4;
	left: 655px;
	top: 231px;
}
</style>
</head>

<body bgcolor="#EEEEEE">
<div id="apDiv1" style="background: #FFF; color: #603; font-size: 36px;">新闻题目</div>
<div id="apDiv2" style="background: #FFF; color: #603; font-size: 36px;">新闻内容</div>
<div id="apDiv3" style="background: #FFF; font-size: 36px; color: #603;">新闻相关照片</div>
<div id="apDiv5" style="background: #FFF; font-size: 36px; color: #603;">其他相关新闻</div>

</body>
</html>
