<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>查看帖子</title>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style_1_common.css?tcD" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style_1_forum_viewthread.css?tcD" />
<script src="${pageContext.request.contextPath}/js/common.js?tcD" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/forum.js?tcD" type="text/javascript"></script>
</head>

<body id="nv_forum" class="pg_viewthread">
<DIV style="width: 100%;height: 100%;background-color: #F0F0F0;">
<div id="wp" class="wp"> 
<!-- 主帖 -->
	<div style="padding: 11px 0px 3px 0px;background-color: #F0F0F0;">
		<a href="${pageContext.request.contextPath}/main.jsp" class="xw1" style="color: #444444;">主页</a><span style="color: #444444;">&nbsp;|&nbsp;</span>
		<a href="${pageContext.request.contextPath}/PostingsAction?action=showall" class="xw1" style="color: #444444;">论坛版块</a><span style="color: #444444;">&nbsp;|&nbsp;</span>
		<a class="xw1" style="color: #444444;">详细信息</a>
	</div>
	<div id="ct" class="wp cl" >
		  <!-- 发帖人信息 -->
		          <div class="pls ptn pbn" style="float: left;">
				        <img src="${pageContext.request.contextPath}/images/louzhu.png" width="60px" style="float: right;margin-top: -5px;"/>
						<div class="avatar"><img height="120" src="/tproject/images/1233.jpg" style="margin-top: -20px;" /></div>
		          		<div class="authi" style="margin-top: 10px;text-align: center;">
		          				<span><a href="#" target="_blank" class="xw1" style="color: #2D64B3;">${pb.uname}</a></span>
		          		</div>
		          		<div class="authi" style="width: 160px; height: 18px;text-align: center;">
		          				<span>普通用户</span>
		          		</div>
		          		<div class="authi" style="width: 160px; height: 18px;">
		          				<span style="width: 65px;float: left;margin-left: 15px;">发帖(123)</span>
		          				<span style="width: 80px;float: left;">回帖(123)</span>
		          		</div>
		          </div>
		  <!-- 发帖人信息 -->
		  
		  <div id="f_pst" class="bmw1" style="float: left;width: 798px;">
		  
		  <!-- 主贴内容 -->
		  		<div style="margin-left: 25px;"><h1 class="ts"><span>${pb.title}</span></h1></div>
		  		<div class="authi" style="margin-left: 25px;"> 
						<img class="authicn vm" id="authicon182839" src="${pageContext.request.contextPath}/static/image/common/online_member.gif" style="margin-bottom: 3px;" />
						<em>发表于：<fmt:formatDate value="${pb.ptime}" pattern="yyyy-MM-dd HH:mm:ss" /></em>
				</div>
				
				<div style="overflow: hidden;margin: 1px 0px 10px 0px;border-bottom: 1px dashed #CDCDCD;"></div>
				
				<div class="authi" style="margin: 20px 0px 0px 30px;min-height: 329.7px;">
				${pb.content}
				</div>
				<div style="text-align: right;margin: 20px;">
				    <span class="xg1"><a href="#">举报</a>&nbsp;|&nbsp;</span> 
				    <span class="xi1">1楼</span>
				    <span class="xg1">&nbsp;|&nbsp;</span>
				    <span class="xg1">查看(123)</span> 
				    <span class="xg1">&nbsp;|&nbsp;</span>
				    <span class="xg1">回复(123)</span> 
				    <c:if test="${ub.uid==pb.uid}">
					    <span class="xg1">&nbsp;|&nbsp;</span>
					    <span class="xg1"><a href="${pageContext.request.contextPath}/PostingsAction?action=delete&pid=${pb.pid}">删除</a></span>
				    </c:if>
		        </div>
		  <!-- 主贴内容 -->
      </div>
    </div>
<!-- 主帖 -->

<div style="overflow: hidden;border-bottom: 1px solid #CDCDCD;"></div>

<!-- 回帖 -->
	<c:forEach items="${page.records}" var="R">
    <div class="wp cl">
		  <!-- 回帖人信息 -->
		          <div class="pls ptn pbn" style="float: left;">
						<div class="avatar"><img height="120" src="${pageContext.request.contextPath}/images/1233.jpg" /></div>
						
		          		<div class="authi" style="margin-top: 10px;text-align: center;">
		          				<span><a href="#" target="_blank" class="xw1" style="color: #2D64B3;">${R.uname}</a></span>
		          		</div>
		          		<div class="authi" style="width: 160px; height: 18px;text-align: center;">
		          				<span>普通用户</span>
		          		</div>
		          </div>
		  <!-- 回帖人信息 -->
		  
		  
		  <!-- 回贴内容 -->
		  <div id="f_pst" class="bmw1" style="float: left;width: 795px;">
				<div class="authi" style="margin: 25px 0px 0px 30px;min-height: 120px;">
				${R.content}
				</div>
				<div style="text-align: right;margin: 20px;">
				    <span class="xg1"><a href="#">举报</a>&nbsp;|&nbsp;</span> 
				    <span class="xi1">1楼</span>
				    <c:if test="${ub.uid==R.uid}">
					    <span class="xg1">&nbsp;|&nbsp;</span>
					    <span class="xg1"><a href="${pageContext.request.contextPath}/RpostingsAction?action=delete&rid=${R.rid}&pid=${R.pid}">删除</a></span>
				    </c:if>
				    <span class="xg1">&nbsp;|&nbsp;</span>
				    <span class="xg1"><fmt:formatDate value="${R.ptime}" pattern="yyyy-MM-dd HH:mm" /></span>
		        </div>
      	 </div>
		 <!-- 回贴内容 -->
    </div>
    
	<div style="overflow: hidden;border-bottom: 1px solid #CDCDCD;"></div>
	</c:forEach>
<!-- 回帖 -->

<!-- 分页 -->
	<div style="overflow: hidden;border-bottom: 1px solid #CDCDCD; background-color: #F0F0F0;">
		<ul id="PageNum" style="text-align: center;margin: 10px 0px;">
			<li style="display: inline;"><a class="ulli" href="${pageContext.request.contextPath}/PostingsAction?action=showone&pid=${pb.pid}">首页</a></li>
			<li style="display: inline;"><a class="ulli" href="${pageContext.request.contextPath}/PostingsAction?action=showone&pid=${pb.pid}&pagenum=${page.pagenum-1==0?1:page.pagenum-1}">上一页</a></li>
			<c:forEach begin="${page.startPage}" end="${page.endPage}" var="num">
				<li style="display: inline;"><a class="ulli" href="${pageContext.request.contextPath}/PostingsAction?action=showone&pid=${pb.pid}&pagenum=${num}">${num}</a></li>
			</c:forEach>
			<li style="display: inline;"><a class="ulli" href="${pageContext.request.contextPath}/PostingsAction?action=showone&pid=${pb.pid}&pagenum=${page.pagenum+1 <= page.totalpage?page.pagenum+1:page.totalpage}">下一页</a></li>
			<li style="display: inline;"><a class="ulli" href="${pageContext.request.contextPath}/PostingsAction?action=showone&pid=${pb.pid}&pagenum=${page.totalpage}">尾页</a></li>
		</ul>
	</div>
<!-- 分页 -->


<!-- 发表评论 -->
    <div class="wp cl">
	 <!-- 发表回帖 -->
      	<c:if test="${ub.uname!=null}">
	      	<!-- 回帖人信息 -->
			<div class="pls ptn pbn" style="float: left;">
					<div class="avatar"><img height="120" src="/tproject/images/1233.jpg" /></div>
					<div class="authi" style="margin-top: 10px;text-align: center;">
						<span style="width: 80px;"><a href="#" target="_blank" class="xw1" style="color: #2D64B3;">${ub.uname}</a></span>
					</div>
					<div class="authi" style="width: 160px; height: 18px;text-align: center;">
			          				<c:if test="${ub.juri=='0'}"><span>普通用户</span></c:if>
			          				<c:if test="${ub.juri=='1'}"><span>管理员</span></c:if>
			        </div>
			</div>
		 	<!-- 回帖人信息 -->
	      	<form method="post" autocomplete="off" id="fastpostform" action="${pageContext.request.contextPath}/RpostingsAction?action=addRpostings&pid=${pb.pid}&uid=${ub.uid}&uname=${ub.uname}&title=${pb.title}">
	                <div id="f_pst" class="bmw1" style="float: left;width: 795px;">
						<div style="margin: 15px;"><textarea rows="10" cols="122" name="content"></textarea></div>
	                	<input type="submit"  name="replysubmit" id="fastpostsubmit" class="pn pnc vm" value="发表回复" tabindex="5"  />
		      			<span class="y pgb"><a href="${pageContext.request.contextPath}/PostingsAction?action=showall">返回列表</a></span>
	                </div>
	      	</form>
      	</c:if>
      	<c:if test="${ub.uname==null}">
      		<!-- 回帖人信息 -->
			<div class="pls ptn pbn" style="float: left;">
					<div class="avatar"><img height="120" src="${pageContext.request.contextPath}/images/1233.jpg" /></div>
					<div class="authi" style="margin-top: 10px;text-align: center;">
						<span style="width: 80px;"><a href="#" target="_blank" class="xw1" style="color: #2D64B3;">uname</a></span>
					</div>
					<div class="authi" style="width: 160px; height: 18px;text-align: center;">
			          	<span>普通用户</span>
			        </div>
			</div>
		 	<!-- 回帖人信息 -->
	      	<form method="post" autocomplete="off" id="fastpostform" action="">
	                <div id="f_pst" class="bmw1" style="float: left;width: 795px;">
						<div style="margin: 15px;"><textarea rows="10" cols="122" name="content" disabled="disabled"></textarea></div>
	                	<a href="login.jsp" target="_top" class="pn pnc vm" style="padding: 2px;">请登录后回复</a>
		      			<span class="y pgb"><a href="${pageContext.request.contextPath}/PostingsAction?action=showall">返回列表</a></span>
	                </div>
	      	</form>
      	</c:if>
     <!-- 发表回帖 -->
   </div>
<!-- 发表评论 -->
    
</div>
</DIV>
</body>
</html>
