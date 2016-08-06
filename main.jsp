<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>

<head>
    <link href="${pageContext.request.contextPath}/css/lrtk.css" rel="stylesheet" type="text/css" />
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/lrtk.js"></script> 
	<meta charset="utf-8">
	<title>+y学习交流论坛</title>
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
	<!--////////////////////////////////////Container-->
	<section id="container" class="index-page">
		<div class="wrap-container zerogrid">
			<!------------------------------------->
			<div class="row">
				<div class="header" style="width: 100%;">
					<h2>论坛版块</h2>
			  		<c:forEach items="${pd}" var="A">
					<div class="row" style="padding: 10px 0px;">
			  		<table>
			  			<tr>
					  		<td width="400px"><span>&nbsp;${A.title}</span></td>
					  		<td width="180px"><span>发帖人：${A.uname}</span></td>
					  		<td><span>发表于：<fmt:formatDate value="${A.ptime}" pattern="yyyy-MM-dd" /></span></td>
				  		</tr>
			  		</table>
					</div>
			  		</c:forEach>
				</div>
			  	
			</div>
			<div class="row">
						<section>
							<div class="header">
								<h2>校园新闻</h2>
							<c:forEach items="${nd}" var="B">
							<div class="row" style="padding: 10px 0px;">
							<table>
			  				<tr>
					  		<td width="400px"><span>&nbsp;${B.title}</span></td>
					  		<td width="180px"><span>作者：${B.author}</span></td>
					  		<td><span>发表于：<fmt:formatDate value="${B.addtime}" pattern="yyyy-MM-dd" /></span></td>
				  			</tr>
			  				</table>
							</div>
							</c:forEach>
							</div>
						</section>
						
						<section class="vid-sport">
							<div class="header">
								<h2>资源共享</h2>
								<c:forEach items="${md}" var="C">
								<div class="row" style="padding: 10px 0px;">
								<table>
				  				<tr>
						  		<td width="400px"><span>&nbsp;${C.name}</span></td>
						  		<td width="180px"><span>作者：${C.writer}</span></td>
						  		<td><span>发表于：<fmt:formatDate value="${C.time}" pattern="yyyy-MM-dd" /></span></td>
					  			</tr>
				  				</table>
								</div>
								</c:forEach>
							</div>
						</section>
						
<!-- 				<div id="sidebar" class="col-1-3"> -->
<!-- 					<div class="widget wid-news"> -->
<!-- 						<div class="wid-header"> -->
<!-- 							<h5>最热资源</h5> -->
<!-- 						</div> -->
<!-- 						<div class="wid-content"> -->
<!-- 							<div class="row"> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
		</div>
	</section>

	<!-- Slider -->
	<script src="js/jquery-2.1.1.js"></script>
	<script src="js/demo.js"></script>
	<script src="js/classie.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.js"></script>
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
<a href="#0" class="cd-top">Top</a>
</body></html>