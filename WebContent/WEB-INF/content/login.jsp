<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<!DOCTYPE html>
<html lang="zh-CN">
<<<<<<< HEAD
<<<<<<< HEAD
	<head>
		<title>用户登录 - 码客帮 - 让靠谱的工程师为你开发 | 互联网软件众包平台</title>		
	<meta charset="UTF-8">
    <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="keywords" content=""><meta name="description" content="">
    <link href="https://www.make8.com/css/bootstrap.min.css?v=201608241757" rel="stylesheet">
    <link href="https://www.make8.com/css/form.css?v=201608241757" rel="stylesheet">
    <link href="https://www.make8.com/css/header.css?v=201608241757" rel="stylesheet">
    <link href="https://www.make8.com/css/footer-simple.css?v=201608241757" rel="stylesheet">
    <link href="https://www.make8.com/font-awesome/css/font-awesome.css?v=201608241757" rel="stylesheet">
    <link href="https://www.make8.com/thirdparty/jqueryvalidate/css/cmxform.css?v=201608241757" rel="stylesheet">

    <script type="text/javascript" src="https://www.make8.com/js/jquery.min.js?v=201608241757"></script>
	<script type="text/javascript" src="https://www.make8.com/js/jquery.placeholder.js?v=201608241757"></script>
    <script type="text/javascript" src="https://www.make8.com/js/bootstrap.min.js?v=201608241757"></script>
    <script type="text/javascript" src="https://www.make8.com/js/comm.js?v=201608241757"></script>
    
    <script type="text/javascript" src="https://www.make8.com/thirdparty/jqueryvalidate/js/jquery.validate.js?v=201608241757"></script>
    <script type="text/javascript" src="https://www.make8.com/thirdparty/jqueryvalidate/js/localization/messages_zh.js?v=201608241757"></script>

		<link rel="stylesheet" type="text/css" href="https://www.make8.com/css/public/register.css?v=201608241757" />
		<link rel="stylesheet" type="text/css" href="https://www.make8.com/css/public/login.css?v=201608241757" />
		<script type="text/javascript" src="https://www.make8.com/js/public/login.js?v=201608241757"></script>
	</head>
=======
>>>>>>> wlztest

=======

>>>>>>> wjttest
<head>
<title>用户登录 - 码客帮 - 让靠谱的工程师为你开发 | 互联网软件众包平台</title>
<meta charset="UTF-8">
<meta name="viewport"
	content="user-scalable=no, width=device-width, initial-scale=1, maximum-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<link href="https://www.make8.com/css/bootstrap.min.css?v=201608241757"
	rel="stylesheet">
<link href="https://www.make8.com/css/form.css?v=201608241757"
	rel="stylesheet">
<link href="https://www.make8.com/css/header.css?v=201608241757"
	rel="stylesheet">
<link href="https://www.make8.com/css/footer-simple.css?v=201608241757"
	rel="stylesheet">
<link
	href="https://www.make8.com/font-awesome/css/font-awesome.css?v=201608241757"
	rel="stylesheet">
<link
	href="https://www.make8.com/thirdparty/jqueryvalidate/css/cmxform.css?v=201608241757"
	rel="stylesheet">

<script type="text/javascript"
	src="https://www.make8.com/js/jquery.min.js?v=201608241757"></script>
<script type="text/javascript"
	src="https://www.make8.com/js/jquery.placeholder.js?v=201608241757"></script>
<script type="text/javascript"
	src="https://www.make8.com/js/bootstrap.min.js?v=201608241757"></script>
<script type="text/javascript"
	src="https://www.make8.com/js/comm.js?v=201608241757"></script>

<script type="text/javascript"
	src="https://www.make8.com/thirdparty/jqueryvalidate/js/jquery.validate.js?v=201608241757"></script>
<script type="text/javascript"
	src="https://www.make8.com/thirdparty/jqueryvalidate/js/localization/messages_zh.js?v=201608241757"></script>

<link rel="stylesheet" type="text/css"
	href="https://www.make8.com/css/public/register.css?v=201608241757" />
<link rel="stylesheet" type="text/css"
	href="https://www.make8.com/css/public/login.css?v=201608241757" />
<script type="text/javascript"
	src="https://www.make8.com/js/public/login.js?v=201608241757"></script>
</head>

<body>
<!--start of header-->
<<<<<<< HEAD
		<nav id="nav">
	    <div class="container">
		<h1>
			<a href="/">
				<img src="Images/logo.png">
			</a>
		</h1>
<<<<<<< HEAD
		<div class="menu" onclick="dropDownMenu()"><img src="https://static.make8.com/img/v2/menu.png"/></div>
		<ul class="nav-ul">
	        <li><a style="color: white;" href="Welcome">首页</a><div></div></li>
			<li class="newDiv"><a style="color: white;" href="/public/evaluate">项目估价</a><div></div></li>
			<li><a style="color: white;" href="register">发布需求</a><div></div></li>
			<li><a style="color: white;" href="projectlist">项目列表</a><div></div></li>
			<li><a style="color: white;" href="aboutus">关于我们</a><div></div></li>
			<li id="login_status">
				<input id="login" class="btn login" type="button" onclick="javascript:location.href='login'" value="登录">
				<input id="join" class="btn join" type="button" onclick="javascript:location.href='register'" value="注册">
			</li>
   </ul>
  </div>
</nav>		<!--end of header-->

		<div class="col-md-offset-1 col-xs-12 col-md-10 container join-form-marginbottom">
			<form id="loginForm" method="post" autocomplete="off" role="form" action="javascript:doLogin()">
				<div class="col-md-offset-4 col-md-4 col-lg-4 join-bg join-overflow">
					<div class="join-title-margintop">
						<div class="col-xs-4 col-md-4 join-hr"></div>
						<div class="col-xs-4 col-md-4 join-title text-center">
							<p>登录</p>
						</div>
						<div class="col-xs-4 col-md-4 join-hr"></div>
					</div>

					<div class="col-lg-12 col-md-12 form-group-height join-phone-margintop">
						<div class="col-lg-offset-1 col-xs-offset-1 col-xs-10 col-lg-10 form-group form-padding-right input-bg join-overflow">
							<span class="col-xs-2 col-lg-2 span-left-bd"><p class="form-mobile-icon"></p></span>
							<div class="col-xs-10 col-lg-10">
								<input id="loginName" name="loginName" class="form-input input-color" placeholder="电话" required="true" isloginnamevalid="true" autocomplete="off" aria-required="true">
							</div>
						</div>
						<span class="col-lg-offset-1 col-xs-offset-1 col-lg-10 col-xs-10 msgspan" id="loginNameMsg"></span>
=======
		<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li><a href="Welcome">首页</a><div></div></li>
					<li class="newDiv"><a href="publish">发布需求</a><div></div></li>
					<li><a href="projectall">项目列表</a><div></div></li>
					<li><a href="stoplist">优秀程序员</a><div></div></li>
					<li><a href="aboutus">关于我们</a><div></div></li>
					<li id="login_status">
						<input id="login" class="btn login" type="button" onclick="javascript:location.href='login'" value="登录">
						<input id="join" class="btn join" type="button" onclick="javascript:location.href='register'" value="注册">
					</li>
						</ul>
>>>>>>> wlztest
					</div>
		  </div>
		</nav>
		<!--end of header--></ul>
=======
	<nav id="nav">
		<div class="container">
			<h1>
				<a href="/"> <img src="Images/logo.png">
				</a>
			</h1>
			<ul class="nav-ul">
				<li><a href="Welcome">首页</a>
				<div></div></li>
				<li class="newDiv"><a href="publish">发布需求</a>
				<div></div></li>
				<li><a href="projectshow2c">项目列表</a>
				<div></div></li>
				<li><a href="aboutus">关于我们</a>
				<div></div></li>
				<li><a href="cregister">发布项目者注册</a>
				<div></div></li>
				<li><a href="sregister">投标者者注册</a>
				<div></div></li>
				<li id="login_status"><input id="login" class="btn login"
					type="button" onclick="javascript:location.href='login'" value="登录">
					<input id="join" class="btn join" type="button"
					onclick="javascript:location.href='register'" value="注册"></li>
			</ul>
>>>>>>> wjttest
		</div>
	</nav>
	<!--end of header-->
	
	<div class="col-md-12"><br></br><br></br><br></br><br></br><br></br><br></br>
	
<br>

<<<<<<< HEAD
<p style="font-size:30px;text-align:center"> <a href="clogin">我要发布项目|登录入口</a></p>
<p style="font-size:30px;text-align:center"> <a href="slogin">我是开发者|登录入口</a></p>
=======
<p style="font-size:30px;text-align:center"> <a href="loginc">C登录</a></p>
<p style="font-size:30px;text-align:center"> <a href="logins">S登录</a></p>
>>>>>>> wjttest

</div>
</body>
</html>