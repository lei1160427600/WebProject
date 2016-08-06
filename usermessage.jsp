<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<!--
	Astral 1.0 
-->
<html>
	<head>
		<title>Astral </title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<script src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/css/5grid/init.js?use=mobile,desktop"></script>
		<script src="${pageContext.request.contextPath}/js/jquery.formerize-1.1.js"></script>
		<script src="${pageContext.request.contextPath}/js/init.js"></script>
		<style type="text/css">
		#apDiv1 {
	position: absolute;
	width: 146px;
	height: 50px;
	z-index: 1;
	left: 296px;
	top: -701px;
	visibility: visible;
}
        #apDiv2 {
	position: absolute;
	width: 200px;
	height: 115px;
	z-index: 1;
	left: 205px;
	top: -130px;
}
        </style>
        	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/5grid/core.css" />
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/5grid/core-desktop.css" />
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/5grid/core-1200px.css" />
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/5grid/core-noscript.css" />
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style3.css" />
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style-desktop.css" />
	<noscript>
			
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/noscript.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie8.css" /><![endif]-->
	</head>
	<body class="homepage">

		<!-- Wrapper-->
			<div id="wrapper">
				
				<!-- Nav -->
					<nav id="nav">
						<a href="#me" style="font-size: 16px;">简介</a>
						<a href="#work" style="font-size: 16px;">资料</a>
						<a href="#email" style="font-size: 16px;">反馈</a>
					</nav>

				<!-- Main -->
					<div id="main">
						
						<!-- Me -->
							<article id="me" class="panel">
								<header>
									<h1>个人相关资料</h1>
									<span class="byline">简介</span>
								</header>
								<a href="#work" class="jumplink pic">
									<span class="jumplink arrow icon icon-right"><span>See my work</span></span>
									<img src="userimgs/me.jpg" alt="" />
								</a>
							</article>

						<!-- Work --> 
							<article id="work" class="panel">
								<header>
								  <p>个人资料</p>
			<form action="UserAction?action=useradd&uid=${ub.uid }" method="post">
                                   <table width="474" height="421" border="1">
       <tr>
        <td width="166">用户名</td>
      <td width="292"><input type="text" name="uname" value="${msg.uname }" disabled="disabled"></td>
       </tr>                            
    <tr>
      <td width="166">昵称</td>
      <td width="292"><input type="text" name="nname" value="${msg.nname }"></td>
    </tr>
    <tr>
      <td>注册时间</td>
      <td><input type="text" name="addtime" value="<fmt:formatDate value="${msg.addtime}" pattern="yyyy-MM-dd" />" disabled="disabled"></td>
    </tr>
    
    <tr>
      <td>真实姓名</td>
      <td><input type="text" name="name" value="${msg.name }"></td>
    </tr>
     <tr>
      <td>性别</td>
      <td><input type="text" name="sex" value="${msg.sex }"></td>
    </tr>
    <tr>
      <td>学号</td>
      <td><input type="text" name="userid" value="${msg.userid }"></td>
    </tr>
    <tr>
      <td>专业班级</td>
      <td><input type="text" name="prof" value="${msg.prof }"></td>
    </tr>
    <tr>
      <td>家庭住址</td>
      <td><input type="text" name="address" value="${msg.address }" ></td>
    </tr>
    <tr>
      <td>手机</td>
      <td><input type="text" name="tel" value="${msg.tel }" ></td>
    </tr>
    
    <tr>
    <td> &nbsp;</td>
     <td> <input type="submit" class="button" value="保存" style="margin-right: 83px;"> </td>
    </tr>
  </table>
  </form>
 
								</header>
								
							  <section class="5grid is-gallery">
									<div class="row">
										
								</section>
							</article>

						<!-- Email -->
							<article id="email" class="panel">
								<header>
									<h2>反馈</h2>
								</header>
								<form action="MessageAction?action=add&uid=${ub.uid }&uname=${ub.uname}" method="post">
									<div class="5grid">
										<div class="row">
<!-- 											<div class="6u"> -->
<!-- 												<input type="text" class="text" name="name" placeholder="昵称" /> -->
<!-- 											</div> -->
<!-- 											<div class="6u"> -->
<!-- 												<input type="text" class="text" name="email" placeholder="账号" /> -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 										<div class="row"> -->
<!-- 											<div class="12u"> -->
<!-- 												<input type="text" class="text" name="subject" placeholder="题目" /> -->
<!-- 											</div> -->
<!-- 										</div> -->
										
										<div class="row">
										
											<div class="12u">
												<textarea name="content" placeholder="请留给我们您宝贵的建议"></textarea>
											</div>
										</div>
										<div class="row">
											<div class="12u">
												<input type="submit" class="button" value="提交" />
										     
											</div>
										</div>
									</div>
								</form>
							</article>

					</div>
		
				<!-- Footer -->
					<div id="footer">
						
					</div>
		
			</div>

	</body>
</html>