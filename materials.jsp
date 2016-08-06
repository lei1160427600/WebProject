<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="UTF-8">
    <title>用户中心</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/meterialscommon.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/meterialsmain.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/meterialsmylessons.css"/>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/libs/modernizr.min.js"></script>
    <style type="text/css">
     input,button{font: 12px/1.14 "Arial","Hiragino Sans GB",\5b8b\4f53,"Georgia","serif";color: #333;outline: 0;height:28px;}
     select{height:30px;}
    </style> 
</head>
<body style="min-width: 1349px;">
<div class="container clearfix">
    <!-- 左侧菜单栏 -->
    <div class="sidebar-wrap">
            <ul class="sidebar-list">
                <li>
                    <a href="#" style="padding-left: 21px;">资源分类</a>
                    <ul class="sub-menu">
                        <li><a href="">JAVA WEB</a></li>
                        <li><a href="">C/C++</a></li>
                        <li><a href="">JAVA SCRIPT</a></li>
                    </ul>
                </li>
            </ul>
    </div>
    <!-- 左侧菜单栏 -->
    
    <!-- 右侧显示栏 -->
    <div class="main-wrap">
		    	<!-- 右侧顶部搜索栏 -->
		        <div class="crumb-wrap">
		                <form action="BookmanageAction?BookAction=search" method="post">
		                    <table class="search-tab">
		                        <tr>
<!-- 		                            <th width="120px">选择分类:</th> -->
<!-- 		                            <td> -->
<!-- 		                                <select name="typeid"> -->
<!-- 		                                    <option value="0">全部</option> -->
<!-- 		                                    <option value="19">JAVA WEB</option> -->
<!-- 		                                    <option value="20">C/C++</option> -->
<!-- 		                                    <option value="21">JAVA SCRIPT</option> -->
<!-- 		                                </select> -->
<!-- 		                            </td> -->
<!-- 		                            <td><input class="btn btn-primary btn2" name="sub" id="sub" value="查询" type="submit"></td> -->
					            	<a href="${pageContext.request.contextPath}/uploadmaterials.jsp" style="padding-left: 21px;float: left;">上传资料</a>
		                        </tr>
		                    </table>
		                </form>
		        </div>
		        <!-- 右侧顶部搜索栏 -->
        		<div style="padding: 5px 0;border-bottom: 1px solid #e5e5e5;background-color: #F9F9F9;">
		            <table class="search-tab" style="width: 100%;margin-left: 10px;">
		                        <tr style="">
		                            <td width="120px" align="left">资源名称</th>
		                            <td width="120px" align="left">作者</td>
		                            <td width="120px" align="left">资料上传者</td>
		                            <td width="120px" align="left">简介</td>
		                            <td width="120px" align="left">上传时间</td>
		                            <td width="120px" align="left">下载资源</td>
		                        </tr>
		            </table>
		        </div>
		        <!-- 上传资料显示 -->
        		<c:forEach items="${page.records}" var="A">
		        <div style="padding: 5px 0;border-bottom: 1px solid #e5e5e5;background-color: #F9F9F9;">
		            <table class="search-tab" style="width: 100%;margin-left: 10px;">
		                        <tr style="">
		                            <td width="120px" align="left">${A.name}</th>
		                            <td width="120px" align="left">${A.writer}</td>
		                            <td width="120px" align="left">username</td>
		                            <td width="120px" align="left">${A.content}</td>
		                            <td width="120px" align="left"><fmt:formatDate value="${A.time}" pattern="yyyy-MM-dd" /></td>
		                            <td width="120px" align="left"><a href="${pageContext.request.contextPath}/MaterialsAction?action=download&mid=${A.mid}">点击下载</a></td>
		                        </tr>
		            </table>
		        </div>
		        </c:forEach>
		        <!-- 上传资料显示 -->
    </div>
    <!-- 右侧显示栏 -->
</div>
</body>
</html>