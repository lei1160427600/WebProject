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
<img src="/tproject/admin/images/home.png"/> &nbsp;<b>用户管理：查看用户</b>
<hr>
<!-- Contents -->
	<div id="Contents">
	<script type="text/javascript">
	$(function(){
	$(".select").each(function(){
	var s=$(this);
	var z=parseInt(s.css("z-index"));
	var dt=$(this).children("dt");
	var dd=$(this).children("dd");
	var _show=function(){dd.slideDown(200);dt.addClass("cur");s.css("z-index",z+1);};
	var _hide=function(){dd.slideUp(200);dt.removeClass("cur");s.css("z-index",z);};
	dt.click(function(){dd.is(":hidden")?_show():_hide();});
	dd.find("a").click(function(){dt.html($(this).html());_hide();});
	$("body").click(function(i){ !$(i.target).parents(".select").first().is(s) ? _hide():"";});})})
	</script>
	
	<!-- selectbox -->
	<div>
	<form action="${pageContext.request.contextPath}/UserAction?action=searchuser" method="post">
	<ul style="display: inline;">
<!-- 	<li><input type="submit"  class="searchImg" style="float: right;margin: 13px 20px 0px 0px"/></li> -->
	<li><input class="selectbox floatL mag_r20" name="searchuser" value="" placeholder="请输入用户名" type="text" border="1" style="float: right;width: 160px;margin-top: 13px;"></li>
	<li style="margin: 16px 0px 0px 0px;float: right;"><span style="color: #1fbba6;font-size: 16px;">搜索用户：</span></li>
	<li><input name="imgbtn" type="image" src="/tproject/admin/images/search.png" 
				width="25px" height="25px" border="0" style="float: right;margin: 13px -250px 0px 0px"/></li>
	</ul>
	</form>
	</div>
	<!-- /selectbox -->
	
	<c:if test="${JSPAction=='simuserlist'}">
	<!-- MainForm -->
	<div id="MainForm">
	<div class="form_boxA">
	<h2>用户列表</h2>
	<table cellpadding="0" cellspacing="0" border="1">
	<tr>
	<th>用户名</th>
	<th>注册时间</th>
	<th>姓名</th>
	<th>性别</th>
	<th>邮箱</th>
	<th>电话</th>
	<th>权限</th>
	<th>操作</th>
	</tr>
	
	<c:forEach items="${simuserlistpage.records}" var="B">
	<tr>
	<td>${B.uname}</td>
	<td><fmt:formatDate value="${B.addtime}" pattern="yyyy-MM-dd" /></td>
	<td>${B.name}</td>
	<td>${B.sex}</td>
	<td>${B.email}</td>
	<td>${B.tel}</td>
	<td class="f_cA"><c:if test="${B.juri==0}"><a href="UserAction?action=adminmanage&uid=${B.uid}&juri=${B.juri}">设为管理员</a></c:if>
					 <c:if test="${B.juri==1}"><a href="UserAction?action=adminmanage&uid=${B.uid}&juri=${B.juri}">取消管理员权限</a></c:if></td>
	<td><a href="UserAction?action=getone&uid=${B.uid }">查看</a> | <c:if test="${B.state==0}"><a href="UserAction?action=banmanage&uid=${B.uid}&state=${B.state}">禁用</a></c:if>
							  <c:if test="${B.state==1}"><a href="UserAction?action=banmanage&uid=${B.uid}&state=${B.state}">启用</a></c:if></td>
	</tr>
	</c:forEach>
	
	</table>
	<p class="msg">共找到${page.totalrecords}条用户注册记录</p>
	</div>
	</div>
	<!-- /MainForm -->
	</c:if>
	
	
	
	
	
	<c:if test="${JSPAction=='userlist'}">
	<!-- MainForm -->
	<div id="MainForm">
	<div class="form_boxA">
	<h2>用户列表</h2>
	<table cellpadding="0" cellspacing="0" border="1">
	<tr>
	<th>用户名</th>
	<th>注册时间</th>
	<th>姓名</th>
	<th>性别</th>
	<th>邮箱</th>
	<th>电话</th>
	<th>权限</th>
	<th>操作</th>
	</tr>
	
	<c:forEach items="${page.records}" var="A">
	<tr>
	<td>${A.uname}</td>
	<td><fmt:formatDate value="${A.addtime}" pattern="yyyy-MM-dd" /></td>
	<td>${A.name}</td>
	<td>${A.sex}</td>
	<td>${A.email}</td>
	<td>${A.tel}</td>
	<td class="f_cA"><c:if test="${A.juri==0}"><a href="UserAction?action=adminmanage&uid=${A.uid}&juri=${A.juri}">设为管理员</a></c:if>
					 <c:if test="${A.juri==1}"><a href="UserAction?action=adminmanage&uid=${A.uid}&juri=${A.juri}">取消管理员权限</a></c:if></td>
	<td><a href="UserAction?action=showone&uid=${A.uid }">查看</a> | <c:if test="${A.state==0}"><a href="UserAction?action=banmanage&uid=${A.uid}&state=${A.state}">禁用</a></c:if>
							  <c:if test="${A.state==1}"><a href="UserAction?action=banmanage&uid=${A.uid}&state=${A.state}">启用</a></c:if></td>
	</tr>
	</c:forEach>
	
	</table>
	<p class="msg">共找到${page.totalrecords}条用户注册记录</p>
	</div>
	</div>
	<!-- /MainForm -->
	</c:if>
	
	
	
	
	
	<c:if test="${JSPAction=='search'}">
	<!-- MainForm -->
	<div id="MainForm">
	<div class="form_boxA">
	<h2>用户列表</h2>
	<table cellpadding="0" cellspacing="0" border="1">
	<tr>
	<th>用户名</th>
	<th>注册时间</th>
	<th>姓名</th>
	<th>性别</th>
	<th>邮箱</th>
	<th>电话</th>
	<th>权限</th>
	<th>操作</th>
	</tr>
	
	<tr>
	<td>${search.uname}</td>
	<td><fmt:formatDate value="${search.addtime}" pattern="yyyy-MM-dd" /></td>
	<td>${search.name}</td>
	<td>${search.sex}</td>
	<td>${search.email}</td>
	<td>${search.tel}</td>
	<td class="f_cA"><c:if test="${search.juri==0}"><a href="UserAction?action=adminmanage&uid=${search.uid}&juri=${search.juri}">设为管理员</a></c:if>
					 <c:if test="${search.juri==1}"><a href="UserAction?action=adminmanage&uid=${search.uid}&juri=${search.juri}">取消管理员权限</a></c:if></td>
	<td><a href="UserAction?action=getone&uid=${B.uid }">查看</a> | <c:if test="${search.state==0}"><a href="UserAction?action=banmanage&uid=${search.uid}&state=${search.state}">禁用</a></c:if>
							  <c:if test="${search.state==1}"><a href="UserAction?action=banmanage&uid=${search.uid}&state=${search.state}">启用</a></c:if></td>
	</tr>
	<a href="UserAction?action=userlist" style="float: right;position: absolute;left: 91%; top:33%;
    		text-align: center;font-size: 14px;padding: 4px 5px;">返回用户列表</a>
	</table>
	</div>
	</div>
	<!-- /MainForm -->
	</c:if>
	
	<!-- PageNum -->
	<c:if test="${JSPAction=='userlist'}">
	<ul id="PageNum" style="position:absolute;left:33%;top:70%;text-align: center;">
	<li><a href="UserAction?action=userlist">首页</a></li>
	<li><a href="UserAction?action=userlist&pagenum=${page.pagenum-1==0?1:page.pagenum-1}">上一页</a></li>
	<c:forEach begin="${page.startPage}" end="${page.endPage}" var="num">
		<li><a href="UserAction?action=userlist&pagenum=${num}">${num}</a></li>
	</c:forEach>
	<li><a href="UserAction?action=userlist&pagenum=${page.pagenum+1 <= page.totalpage?page.pagenum+1:page.totalpage}">下一页</a></li>
	<li><a href="UserAction?action=userlist&pagenum=${page.totalpage}">尾页</a></li>
	</ul>
	</c:if>
	<!-- /PageNum -->
	</div>
	<!-- /Contents -->
	
	</div>
	<!-- /wrap_right -->

</body>
</html>