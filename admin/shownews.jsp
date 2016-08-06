<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    <head>
        <meta http-equiv=content-type content="text/html; charset=utf-8" />
        <link href="css/admin.css" type="text/css" rel="stylesheet" />
    </head>
    <body style="background-color: #F9F9F9 " >
        <table cellspacing=0 cellpadding=0 width="100%" align=center border=0>
            <tr height=28>
                <td background=/project05/img/title_bg1.jpg align="center">新闻中心 </td></tr>
            <tr>
                <td bgcolor=#b1ceef height=1></td></tr>
            <tr height=20>
                <td background=/project05/img/shadow_bg.jpg></td></tr>
         </table>
         <table cellpadding="2" cellspacing="1" class="table">
    <tr> 
        <td >${nb.title }
         <hr/>
        </td>
    </tr>
    <tr> 
        <td >发布人：${nb.author }&nbsp;&nbsp;&nbsp;&nbsp;
        
        发布时间：<fmt:formatDate value="${nb.addtime}" pattern="yyyy-MM-dd" />
        更新时间：<fmt:formatDate value="${nb.updatetime}" pattern="yyyy-MM-dd" />
        <hr/>
        </td>
    </tr>	
	<tr> 
        <td>
        
        ${nb.content }
        </td>
        </tr>
  </table>
         
  </body>
</html>
