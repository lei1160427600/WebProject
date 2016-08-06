<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>用户中心</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/meterialscommon.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/meterialsmain.css"/>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/meterialsmylessons.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/libs/modernizr.min.js"></script>
   	<script type="text/javascript">
    function submit2(){
    	var myForm = document.getElementById("myForm");
    	var typeid = document.getElementById("typeid").value;
    	var name = document.getElementById("name").value;
    	var writer = document.getElementById("writer").value;
    	var content = document.getElementById("content").value;
    	myForm.action="${pageContext.request.contextPath}/MaterialsAction?action=upload&typeid="+typeid+"&name="+name+"&writer="+writer
    						+"&content="+content;
    	alert(myForm.action);
    	myForm.submit();
    	
    }
    </script>
</head>
<body>
<div class="container clearfix">
    <!--sidebar-->
    <div class="sidebar-wrap">
            <ul class="sidebar-list">
                <li>
                    <a href="#" style="padding-left: 21px;"><i class="icon-font">&#xe003;</i>资源分类</a>
                    <ul class="sub-menu">
                        <li><a href=""><i class="icon-font">&#xe005;</i>JAVA WEB</a></li>
                        <li><a href=""><i class="icon-font">&#xe006;</i>C/C++</a></li>
                        <li><a href=""><i class="icon-font">&#xe008;</i>JAVA SCRIPT</a></li>
                    </ul>
                </li>
            </ul>
    </div>
    <!--/sidebar-->
    <div class="main-wrap">
        <div class="result-wrap">
            <div class="result-content">
                <form action="${pageContext.request.contextPath}/MaterialsAction?action=upload" method="post" id="myForm" name="myForm" enctype="multipart/form-data">
                    <table class="insert-tab" width="100%">
                        <tbody><tr>
                            <th width="120"><i class="require-red">*</i>资源类型：</th>
                            <td>
                                <select name="typeid" id="typeid" class="required">
                                    <option value="0" selected="selected">全部</option>
                                    <option value="19">JAVA WEB</option>
                                    <option value="20">C/C++</option>
                                    <option value="21">JAVA SCRIPT</option>
                                </select>
                                (默认为全部)
                            </td>
                        </tr>
                            <tr>
                                <th><i class="require-red">*</i>资源名称：</th>
                                <td>
                                    <input class="common-text required" id="name" name="name" size="50" value="" type="text">
                                </td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>资源作者：</th>
                                <td>
                                    <input class="common-text required" id="writer" name="writer" size="15" value="" type="text">
                                </td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>上传文件：</th>
                                <td><input name="upfile" id="" type="file"></td>
                            </tr>
                            <tr>
                                <th>资源介绍：</th>
                                <td><textarea name="content" class="common-textarea" id="content" cols="31" style="width: 99%;margin: 10px 0px;" rows="10"></textarea></td>
                            </tr>
                            <tr>
                                <th></th>
                                <td>
                                    <input class="btn btn-primary btn6 mr10" onclick="submit2()" value="上传" type="button">
                                    <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
                                </td>
                            </tr>
                        </tbody></table>
                </form>
            </div>
        </div>

    </div>
    <!--/main-->
</div>
</body>
</html>