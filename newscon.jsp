<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=0"/>
    <meta http-equiv="pragma" content="no-cache"/>
    <title>首页</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/ipr.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/lanyon.css"/>
    <link href="${pageContext.request.contextPath}/css/common.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/BigSlide.css" type="text/css" rel="stylesheet">
    <style type="text/css">
    body {
	background-color: #603;
}
    body,td,th {
	color: #603;
}
    </style>
    <script src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/BigSlide.js" type="text/javascript"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/ipr.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.event.drag-1.5.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.touchSlider.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/index.js"></script>
  </head>
  <body class="body">
    <div id="Big_Slide_box">
	<div id="Big_Slide">
    	<ul>
        	<li style=" background:#E81216;" id="Big_Slide_0"><img src="images/banner03.jpg" style="height: 100%;width: 100%;"></li>
            <li style=" background:#000000;" id="Big_Slide_1"><img src="images/banner02.jpg" style="height: 100%;width: 100%;"></li>
            <li style=" background:#4144D7;" id="Big_Slide_2"><img src="images/banner01.jpg" style="height: 100%;width: 100%;"></li>
        </ul>
        <a id="Big_Slide_Last"></a>
        <a id="Big_Slide_Next"></a>
        <div id="Big_Slide_Tab"></div>
        <div id="prevL" class="prev" ></div>
        <div id="prevR" class="prev" ></div>
    </div>
</div>
    <div class="ipr-index-mian">
      <div class="index-content">
        <h3>校园新闻</h3>
        	<c:forEach items="${page.records}" var="A">
		        <div class="list">
		          <h4><a href="${pageContext.request.contextPath}/NewsAction?action=shownews&id=${A.id}">${A.title}</a></h4>
		          <dl class="left">
		            <dt><img src="images/con1.jpeg" alt="新闻" width="74%" height="192"/></dt>
		            <dd>${A.content}</dd>
		            <p class="last">河南农业大学学习交流平台 &nbsp;&nbsp;&nbsp; <fmt:formatDate value="${A.addtime}" pattern="yyyy-MM-dd" /> &nbsp;|&nbsp; 阅读--次</p>
		          </dl>
		        </div>
		    </c:forEach>
      </div>
    </div>
    
</body>
</html>