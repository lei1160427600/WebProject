<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台</title>

<link rel="stylesheet" href="/tproject/admin/css/index.css" type="text/css" media="screen" />

<script type="text/javascript" src="/tproject/admin/js/jquery.min.js"></script>
<script type="text/javascript" src="/tproject/admin/js/tendina.min.js"></script>
<script type="text/javascript" src="/tproject/admin/js/common.js"></script>

</head>
<body>
    <!--顶部-->
    <div class="top">
            <div style="float: left;margin-left:30px"><img src="/tproject/admin/images/logo1.png" /></div>
            <div id="ad_setting" class="ad_setting">
                <a class="ad_setting_a" href="javascript:; ">${ub.uname}</a>
                <ul class="dropdown-menu-uu" style="display: none" id="ad_setting_ul">
                    <li class="ad_setting_ul_li"> <a href="javascript:;"><i class="icon-user glyph-icon"></i>个人中心</a> </li>
                    <li class="ad_setting_ul_li"> <a href="javascript:;"><i class="icon-cog glyph-icon"></i>设置</a> </li>
                    <li class="ad_setting_ul_li"> <a href="/tproject/index.jsp"><i class="icon-signout glyph-icon"></i> <span class="font-bold">退出</span> </a> </li>
                </ul>
                <img class="use_xl" src="images/right_menu.png" />
            </div>
    </div>
    <!--顶部结束-->
    <!--菜单-->
    <div class="left-menu">
        <ul id="menu">
            <li class="menu-list">
               <a style="cursor:pointer" class="firsta"><i  class="glyph-icon xlcd"></i>用户管理<s class="sz"></s></a>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/UserAction?action=userlist" target="menuFrame"><i class="glyph-icon icon-chevron-right1"></i>普通用户</a></li>
                </ul>
            </li>
            
            <li class="menu-list">
               <a style="cursor:pointer" class="firsta"><i  class="glyph-icon xlcd"></i>数据管理<s class="sz"></s></a>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/PostingsAction?action=postingslist" target="menuFrame"><i class="glyph-icon icon-chevron-right1"></i>主贴管理</a></li>
<!--                     <li><a href="product.html" target="menuFrame"><i class="glyph-icon icon-chevron-right2"></i>资料管理</a></li> -->
                    <li><a href="${pageContext.request.contextPath}/NewsAction?action=newslist&a=b" target="menuFrame"><i class="glyph-icon icon-chevron-right3"></i>新闻管理</a></li>
                    <li><a href="${pageContext.request.contextPath}/MessageAction?action=msglist" target="menuFrame"><i class="glyph-icon icon-chevron-right3"></i>留言管理</a></li>
                </ul>
            </li>
            
        </ul>
    </div>
    
    <!--菜单右边的iframe页面-->
    <div id="right-content" class="right-content">
        <div class="content">
            <div id="page_content">
                <iframe id="menuFrame" name="menuFrame" src="welcome.jsp" style="overflow:visible;"
                        scrolling="yes" frameborder="no" width="100%" height="100%"></iframe>
            </div>
        </div>
    </div>
</body>
</html>