<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>UploadiFive Test</title>
<%@ include file="/common/puplic_js_css.jsp"%>
<script type="text/javascript">
$(function(){
	var l=layui
	layui.use('layer', function(){
		  var layer = layui.layer;
		  
		}); 
})
</script>
	<script type="text/javascript">
	function test(a){
		  layer.open({
			  type: 1,
			  fixed:false,
			  resize:true,
			  maxmin:true,
			  moveOut:true,
			  area:['500px','400px'],
			  content: '<img src='+a+'img/zz.png>'
			});
	}
	</script>
</head>
<body>
	<h1>登入成功</h1>
	<div id="uploader" class="wu-example">
    <!--用来存放文件信息-->
    <div id="thelist" class="uploader-list"></div>
    <div class="btns">
        <div id="fileList" class="uploader-list">
    </div>
       <input id='btn' type="button" value="zzz" onclick="test('<%=basePath %>');"/>
       <!--  <button id="ctlBtn" class="btn btn-default">开始上传</button> -->
    </div>
</div>



</body>
</html>