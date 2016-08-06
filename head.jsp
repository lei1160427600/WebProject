<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>

<head>

  
	<meta charset="utf-8">
	<title>头部</title>
	<meta name="description" content="Free Responsive Html5 Css3 Templates | zerotheme.com">
	<meta name="author" content="www.zerotheme.com">
	
  
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/zerogrid.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/menu.css">
	<link href="${pageContext.request.contextPath}/css/owl.carousel.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/owl.theme.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	
</head>
<body id="wrapper" >
   <div class="wrap-body">
	<header>
		<div class="wrap-header">
			<div class="zerogrid">
				<div class="row">
					<a href="${pageContext.request.contextPath}/MessageAction?action=index" target="mainFrame" class="logo"><img src="${pageContext.request.contextPath}/images/logo1.png" /></a>
					<ul class="social" style="margin-top: 50px;">
						<li style="margin: 3px 0px 0px 0px;"><img src="${pageContext.request.contextPath}/static/image/common/online_member.gif"/></li>
						<li style="margin: 1px 20px 0px 0px; font-size: 14px;">${ub.uname}</li>
						<c:if test="${ub.uname!=null}"><li style="margin: 0px"><a href="UserAction?action=woff" onclick="return confirm('确认注销？')" target="_top">注销登录</a></li></c:if>
						<c:if test="${ub.uname==null}"><li style="margin: 0px"><a href="login.jsp" target="_top">登录/注册</a></li></c:if>
						<c:if test="${ub.juri==1}"><li style="margin: 0px"><a href="${pageContext.request.contextPath}/admin/index.jsp" target="_top">进入后台管理</a></li></c:if>
					</ul>
				</div>
			</div>
		</div>
</header>
    
	<!--////////////////////////////////////Menu-->
<nav class="cmn-tile-nav">
	  <ul class="clearfix">
			<li class="colour-1"><a href="${pageContext.request.contextPath}/MessageAction?action=index" target="mainFrame">主页</a></li>
			<li class="colour-2"><a href="${pageContext.request.contextPath}/PostingsAction?action=showall" target="mainFrame">论坛版块</a></li>
			<li class="colour-3"><a href="${pageContext.request.contextPath}/MaterialsAction?action=showallmaterials" target="mainFrame">资源共享</a></li>
			<li class="colour-4"><a href="${pageContext.request.contextPath}/NewsAction?action=newslist&a=a" target="mainFrame">校园新闻</a></li>
			<c:if test="${ub.uname!=null}"><li class="colour-5"><a href="UserAction?action=showone&uid=${ub.uid}" target="mainFrame">个人中心</a></li></c:if>
			<c:if test="${ub.uname==null}"><li class="colour-5"><a href="login.jsp" onclick="return confirm('请先登录！')" target="_top">个人中心</a></li></c:if>
		</ul>
	  
    </nav>
	<!-- Slider -->
	<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.js"></script>
	<script src="${pageContext.request.contextPath}/js/demo.js"></script>
	<script src="${pageContext.request.contextPath}/js/classie.js"></script>
	<script src="${pageContext.request.contextPath}/js/owl.carousel.js"></script>
<script>
    $(document).ready(function() {

      $("#owl-demo-1").owlCarousel({
        items : 4,
        lazyLoad : true,
        navigation : true
      });
	  $("#owl-demo-2").owlCarousel({
        items : 4,
        lazyLoad : true,
        navigation : true
      });
	  $("#owl-demo-3").owlCarousel({
        items : 4,
        lazyLoad : true,
        navigation : true
      });
    });
    </script>
    </div>
</body></html>