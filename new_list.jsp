<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<style type="text/css">

body {
	font-family:
    'HelveticaNeue-UltraLight', 
    'Helvetica Neue UltraLight', 
    Roboto, 
    Arial, 
    Sans-serif;
  backface-visibility:hidden;
  background:#eee;
}

input[id*="joacims-menu"] {
  display:none;
}

input[id*="joacims-menu"] + label {
  display:block;
  width:35px;
  height:35px;
  background:#222;
  cursor:pointer;
  font-size:30px;
  color:#fff;
  position:relative;
}

input[id*="joacims-menu"] + label span {
  display:block;
  position:absolute;
  left:8px;
  transition:.2s;
}

input[id*="joacims-menu"]:checked + label span {
  transform:rotate(45deg);
  font-size:34px;
  top:-2px;
  left:9px;
}

nav a {
  display:block;
  height:40px;
  line-height:40px;
  background:#3e3e3e;
  width:100px;
  padding-left:10px;
  text-decoration:none;
  color:white;
  box-shadow:5px 0 0 #000;
}

input[id*="joacims-menu"] ~ nav a:nth-child(1) { box-shadow:5px 0 0 #3498db; transition-delay:.05s; }
input[id*="joacims-menu"] ~ nav a:nth-child(2) { box-shadow:5px 0 0 #2ecc71; transition-delay:.10s; }
input[id*="joacims-menu"] ~ nav a:nth-child(3) { box-shadow:5px 0 0 #e67e22; transition-delay:.15s; }
input[id*="joacims-menu"] ~ nav a:nth-child(4) { box-shadow:5px 0 0 #c0392b; transition-delay:.20s; }
input[id*="joacims-menu"] ~ nav a:nth-child(5) { box-shadow:5px 0 0 #2c3e50; transition-delay:.25s; }
input[id*="joacims-menu"] ~ nav a:nth-child(6) { box-shadow:5px 0 0 #f1c40f; transition-delay:.30s; }

input[id*="joacims-menu"]:checked ~ nav a {
  margin-left:0px;
}

input[id*="joacims-menu"]:checked ~ nav a:hover {
  width:110px;
}

input[id*="joacims-menu"] ~ nav a {
  margin-left:-110px;
  transition:.6s margin;
}

input[id*="joacims-menu"] ~ nav a:hover {
  background:#999;
}
</style>

<body>

<nav> 
  
<input type="checkbox" id="joacims-menu" checked/>

<label for="joacims-menu"><span>+</span></label>

<nav>
	<a href="#">全部</a>
	<a href="#">热门</a>
	<a href="#">最新</a>
	<a href="#">校园</a>
	<a href="#">时事</a>
	<a href="#">政治</a>
</nav>
</body>
</html>
