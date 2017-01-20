<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#getId").click(function(){
			$.post("getCache2",function(data){
				alert(data);
			},"text");
		});
	});
</script>
</head>
<body>
获取缓存的值：${cache }

<div id="getId">再次获取</div>
</body>
</html>