<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>后台管理</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="generator" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
<link href="/tproject/admin/css/haiersoft.css" rel="stylesheet" type="text/css" media="screen,print" />
<link href="/tproject/admin/css/print.css" rel="stylesheet" type="text/css"  media="print" />
<script src="/tproject/admin/js/jquery-1.10.1.min.js"></script>
<script src="/tproject/admin/js/side.js" type="text/javascript"></script>


<style type="text/css">
.color{color:#3399CC; text-decoration:none;font-weight:bold;}/*链接设置*/
.color:visited{color:#3399CC; text-decoration:none;font-weight:bold;}/*访问过的链接设置*/
.color:hover{color:#CF0000; text-decoration:underline;font-weight:bold;}/*鼠标放上的链接设置*/
/*
取消下划线只要把text-decoration:underline修改成text-decoration:none
文字加粗font-weight:bold 如不需要加粗显示，那么删除font-weight:bold;就可以了
其它更多的参数设置参考：css2.0手册 其中的"伪类"说明
*/
</style>

</head>

<body>



<!-- wrap_right -->
<div class="wrap_right" style="margin-top: 5px;">
<img src="/tproject/admin/images/home.png"/> &nbsp;<b>用户管理：主贴管理</b>
<hr>

<div >
	<form action="${pageContext.request.contextPath}/PostingsAction?action=searchpost" method="post">
	<ul style="display: inline;">
<!-- 	<li><input type="submit"  class="searchImg" style="float: right;margin: 13px 20px 0px 0px"/></li> -->
	<li><input class="selectbox floatL mag_r20" name="uname" value="" placeholder="请输入用户名" type="text" border="1" style="float: right;width: 160px;margin-top: 13px;"></li>
	<li style="margin: 16px 0px 0px 0px;float: right;"><span style="color: #1fbba6;font-size: 16px;">搜索帖子：</span></li>
	<li><input name="imgbtn" type="image" src="/tproject/admin/images/search.png" 
				width="25px" height="25px" border="0" style="float: right;margin: 13px -250px 0px 0px"/></li>
	</ul>
	</form>
	</div>
	
	<c:if test="${JSPAction=='postingslist'}">
	<!-- MainForm -->
	<div id="MainForm">
	<div class="form_boxA">
	<h2>主贴列表</h2>
	<table cellpadding="0" cellspacing="0" border="1">
	<tr>
	<th>发帖人</th>
	<th>标题</th>
	<th>发帖时间</th>
	<th>修改时间</th>	
	<th>回帖</th>
	<th>操作</th>
	</tr>
	
	<c:forEach items="${page.records}" var="A">
	<tr>
	<td>${A.uname}</td>
	<td>${A.title}</td>
	<td><fmt:formatDate value="${A.ptime}" pattern="yyyy-MM-dd" /></td>
	<td><fmt:formatDate value="${A.utime}" pattern="yyyy-MM-dd" /></td>
	<td>查看</td>
	<td class="f_cA"><a href="${pageContext.request.contextPath}/PostingsAction?action=de&pid=${A.pid}">删除</a>
					<a href="${pageContext.request.contextPath}/PostingsAction?action=showone&pid=${A.pid}">查看</a></td>
	</tr>
	</c:forEach>
	
	</table>
	<p class="msg">共找到${page.totalrecords}条用户注册记录</p>
	</div>
	</div>
	</c:if>
	
	<c:if test="${JSPAction=='searchpost'}">
	<!-- MainForm -->
	<div id="MainForm">
	<div class="form_boxA">
	<h2>主贴列表</h2>
	<table cellpadding="0" cellspacing="0" border="1">
	<tr>
	<th>发帖人</th>
	<th>标题</th>
	<th>发帖时间</th>
	<th>修改时间</th>	
	<th>回帖</th>
	<th>操作</th>
	</tr>
	
	<c:forEach items="${page.records}" var="A">
	<tr>
	<td>${A.uname}</td>
	<td>${A.title}</td>
	<td><fmt:formatDate value="${A.ptime}" pattern="yyyy-MM-dd" /></td>
	<td><fmt:formatDate value="${A.utime}" pattern="yyyy-MM-dd" /></td>
	<td>查看</td>
	<td class="f_cA"><a href="${pageContext.request.contextPath}/PostingsAction?action=de&pid=${A.pid}">删除</a>
					<a href="${pageContext.request.contextPath}/PostingsAction?action=showone&pid=${A.pid}">查看</a></td>
	</tr>
	</c:forEach>
	
	</table>
	<p class="msg">共找到${page.totalrecords}条用户注册记录</p>
	</div>
	</div>
	</c:if>
	<!-- /MainForm -->
	
	<!-- PageNum -->
	<c:if test="${JSPAction=='postingslist'}">
	<ul id="PageNum" style="position:absolute;left:33%;top:70%;text-align: center;">
	<li><a href="PostingsAction?action=postingslist">首页</a></li>
	<li><a href="PostingsAction?action=postingslist&pagenum=${page.pagenum-1==0?1:page.pagenum-1}">上一页</a></li>
	<c:forEach begin="${page.startPage}" end="${page.endPage}" var="num">
		<li><a href="PostingsAction?action=postingslist&pagenum=${num}">${num}</a></li>
	</c:forEach>
	<li><a href="PostingsAction?action=postingslist&pagenum=${page.pagenum+1 <= page.totalpage?page.pagenum+1:page.totalpage}">下一页</a></li>
	<li><a href="PostingsAction?action=postingslist&pagenum=${page.totalpage}">尾页</a></li>
	</ul>
	</c:if>
	
	<c:if test="${JSPAction=='searchpost'}">
	<ul id="PageNum" style="position:absolute;left:33%;top:70%;text-align: center;">
	<li><a href="PostingsAction?action=searchpost">首页</a></li>
	<li><a href="PostingsAction?action=searchpost&pagenum=${page.pagenum-1==0?1:page.pagenum-1}">上一页</a></li>
	<c:forEach begin="${page.startPage}" end="${page.endPage}" var="num">
		<li><a href="PostingsAction?action=searchpost&pagenum=${num}">${num}</a></li>
	</c:forEach>
	<li><a href="PostingsAction?action=searchpost&pagenum=${page.pagenum+1 <= page.totalpage?page.pagenum+1:page.totalpage}">下一页</a></li>
	<li><a href="PostingsAction?action=searchpost&pagenum=${page.totalpage}">尾页</a></li>
	</ul>
	</c:if>
	
	<!-- /PageNum -->
	</div>
	<!-- /Contents -->
	
	</div>
	<!-- /wrap_right -->

</body>
</html>