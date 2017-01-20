<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<%@ include file="/common/puplic_js_css.jsp"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Closest &mdash; 100% Free Fully Responsive HTML5 Template
	by FREEHTML5.co</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />




<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
<script type="text/javascript">
$().ready(function() {  
$('#registerForm').validate({
	rules : {
				nickname : {
					required : true
				},
				username : {
					required : true
				},
				password : {
					required : true
				},
				checkpassword : {
					required : true,
					equalTo: "#password"
				},
				email : {
					required : true,
					email : true
				},
				phone : {
					required : true
				},
				adreress : {
					required : true
				}
			},
			onfocusout : function(element) {
				$(element).valid();
			},
			messages:{
				
				checkpassword:{equalTo:"两次密码不一致"},
				nickname : {
					required : "用户名必填"
				}
			}
		});
	})
</script>
</head>
<body>
	<div class="box-wrap">
		<header role="banner" id="fh5co-header">
			<div class="container">
				<nav class="navbar navbar-default">
					<div class="row">
						<div class="col-md-3">
							<div class="fh5co-navbar-brand">
								<a class="fh5co-logo" href="index.jsp"><img
									src="images/brand-nav.png" alt="Closest Logo"> </a>
							</div>
						</div>
						<div class="col-md-6">
							<ul class="nav text-center">
								<!-- <li><a href="index.html"><span>Work</span></a></li>
								<li><a href="inside.html">About</a></li>
								<li><a href="services.html">Services</a></li>
								<li class="active"><a href="login.html">Contact</a></li> -->
							</ul>
						</div>
						<div class="col-md-3">
							<!-- <ul class="social">
							<li><a href="login.jsp"><i class="im-user3"></i>
								</a>
								</li>
								<li><a href="#"><i class="im-newspaper"></i>
								</a>
								</li>
								<li><a href="#"><i class="im-exit"></i>
								</a>
								</li>
							</ul> -->
						</div>
					</div>
				</nav>
			</div>
		</header>
		<!-- END: header -->
		<main id="main">
		<div class="container">
			<div class="col-md-8 col-md-offset-2 animate-box">
				<form id="registerForm" action="goRegister.do" method="post"
					class="validate">
					<div class="form-group row">
						<div class="col-md-12 field">
							<label for="nickname">用户名</label> <input type="text"
								name="nickname" id="nickname" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-md-12 field">
							<label for="username">账号</label> <input type="text"
								name="username" id="username" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-md-12 field">
							<label for="password">密码</label> <input type="password"
								name="password" id="password" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-md-12 field">
							<label for="checkpassword">确认密码</label> <input type="password"
								name="checkpassword" id="checkpassword" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-md-12 field">
							<label for="email">邮箱</label> <input type="email" name="email"
								id="email" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-md-12 field">
							<label for="phone">电话</label> <input type="text" name="phone"
								id="phone" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-md-12 field">
							<label for="adreress">地址</label> <input type="text"
								name="adreress" id="adreress" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-md-2 field" style="float: right;">
							<input type="submit" id="zsubmit" class="btn btn-primary"
								value="提交">
						</div>
					</div>
				</form>
			</div>
			<!-- <div class="col-md-4"></div> -->
		</div>
		</main>




		<section id="services">
			<div class="container">
				<div class="row">
					<div class="col-md-4 animate-box">
						<div class="service">
							<div class="service-icon">
								<i class="icon-command"></i>
							</div>
							<h2>Brand Identity</h2>
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia.</p>
						</div>
					</div>
					<div class="col-md-4 animate-box">
						<div class="service">
							<div class="service-icon">
								<i class="icon-drop2"></i>
							</div>
							<h2>Web Design &amp; UI</h2>
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia.</p>
						</div>
					</div>
					<div class="col-md-4 animate-box">
						<div class="service">
							<div class="service-icon">
								<i class="icon-anchor"></i>
							</div>
							<h2>Development &amp; CMS</h2>
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia.</p>
						</div>
					</div>
				</div>
			</div>
		</section>





		<footer id="footer" role="contentinfo">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						<div class="footer-widget border">
							<p class="pull-left">
								<small>&copy; Closest Free HTML5. All Rights Reserved.</small>
							</p>
							<p class="pull-right">
								<small> Designed by <a href="#/" ta>Freehtml5</a> More
									Templates <a href="#" target="_blank"
									title="ooy_zz">ooy_zz</a> - Collect from <a
									href="#" title="ooy_zz"
									target="_blank">ooy_zz</a>
								</small>
							</p>

						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>
	<!-- END: box-wrap -->


</body>
</html>

