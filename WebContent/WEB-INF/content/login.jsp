<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<!DOCTYPE html>
<html lang="zh-CN">
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
	<!--start of hidden parameters-->
	<div>
		<input type="hidden" id="h_LoginName" /> <input type="hidden"
			id="h_failedMsg" /> <input type="hidden"
			id="h_loginFailedTimeExceeded" value="0"></input>
	</div>
	<!--end of hidden parameters-->

	<!--start of header-->
	<nav id="nav" class="nav-simple">
		<div class="container">
			<h1>
				<a href="/"> <img src="Images/logo.png">
				</a>
			</h1>
			<div class="menu" onclick="dropDownMenu()">
				<img src="https://static.make8.com/img/v2/menu.png" />
			</div>
			<ul class="nav-ul">
				<li><a style="color: white;" href="Welcome">首页</a>
				<div></div></li>
				<li class="newDiv"><a style="color: white;"
					href="/public/evaluate">项目估价</a>
				<div></div></li>
				<li><a style="color: white;" href="request">发布需求</a>
				<div></div></li>
				<li><a style="color: white;" href="projectlist">项目列表</a>
				<div></div></li>
				<li><a style="color: white;" href="aboutus">关于我们</a>
				<div></div></li>
				<li id="login_status"><input id="login" class="btn login"
					type="button" onclick="javascript:location.href='login'" value="登录">
					<input id="join" class="btn join" type="button"
					onclick="javascript:location.href='register'" value="注册"></li>
			</ul>
		</div>
	</nav>
	<!--end of header-->

	<div
		class="col-md-offset-1 col-xs-12 col-md-10 container join-form-marginbottom">
		<form id="loginForm" method="post" autocomplete="off" role="form"
			action="javascript:doLogin()">
			<div class="col-md-offset-4 col-md-4 col-lg-4 join-bg join-overflow">
				<div class="join-title-margintop">
					<div class="col-xs-4 col-md-4 join-hr"></div>
					<div class="col-xs-4 col-md-4 join-title text-center">
						<p>登录</p>
					</div>
					<div class="col-xs-4 col-md-4 join-hr"></div>
				</div>

				<div
					class="col-lg-12 col-md-12 form-group-height join-phone-margintop">
					<div
						class="col-lg-offset-1 col-xs-offset-1 col-xs-10 col-lg-10 form-group form-padding-right input-bg join-overflow">
						<span class="col-xs-2 col-lg-2 span-left-bd"><p
								class="form-mobile-icon"></p></span>
						<div class="col-xs-10 col-lg-10">
							<input id="loginName" name="loginName"
								class="form-input input-color" placeholder="电话" required="true"
								isloginnamevalid="true" autocomplete="off" aria-required="true">
						</div>
					</div>
					<span
						class="col-lg-offset-1 col-xs-offset-1 col-lg-10 col-xs-10 msgspan"
						id="loginNameMsg"></span>
				</div>

				<div class="col-lg-12 col-md-12 form-group-height">
					<div
						class="col-lg-offset-1 col-xs-offset-1 col-xs-10 col-lg-10 form-group form-padding-right input-bg join-overflow">
						<span class="col-xs-2 col-md-2 span-left-bd"><p
								class="form-lock-icon"></p></span>
						<div class="col-xs-10 col-md-10">
							<input type="password" class="form-input input-color"
								name="wpassword" id="wpassword" placeholder="密码" minlength="6"
								required autocomplete="off" />
						</div>
					</div>
					<span
						class="col-lg-offset-1 col-xs-offset-1 col-lg-10 col-xs-10 msgspan"
						id="passwdMsg"></span>
				</div>

				<div class="col-lg-12 col-md-12 form-group-height" id="vcode-div"
					style="display: none;">
					<div
						class="col-lg-offset-1 col-xs-offset-1 col-xs-10 col-lg-10 form-group form-padding-right input-bg">
						<span class="col-xs-2 col-md-2 span-left-bd"><p
								class="form-vcode-icon"></p></span>
						<div class="col-xs-5 col-md-5" style="padding-right: 0px;">
							<input class="form-input-small input-color" name="vcode"
								id="vcode" placeholder="验证码" required minlength="4"
								maxlength="4" autocomplete="off" />
						</div>
						<div class="col-xs-5 col-md-5 form-padding-right text-right"
							style="padding-left: 0px;">
							<img class="form-padding-right" id="vcode_img"
								src="/api/common/captcha" onclick="refreshVCode();">
						</div>
					</div>
					<span
						class="col-lg-offset-1 col-xs-offset-1 col-lg-10 col-xs-10 msgspan"
						id="vcodeMsg"></span>
				</div>

				<!--<div class="col-lg-4 col-md-4 col-xs-4">
							<div class="captcha">
								<img id="vcode_img" src="/api/common/captcha" onclick="refreshVCode();">
							</div>
						</div>-->

				<!-- <div class="gou">
						<div class="dagou">
							<input type="checkbox" id="wbmEp" class="wbm-ep" onclick="javascript:void(0)">
						</div>
						<p class="jizhu">记住我</p>
						<p class="wangji"><a href="/public/find_password">忘记密码</a></p>
					</div>
					 -->

				<div
					class="col-lg-offset-1 col-xs-offset-1 col-lg-10 col-xs-10 btn-submit-container">
					<div class="btn-height">
						<button type="submit" id="btnSubmit"
							class="btn btn-primary btn-submit btn-submit-style">登录</button>
						<span class="col-lg-offset-1 col-lg-10 col-xs-10 msgspan"
							id="loginMessage"></span>
					</div>
					<div class="text-center">
						没有账号?<a href="register">立即注册</a>
					</div>
				</div>
			</div>
		</form>
	</div>

	<!--start of footer-->

</body>
</html>