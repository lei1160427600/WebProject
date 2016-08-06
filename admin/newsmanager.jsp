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

<style type="text/css"> 
.list a{ color:#3085be; text-decoration:none; font-size: 18px;margin-right: 126px;}
.list a:hover{color:#1e628f; text-decoration:underline; font-size: 18px;margin-right: 126px;}
#table  
{ 
border-collapse: collapse; 
border: none; 
margin-top: 50px;
width: 100%;

} 
#table th
{
border: solid #B9C4D0 1px;
height:40px;
background:expression((this.parentNode.rowIndex)%2==0?"#EFF3F5":"#E3EFFB");
}
#table td 
{ 
border: solid #B9C4D0 1px;
height:30px; 
background:expression((this.parentNode.rowIndex)%2==0?"#EFF3F5":"#E3EFFB");
} 
</style>  
</head>

<body>



<!-- wrap_right -->
<div class="wrap_right" style="margin-top: 5px;">
<img src="/tproject/admin/images/home.png"/> &nbsp;<b>用户管理：新闻管理</b>
<hr>

<div class="list">
	<form action="${pageContext.request.contextPath}/PostingsAction?action=searchpost" method="post">
	<ul style="display: inline;">
<!-- 	<li><input type="submit"  class="searchImg" style="float: right;margin: 13px 20px 0px 0px"/></li> -->
	<li style="margin: 16px 0px 0px 0px;float: right;"><a  href="/tproject/admin/addnews.jsp?opt=add" >添加新闻</a></li>
	</ul>
	</form>
	</div>
	
	<!-- MainForm -->
	<div id="MainForm">
	<div class="form_boxA">
	<h2>新闻列表</h2>
	<table cellpadding="0" cellspacing="0" border="1">
	<tr>
	<th>新闻标题</th>
	<th>作者</th>
	<th>发布时间</th>
	<th>修改时间</th>
	<th>操作</th>
	</tr>
	
	<c:forEach items="${page.records}" var="A">
	<tr>
	<td>${A.title}</td>
	<td>${A.author}</td>
	<td><fmt:formatDate value="${A.addtime}" pattern="yyyy-MM-dd" /></td>
	<td><fmt:formatDate value="${A.updatetime}" pattern="yyyy-MM-dd" /></td>
	<td class="f_cA">
	<a href="${pageContext.request.contextPath}/NewsAction?action=showone&id=${A.id}">编辑</a>
	
	<a href="${pageContext.request.contextPath}/NewsAction?action=de&id=${A.id}">删除</a>
					<a href="${pageContext.request.contextPath}/NewsAction?action=shownews&id=${A.id}">查看</a></td>
	</tr>
	</c:forEach>
	
	</table>
	<p class="msg">共找到${page.totalrecords}条用户注册记录</p>
	</div>
	</div>
	<!-- /MainForm -->
	
	<!-- PageNum -->
	<ul id="PageNum" style="position:absolute;left:33%;top:70%;text-align: center;">
	<li><a href="NewsAction?action=newslist&a=b">首页</a></li>
	<li><a href="NewsAction?action=newslist&a=b&pagenum=${page.pagenum-1==0?1:page.pagenum-1}">上一页</a></li>
	<c:forEach begin="${page.startPage}" end="${page.endPage}" var="num">
		<li><a href="NewsAction?action=newslist&a=b&pagenum=${num}">${num}</a></li>
	</c:forEach>
	<li><a href="NewsAction?action=newslist&a=b&pagenum=${page.pagenum+1 <= page.totalpage?page.pagenum+1:page.totalpage}">下一页</a></li>
	<li><a href="NewsAction?action=newslist&a=b&pagenum=${page.totalpage}">尾页</a></li>
	</ul>
	<!-- /PageNum -->
	</div>
	<!-- /Contents -->
	
	</div>
	<!-- /wrap_right -->

</body>
</html>