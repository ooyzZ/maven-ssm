<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>UploadiFive Test</title>
<script src="../js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="../js/jquery.uploadifive.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="../css/uploadifive.css">
</head>
<script type="text/javascript">
function moreBig(num){
	var heigh=num.attributes["height"].value;
	if(heigh==300){
		num.setAttribute("width","600");
		num.setAttribute("height","600")
	}
	else{
		num.setAttribute("width","300");
		num.setAttribute("height","300")
	}
	/*  $("img").attr({width:"600",height:"600"}); */
}

</script>
<body>
	<h1>UploadiFive Demo</h1>
	<form>
		<div style="width: 150px" id="queue"></div>
		<input id="file_upload" name="file_upload" type="file" multiple="true">
		<div id=article ><img height="300" width="300"  alt="aaaaa" src="..\img\zztest.png" onclick="moreBig(this);" ></div>
	</form>
     
	<script type="text/javascript">
		$(function() {
			var myid="阿发"
			$('#file_upload').uploadifive({
				'queueID' : 'queue',
				'buttonClass' : 'btn btn-primary',
				'buttonText' : "选择文件",
				'uploadScript' : 'Upload.do', //这里是通过MVC里的FileUpload控制器里的Upload 方法  
				'removeCompleted' : false,
				'removeTimeout':2,
				'fileObjName' : 'file',
				'formData':{'myid':myid},
				'onUploadComplete' : function(file, data) {
					setTimeout(function(){$('#queue').empty();},2000);

				}
			});
		
		});
	</script>
</body>
</html>