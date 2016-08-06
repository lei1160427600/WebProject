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

</head>

<body>



<!-- wrap_right -->
<div class="wrap_right" style="margin-top: 5px;">
<img src="/tproject/admin/images/home.png"/> &nbsp;<b>用户管理：新闻管理</b>
<hr>

 <form name="myform" action="/tproject/NewsAction?a=b">
<input type="hidden" name="action" value="${param.opt }"/>
<input type="hidden" name="id" value="${id }"/>
<div style="margin-top: 50px">
<table cellpadding="2" cellspacing="1" class="table">
    <tr> 
        <td class="text"><span class="bi_tian"></span>新闻标题：</td>
        <td class="input"><input name="title"  type="text" class="text" value="${news.title }" /><span class="tips">15字以内</span></td>
        <td><span style="color: red">${msg }</span></td>
    </tr>
	<tr> 
        <td class="text"><span class="bi_tian"></span>作者：</td>
        <td class="input">
		    <input name="author" type="text" class="text" value="${news.author }"/>
		    <span class="tips color390">建议填写检测到的网址：<font class="red">http://www.baidu.com/</font></span>	    </td>
		    <td>&nbsp;</td>
    </tr>
  
    <tr>
      <td class="text"><span class="bi_tian"></span>新闻内容：</td>
       <td colspan="2" class="text">
			<textarea rows="10" cols="50" name="content">${news.content }</textarea>
<!--           <script type="text/javascript">CKEDITOR.replace('editor01');</script> -->
			<span class="tips">5000字以内</span>		</td>
			<td>&nbsp;</td>
    </tr> 
    
	
	
	<tr> 
        <td class="text"></td>
	    <td class="submit">
	    <c:if test='${param.opt=="add" }'>
		<input type="submit" name="submit1" value="添加" class="submit" style="height: 26px;width: 100px;background-color: blue"/>		
		</c:if>
	    <c:if test='${param.opt=="up" }'>
		<input type="submit" name="submit1" value="修改" class="submit" style="height: 26px;width: 100px;background-color: blue"/>		
		</c:if>
		</td>
    </tr>
  </table>
 </div>
</form>

</body>
</html>