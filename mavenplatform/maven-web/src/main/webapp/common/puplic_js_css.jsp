<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% 
String path = request.getContextPath(); 
// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath
String basePath = request.getScheme()+"://"+request.getServerName()
+":"+request.getServerPort()+path+"/"; 
// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。 
pageContext.setAttribute("basePath",basePath); 
%> 
<!-- Modernizr JS -->
<script src="<%=basePath %>js/bootstrap/modernizr-2.6.2.min.js"></script>
<script src="<%=basePath %>js/jquery-3.1.1.min.js"></script>
<!-- jQuery Easing -->
<script src="<%=basePath %>js/bootstrap/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="<%=basePath %>js/bootstrap/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="<%=basePath %>js/bootstrap/jquery.waypoints.min.js"></script>

<!-- Layer -->
<script src="<%=basePath %>js/layui/layui.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="<%=basePath %>js/layui/css/layui.css">

<!-- validate -->
<script src="<%=basePath %>js/validate/jquery.validate.min.js" type="text/javascript"></script>
<script src="<%=basePath %>js/validate/messages_zh.min.js" type="text/javascript"></script>

<!-- Main JS (Do not remove) -->
<script src="<%=basePath %>js/bootstrap/main.js"></script>
<!-- pjax -->
<script src="<%=basePath %>js/pjax/jquery.pjax.js"></script>
<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<!-- <link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,300,700|Roboto:300,400'
	rel='stylesheet' type='text/css'> -->

<!-- Animate.css -->
<link rel="stylesheet" href="<%=basePath %>css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="<%=basePath %>css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="<%=basePath %>css/bootstrap.css">

<link rel="stylesheet" href="<%=basePath %>css/style.css">
<div class="col-md-3" style="float: right;">
	<ul class="social">
		<li><a href="login.jsp"><i class="im-user3"></i> </a></li>
		<li><a href="#"><i class="im-newspaper"></i> </a></li>
		<li><a href="exit.do"><i class="im-exit"></i> </a></li>
	</ul>
</div>