<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style_1_common.css?tcD" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style_1_forum_forumdisplay.css?tcD" />
<script src="${pageContext.request.contextPath}/js/common.js?tcD" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/forum.js?tcD" type="text/javascript"></script>
</head>

<body id="nv_forum" class="pg_forumdisplay">

<div style="background-color: #F0F0F0;">

<div id="wp" style="margin: 0px auto;width: 960px;background-color: #F0F0F0;">
  <div id="pt" class="bm cl">
  </div>
  
  <div class="boardnav">
      <div class="mn">
        <div id="threadlist" class="tl bm bmw">
          <div class="th">
            <table cellspacing="0" cellpadding="0">
              <tr>
                <th colspan="2"> <div class="tf"> <a href="PostingsAction?action=showall" class="showmenu xi2">全部主题</a>&nbsp;<a href="#" class="xi2">热门</a>&nbsp; <a href="#" class="xi2">精华</a>&nbsp;</div>
                </th>
                <td class="by">作者</td>
                <td class="num">回复/查看</td>
                <td class="by">最后发表</td>
              </tr>
            </table>
          </div>
          <div class="bm_c"> 
            <div id="forumnew" style="display:none"></div>
              <table summary="forum_52" cellspacing="0" cellpadding="0" id="threadlisttableid">
                <c:forEach items="${page.records}" var="A">
                <tbody id="stickthread_34786">
                  <tr>
                    <td class="icn"><a href="#" title="置顶主题 - 新窗口打开" target="_blank"> <img src="static/image/common/pin_3.gif" alt="全局置顶" /> </a></td>
                    <th class="common"> <a href="#" id="content_34786" class="showcontent y" title="更多操作" onclick="CONTENT_TID='34786';CONTENT_ID='stickthread_34786';showMenu({'ctrlid':this.id,'menuid':'content_menu'})"></a>
                    					<a href="#" onclick="hideStickThread('34786')" class="showhide y" title="隐藏置顶帖">隐藏置顶帖</a></em>
                    					<a class="tdpre y" href="#" onclick="previewThread('34786', 'stickthread_34786');">预览</a>
										<a href="${pageContext.request.contextPath}/PostingsAction?action=showone&pid=${A.pid}" style="font-weight: bold;padding: 8px;font: 700 14px 'Microsoft Yahei','Hei',Tahoma,'SimHei',sans-serif;" class="s xst">${A.title}</a></th>
                    <td class="by"><cite> <a href="space-uid-1.html" c="1">${A.uname}</a></cite> <em><span><fmt:formatDate value="${A.ptime}" pattern="yyyy-MM-dd" /></span></em></td>
                    <td class="num"><a href="thread-34786-1-1.html" class="xi2">48</a><em>17349</em></td>
                    <td class="by"><cite><a href="#" c="1">${A.uname}</a></cite> <em><fmt:formatDate value="${A.utime}" pattern="yyyy-MM-dd" /></em></td>
                  </tr>
                </tbody>
                </c:forEach>
              </table>
          </div>
        </div>
        <ul id="PageNum" style="text-align: center;margin: 10px 0px;">
			<li style="display: inline;"><a class="ulli" href="PostingsAction?action=showall">首页</a></li>
			<li style="display: inline;"><a class="ulli" href="PostingsAction?action=showall&pagenum=${page.pagenum-1==0?1:page.pagenum-1}">上一页</a></li>
			<c:forEach begin="${page.startPage}" end="${page.endPage}" var="num">
				<li style="display: inline;"><a class="ulli" href="PostingsAction?action=showall&pagenum=${num}">${num}</a></li>
			</c:forEach>
			<li style="display: inline;"><a class="ulli" href="PostingsAction?action=showall&pagenum=${page.pagenum+1 <= page.totalpage?page.pagenum+1:page.totalpage}">下一页</a></li>
			<li style="display: inline;"><a class="ulli" href="PostingsAction?action=showall&pagenum=${page.totalpage}">尾页</a></li>
		</ul>
        <div class="bm bw0 pgs cl"> <span id="fd_page_bottom"></span> 
        <!--[diy=diyfastposttop]-->
        <div id="diyfastposttop" class="area"></div>
        <!--[/diy]--> 
        
        <div id="f_pst" class="bm">
          <div class="bm_h">
            <h2>快速发帖</h2>
          </div>
          <form method="post" action="${pageContext.request.contextPath}/PostingsAction?action=addpostings&uname=${ub.uname}&uid=${ub.uid}">
          <div class="bm_c">
              <div class="pbt cl">
                	标题：<input type="text" name="title" value="" placeholder="主贴标题" onkeyup="strLenCalc(this, 'checklen', 80);" tabindex="11" style="width: 25em" />
              </div>
              <div class="cl">
                <div id="fastsmiliesdiv" class="y">
                  <div id="fastsmiliesdiv_data">
                    <div id="fastsmilies"></div>
                  </div>
                </div>
                <div class="hasfsl" id="fastposteditor">
                    <div class="area" style="margin-top: 20px;">
                    	<ul>
                    	<li>内容：</li>
                    	<li style="margin: -20px 0px 0px 36px;"><textarea type="text" id="subject" name="content" placeholder="主贴内容" value="" tabindex="12" style="width: 100%;height: 100px;"></textarea></li>
                    	</ul>
                    </div>
                  </div>
                </div>
                <div id="seccheck_fastpost">
                </div>
                <input type="hidden" name="formhash" value="4a212d6a" />
                <input type="hidden" name="usesig" value="" />
              </div>
              <p class="ptm pnpost"> 
                <button type="submit" name="topicsubmit" id="fastpostsubmit" value="topicsubmit" tabindex="13" class="pn pnc" style="margin: 0px 0px 10px 20px;"><strong title="发新帖">发表帖子</strong></button>
              </p>
            </form>
          </div>
        </div>
        <!--[diy=diyforumdisplaybottom]-->
        <div id="diyforumdisplaybottom" class="area"></div>
        <!--[/diy]--> 
      </div>
    </div>
  </div>
</div>
  <div class="wp mtn"> 
    <div id="diy3" class="area"></div>
  </div>
</div>
</body>
</html>
