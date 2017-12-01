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
		<title>用户注册 - 包满意 - 让技术大牛为你实现技术梦想 | 互联网软件众包平台</title>
				
	<meta charset="UTF-8">
    <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="keywords" content=""><meta name="description" content="">
    <link href="https://www.make8.com/css/bootstrap.min.css?v=201608241757" rel="stylesheet">
    <link href="https://www.make8.com/css/form.css?v=201608241757" rel="stylesheet">
    <link href="https://www.make8.com/css/header.css?v=201608241757" rel="stylesheet">
    <link href="https://www.make8.com/css/footer-simple.css?v=201608241757" rel="stylesheet">
    <link href="https://www.make8.com/font-awesome/css/font-awesome.css?v=201608241757" rel="stylesheet">
    <link href="https://www.make8.com/thirdparty/jqueryvalidate/css/cmxform.css?v=201608241757" rel="stylesheet">

    
		<link rel="stylesheet" type="text/css" href="https://www.make8.com/css/public/register.css?v=201608241757"/>
        </head>

	<body>
		<!--start of header-->
<nav id="nav" class="nav-simple">
	<div class="container">
		<h1>
			<a href="/">
				<img src="Images/logo.png">
			</a>
		</h1>
		<div class="menu" onclick="dropDownMenu()"><img src="https://static.make8.com/img/v2/menu.png"/></div>
		<ul class="nav-ul">
	        <li><a style="color: white;" href="Welcome">首页</a><div></div></li>
			<li class="newDiv"><a style="color: white;" href="/public/evaluate">项目估价</a><div></div></li>
			<li><a style="color: white;" href="request">发布需求</a><div></div></li>
			<li><a style="color: white;" href="projectlist">项目列表</a><div></div></li>
			<li><a style="color: white;" href="aboutus">关于我们</a><div></div></li>
			<li id="login_status">
				<input id="login" class="btn login" type="button" onclick="javascript:location.href='login'" value="登录">
				<input id="join" class="btn join" type="button" onclick="javascript:location.href='register'" value="注册">
			</li>
   </ul>
  </div>
</nav>			<!--end of header-->

			<div class="col-md-offset-1 col-xs-12 col-md-10 container join-form-marginbottom">
				<form id="phoneForm" method="post" autocomplete="off" role="form" action="javascript:doPhoneRegister()">
					<div class="col-md-offset-4 col-md-4 col-lg-4 join-bg join-overflow">
						<div class="join-title-margintop">
							<div class="col-xs-4 col-md-4 join-hr"></div>
							<div class="col-xs-4 col-md-4 join-title text-center">
								<p>注册新的账号</p>
							</div>
							<div class="col-xs-4 col-md-4 join-hr"></div>
						</div>

						<div class="col-lg-12 col-md-12 form-group-height join-phone-margintop">
							<div class="col-lg-offset-1 col-xs-offset-1 col-xs-10 col-lg-10 form-group form-padding-right input-bg join-overflow">
								<span class="col-xs-2 col-lg-2 span-left-bd"><p class="form-mobile-icon"></p></span>
								<div class="col-xs-10 col-lg-10">
									<input class="form-input input-color" name="phoneNumber" id="phoneNumber" placeholder="手机号" required="true" minlength="11" maxlength="11" isMobilePhoneNumber="true" phoneNumExisting="true" />
								</div>
							</div>
							<span class="col-lg-offset-1 col-xs-offset-1 col-lg-10 col-xs-10 msgspan" id="phoneMsg"></span>
						</div>

						<!--  <div class="col-lg-12 col-md-12 form-group-height" id="picCodeForm">
								<div class="col-lg-offset-1 col-xs-offset-1 col-xs-10 col-lg-10 form-group form-padding-right input-bg join-overflow">
									<span class="col-xs-2 col-md-2 span-left-bd"><p class="form-vcode-icon"></p></span>
									<div class="col-xs-5 col-md-5">
										<input class="form-input-small input-color" name="picCode" id="picCode" onkeyup="checkCode()" placeholder="图片验证码" required minlength="4" maxlength="4" />
									</div>
									<div class="col-xs-5 col-md-5 form-padding-right text-right">
										<img class="form-padding-right" id="vcode_img" src="/api/common/captcha" onclick="refreshVCode();">
									</div>
								</div>
								<span class="col-lg-offset-1 col-xs-offset-1 col-lg-10 col-xs-10 msgspan" id="picCodeMsg">验证码输入有误</span>
						</div>
						
						
						<div class="col-lg-12 col-md-12 form-group-height" id="phoneCodeForm">
							<div class="col-lg-offset-1 col-xs-offset-1 col-xs-10 col-lg-10 form-group form-padding-right input-bg join-overflow">
								<span class="col-xs-2 col-md-2 span-left-bd"><p class="form-vcode-icon"></p></span>
								<div class="col-xs-5 col-md-5">
									<input class="form-input-small input-color" name="phoneCode" id="phoneCode" placeholder="验证码" required minlength="4" maxlength="4"/>
								</div>
								<div class="col-xs-5 col-md-5 form-padding-right">
									<input type="button" id="sendVcodeBtn" class="col-xs-12 col-md-12 btn btn-primary form-padding-right form-btn form-btn-height join-btn" value="获取短信验证" onclick="javascript:sendSMS();" disabled="true" />
								</div>
							</div>
							<span class="col-lg-offset-1 col-xs-offset-1 col-lg-10 col-xs-10 msgspan" id="phoneCodeMsg"></span>
						</div>
						-->

						<div class="col-lg-12 col-md-12 form-group-height">
							<div class="col-lg-offset-1 col-xs-offset-1 col-xs-10 col-lg-10 form-group form-padding-right input-bg join-overflow">
								<span class="col-xs-2 col-md-2 span-left-bd"><p class="form-lock-icon"></p></span>
								<div class="col-xs-8 col-md-8">
									<input class="form-input input-color" name="phonePasswd" id="phonePasswd" placeholder="密码" minlength="6" required/>
								</div>
							</div>
							<span class="col-lg-offset-1 col-xs-offset-1 col-lg-10 col-xs-10 msgspan" id="phonePasswdMsg"></span>
						</div>

						<!--  <div class="col-lg-12 col-md-12 col-xs-12 desc-container">
							<div class="text-center">
								<p class="desc"><span class="glyphicon glyphicon-asterisk"></span>点击注册即表示您已同意<a class="make8-agreement" href="https://www.make8.com/about/contract" target=_blank>《码客帮服务协议》</a></p>
							</div>							
						</div>
						-->

						<div class="col-lg-offset-1 col-xs-offset-1 col-lg-10 col-xs-10 btn-submit-container">
							<div class="btn-height">
								<button type="submit" id="btnSubmit" class="btn btn-primary btn-submit btn-submit-style">注册</button>
								<span class="col-lg-offset-1 col-lg-10 col-xs-10 msgspan" id="phoneRegisterMessage"></span>
							</div>
							<div class="text-center">已有账号?<a href="login">马上登录</a></div>
					  </div>
				</div>
			</form>
		</div>

		<!--start of footer-->

<!--start of growing io-->
<script type='text/javascript'>  var _vds = _vds || []; window._vds = _vds;(function(){_vds.push(['setAccountId','c6db8a4a040e48d0a6c1e0d2bfce474a']);(function() {var vds = document.createElement('script');vds.type='text/javascript';vds.async = true;vds.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'dn-growing.qbox.me/vds.js';var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(vds, s);})();})();</script>
<!--end of growing io-->
		<!--end of footer-->

		<!--CNZZ CODE-->
		<div style="display:none;"><script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1257531169'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/z_stat.php%3Fid%3D1257531169' type='text/javascript'%3E%3C/script%3E"));</script></div>
		<!--END OF CNZZ CODE-->
	</body>

</html>