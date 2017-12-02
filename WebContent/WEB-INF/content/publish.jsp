<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<!DOCTYPE html>
<html>
<head>
<title>发布需求 - 包满意 - 让靠谱的工程师为你开发 | 互联网软件众包平台</title>

<meta charset="UTF-8">
<meta name="viewport"
	content="user-scalable=no, width=device-width, initial-scale=1, maximum-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<link href="https://www.make8.com/css/bootstrap.min.css?v=201608241757"
	rel="stylesheet">
<link href="https://www.make8.com/css/header.css?v=201608241757"
	rel="stylesheet">
<link href="https://www.make8.com/css/footer.css?v=201608241757"
	rel="stylesheet">
<link href="https://www.make8.com/css/comm.css?v=201608241757"
	rel="stylesheet">
<link href="https://www.make8.com/css/helpdocker.css?v=201608241757"
	rel="stylesheet">
<link
	href="https://www.make8.com/font-awesome/css/font-awesome.css?v=201608241757"
	rel="stylesheet">
<link
	href="https://www.make8.com/thirdparty/jqueryvalidate/css/cmxform.css?v=201608241757"
	rel="stylesheet">
<link
	href="https://www.make8.com/thirdparty/jqueryconfirm/css/jquery-confirm.min.css?v=201608241757"
	rel="stylesheet">
<link
	href="https://www.make8.com/thirdparty/bootstrapdialog/css/bootstrap-dialog.min.css?v=201608241757"
	rel="stylesheet" type="text/css">
<link
	href="https://www.make8.com/thirdparty/jquerypagination/css/jquery.pagination.css?v=201608241757"
	rel="stylesheet" type="text/css">


<script type="text/javascript"
	src="https://www.make8.com/js/jquery.min.js?v=201608241757"></script>
<script type="text/javascript"
	src="https://www.make8.com/js/angular.min.js?v=201608241757"></script>
<script type="text/javascript"
	src="https://www.make8.com/js/angular-route.min.js?v=201608241757"></script>
<script type="text/javascript"
	src="https://www.make8.com/js/angular-resource.min.js?v=201608241757"></script>
<script type="text/javascript"
	src="https://www.make8.com/js/angular-comm.js?v=201608241757"></script>
<script type="text/javascript"
	src="https://www.make8.com/js/map.js?v=201608241757"></script>
<script type="text/javascript"
	src="https://www.make8.com/js/jquery.placeholder.js?v=201608241757"></script>
<script type="text/javascript"
	src="https://www.make8.com/js/bootstrap.min.js?v=201608241757"></script>
<script type="text/javascript"
	src="https://www.make8.com/js/comm.js?v=201608241757"></script>
<script type="text/javascript"
	src="https://www.make8.com/js/footer.js?v=201608241757"></script>
<script type="text/javascript"
	src="https://www.make8.com/js/helpdocker.js?v=201608241757"></script>
<script type="text/javascript"
	src="https://www.make8.com/thirdparty/jqueryvalidate/js/jquery.validate.js?v=201608241757"></script>
<script type="text/javascript"
	src="https://www.make8.com/thirdparty/jqueryvalidate/js/localization/messages_zh.js?v=201608241757"></script>
<script type="text/javascript"
	src="https://www.make8.com/thirdparty/jqueryconfirm/js/jquery-confirm.min.js?v=201608241757"></script>
<script type="text/javascript"
	src="https://www.make8.com/thirdparty/bootstrapdialog/js/bootstrap-dialog.min.js?v=201608241757"></script>
<script type="text/javascript"
	src="https://www.make8.com/js/jquery-ui.js?v=201608241757"></script>
<script type="text/javascript"
	src="https://www.make8.com/thirdparty/jquerypagination/js/jquery.pagination-1.2.7.min.js?v=201608241757"></script>


<link
	href="https://www.make8.com/thirdparty/countdown/css/jquery.countdown.css?v=201608241757"
	rel="stylesheet">
<link
	href="https://www.make8.com/thirdparty/fileinput/css/fileinput.min.css?v=201608241757"
	rel="stylesheet" type="text/css">
<link
	href="https://www.make8.com/thirdparty/datetimepicker/css/bootstrap-datetimepicker.css?v=201608241757"
	rel="stylesheet">

<script type="text/javascript"
	src="https://www.make8.com/js/projectprogress.js?v=201608241757"></script>
<script type="text/javascript"
	src="https://www.make8.com/thirdparty/countdown/js/jquery.countdown.js?v=201608241757"></script>
<script type="text/javascript"
	src="https://www.make8.com/thirdparty/jqueryraty/jquery.raty.min.js?v=201608241757"></script>
<script type="text/javascript"
	src="https://www.make8.com/thirdparty/fileinput/js/fileinput.js?v=201608241757"></script>
<script type="text/javascript"
	src="https://www.make8.com/thirdparty/fileinput/js/fileinput_locale_zh.js?v=201608241757"></script>

<script type="text/javascript"
	src="https://www.make8.com/thirdparty/datetimepicker/js/bootstrap-datetimepicker.js?v=201608241757"></script>
<script type="text/javascript"
	src="https://www.make8.com/thirdparty/datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js?v=201608241757"></script>


<link rel="stylesheet"
	href="https://www.make8.com/css/home/request.css?v=201608241757">
<link rel="stylesheet"
	href="https://www.make8.com/css/style.css?v=201608241757">
<script type="text/javascript"
	src="https://www.make8.com/js/home/request.js?v=201608241757"></script>
</head>

<body>
	<!--start of header-->
	<nav id="nav">
		<div class="container">
			<h1>
				<a href="/"> <img src="Images/logo.png">
				</a>
			</h1>
			<div class="menu" onclick="dropDownMenu()">
				<img src="https://static.make8.com/img/v2/menu.png" />
			</div>
			<ul class="nav-ul">
				<li><a href="Welcome">首页</a>
				<div></div></li>
				<li class="newDiv"><a href="publish">发布需求</a>
				<div></div></li>
				<li><a href="projectlist">项目列表</a>
				<div></div></li>
				<li><a href="aboutus">关于我们</a>
				<div></div></li>
				<li id="login_status"><input id="login" class="btn login"
					type="button" onclick="javascript:location.href='login'" value="登录">
					<input id="join" class="btn join" type="button"
					onclick="javascript:location.href='register'" value="注册"></li>
			</ul>
		</div>
	</nav>
	<!--end of header-->

	<!--hidden parameter-->
	<input type="hidden" id="isLoginUser" value="0"></input>
	<!--end of parameter-->

	<div class="request-banner text-center">
		<p>Step 1 of 3</p>
		<div class="request-bannerBackground">
			<div></div>
		</div>
	</div>
	<div class="container">
		<div class="breadcrumb-container-4-request">
			<ol class="breadcrumb">
			</ol>
		</div>
	</div>

	<div class="container">
		<div class="col-md-offset-1 col-md-10 form">
			<!--  发布需求第一步 -->
			<div id="requestStep1Div">
				<form class="form-horizontal" id="publishRequestFormStep1"
					role="form">
					<fieldset>
						<div class="wbm-state">
							<h1 class="wbm-state-tit text-center">签署服务协议</h1>
							<p class="text-center wbm-stata-main">
								<br />您的项目信息不会透露给任何第三方， <br />为确保服务质量，需要签署服务协议， <br />服务协议详细条款，<a
									href="https://www.make8.com/about/contract" target="_blank">点击这里</a>
							</p>

							<div class="col-xs-offset-3 ol-xs-9 col-md-offset-5 col-md-4">
								<div class="agree" id="agree" onclick="iAgree(this)"></div>
								<input type="checkbox" id="wbmEp" class="wbm-ep"
									onclick="checkNext()">
								<p class="wbm-eo text-center">我同意</p>
							</div>
							<div class="col-md-12 col-xs-12 col-sm-12 text-center">
								<input id="next" type="button" class="btn btn-lg btn-primary"
									style="margin-left: 0px;" onclick="javascript:nextTosecond();"
									value="下一步"></input>
							</div>
						</div>
					</fieldset>
				</form>
			</div>

			<!-- 发布需求第二步 -->
			<div class="col-md-offset-1" id="requestStep2Div"
				style="display: none">
				<form action=setProjectAction class="form-horizontal"
					id="publishRequestFormStep2" role="form" method="get">
					<fieldset>
						<h1 class="text-center wbm-tell-name">告诉我们您的项目</h1>
						<div class="form-group form-group-a col-md-12">
							<label for="projectName"><i class="form-required">*</i>公司名称</label>
							<div class="col-md-12">
								<input type="text" class="form-control form-control-a"
									id="projectName" name="p.cname"
									placeholder="例如：电商类APP、网站前端开发、一个技术难点等" required>
							</div>
						</div>
						<div class="form-group form-group-a col-md-12">
							<label for="projectName"><i class="form-required">*</i>项目名称</label>
							<div class="col-md-12">
								<input type="text" class="form-control form-control-a"
									id="projectName" name="p.pname"
									placeholder="例如：电商类APP、网站前端开发、一个技术难点等" required>
							</div>
						</div>
						<div class="form-group form-group-a col-md-12">
							<label for="projectName"><i class="form-required">*</i>项目内容</label>
							<div class="col-md-12">
								<input type="text" class="form-control form-control-a"
									id="projectName" name="p.content"
									placeholder="例如：电商类APP、网站前端开发、一个技术难点等" required>
							</div>
						</div>
						<div class="form-group form-group-a col-md-12">
							<label for="projectName"><i class="form-required">*</i>开始时间</label>
							<div class="col-md-12">
								<input type="text" class="form-control form-control-a"
									id="projectName" name="p.date"
									placeholder="例如：电商类APP、网站前端开发、一个技术难点等" required>
							</div>
						</div>
						<div class="form-group form-group-a col-md-12">
							<label for="projectName"><i class="form-required">*</i>结束时间</label>
							<div class="col-md-12">
								<input type="text" class="form-control form-control-a"
									id="projectName" name="p.dend"
									placeholder="例如：电商类APP、网站前端开发、一个技术难点等" required>
							</div>

							<div class="form-group">
								<div class="col-sm-offset-5 col-sm-3">
									<button type="submit" class="btn-dark">提交</button>
								</div>
							</div>

							<!--  
							<div class="form-group form-group-a col-md-12">
								<label for="projectBudget"><i class="form-required">*</i>项目预算</label>
								<div class="col-md-12">
									<select class="form-control form-control-a" name="projectBudget" id="projectBudget" required>
										<option value="">项目预算</option>
												<option value="100-1000元">100-1000元</option>
												<option value="1000-5000元">1000-5000元</option>
												<option value="5000-10000元">5000-10000元</option>
												<option value="1万-3万">1万-3万</option>
												<option value="3万-5万">3万-5万</option>
												<option value="5万-10万">5万-10万</option>
												<option value="10万以上">10万以上</option>
												<option value="待商议">待商议</option>
									</select>
								</div>
							</div>
							
							<div class="form-group form-group-a col-md-12">
								<label for="projectName"><i class="form-required">*</i>项目周期</label>
								<div class="col-md-12">
									<input type="text" 	digits=true class="form-control form-control-a" id="period" name="period" maxlength="3" placeholder="您期望的项目交付天数" required>
							   </div>
							</div>

							<div class="form-group col-md-12">
								<label for="projectType"><i class="form-required">*</i>项目类型</label>
								<div class="col-md-12">
									<div style="overflow: hidden;margin-top:5px ;">
												<label for="pType1" class="col-xs-6 col-md-4 checkbox-padding" onclick="checkboxActive(this)">
													<div class="checkbox-img"><img src="https://www.make8.com/img/checkboxchecked.png"></div>
													<p>Andriod</p>
												</label>

												<input type="checkbox" class="checkbox-display" name="Type" id="pType1" value="1" required="true" />
												<label for="pType2" class="col-xs-6 col-md-4 checkbox-padding" onclick="checkboxActive(this)">
													<div class="checkbox-img"><img src="https://www.make8.com/img/checkboxchecked.png"></div>
													<p>iOS</p>
												</label>

												<input type="checkbox" class="checkbox-display" name="Type" id="pType2" value="2" required="true" />
												<label for="pType3" class="col-xs-6 col-md-4 checkbox-padding" onclick="checkboxActive(this)">
													<div class="checkbox-img"><img src="https://www.make8.com/img/checkboxchecked.png"></div>
													<p>HTML5</p>
												</label>

												<input type="checkbox" class="checkbox-display" name="Type" id="pType3" value="3" required="true" />
												<label for="pType4" class="col-xs-6 col-md-4 checkbox-padding" onclick="checkboxActive(this)">
													<div class="checkbox-img"><img src="https://www.make8.com/img/checkboxchecked.png"></div>
													<p>网站</p>
												</label>

												<input type="checkbox" class="checkbox-display" name="Type" id="pType4" value="4" required="true" />
												<label for="pType5" class="col-xs-6 col-md-4 checkbox-padding" onclick="checkboxActive(this)">
													<div class="checkbox-img"><img src="https://www.make8.com/img/checkboxchecked.png"></div>
													<p>微信</p>
												</label>

												<input type="checkbox" class="checkbox-display" name="Type" id="pType5" value="5" required="true" />
												<label for="pType7" class="col-xs-6 col-md-4 checkbox-padding" onclick="checkboxActive(this)">
													<div class="checkbox-img"><img src="https://www.make8.com/img/checkboxchecked.png"></div>
													<p>UI设计</p>
												</label>

												<input type="checkbox" class="checkbox-display" name="Type" id="pType7" value="7" required="true" />
												<label for="pType8" class="col-xs-6 col-md-4 checkbox-padding" onclick="checkboxActive(this)">
													<div class="checkbox-img"><img src="https://www.make8.com/img/checkboxchecked.png"></div>
													<p>其他</p>
												</label>

												<input type="checkbox" class="checkbox-display" name="Type" id="pType8" value="8" required="true" />
									</div>
									<div id="projectTypeWarning" class="col-md-12 checkbox-padding checkbox-warning"></div>
								</div>
							</div>

							<div class="form-group col-md-12">
							 <div class="col-md-3">
								<label for="pDomainChb">需要协助购买域名吗？</label>
							 </div>
								<div class="col-md-2">
									<div>
										<label for="pDomainChb" class="col-md-12 col-xs-12 checkbox-padding" onclick="checkboxActive(this)">
											<div class="checkbox-img"><img src="https://www.make8.com/img/checkboxchecked.png"></div>
											<p>需要</p>
										</label>
										<input type="checkbox" class="checkbox-display" name="pDomainChb" id="pDomainChb" value="1" />
									</div>
                </div>
							</div>

							<div class="form-group col-md-12">
								<div class="col-md-4">
									<label for="projectType">需要协助购买云主机和数据库吗？</label>
								</div>
								<div class="col-md-2">
									<div>
										<label for="pCloudServer" class="col-md-12 col-xs-12 checkbox-padding" onclick="checkboxActive(this)">
											<div class="checkbox-img"><img src="https://www.make8.com/img/checkboxchecked.png"></div>
											<p>需要</p>
										</label>
										<input type="checkbox" class="checkbox-display" name="pCloudServer" id="pCloudServer" value="1" />
									</div>
								</div>
							</div>

							<div class="form-group form-group-4-textarea col-md-12">
								<label for="projectDesc"><i class="form-required">*</i>填写您的需求（至少需要20个字符）</label>
								<div class="col-md-12">
									<textarea class="form-control form-textarea" rows="5" id="projectDesc" name="projectDesc" placeholder="例如: 1. 主要功能点；2. 可参考的项目；3. 其它说明" required="true" minlength="20" maxlength="1000"></textarea>
								</div>
							</div>

							<div class="col-md-11">
								<div class="col-xs-6 col-md-6">
									<input type="button" class="btn btn-lg btn-default" onclick="javascript:previousToFirst();" value="上一步"></button>
								</div>
									<div class="col-xs-6 col-md-6">
										<input type="button" class="btn btn-lg btn-primary pull-right" value="下一步" onclick="javascript:nextToThird()"></input>
									</div>

							</div>
							-->
					</fieldset>
				</form>
			</div>

			<!--发布需求第三步 -->
			<div class="col-md-offset-1" id="requestStep3Div"
				style="display: none;">
				<form class="form-horizontal" id="publishRequestFormStep3"
					action="javascript:doPublish();" role="form" method="post">
					<fieldset>
						<h1 class="text-center wbm-tell-name">创建您的项目</h1>
						<div class="form-group form-group-a col-md-12">
							<label for="loginName"><i class="form-required">*</i>手机号</label>
							<div class="col-md-12">
								<input type="text" class="form-control form-control-a"
									name="loginName" id="loginName" placeholder="输入您的手机号"
									required="true" isMobilePhoneNumber="true" minlength="11"
									maxlength="11" onkeyup="isJoin(this)">
							</div>
						</div>

						<!--<div class="form-group form-group-a col-md-12">
									<label for="password"><i class="form-required">*</i>验证码</label>
									<div class="col-md-12">
										<input type="text" class="form-control form-control-a" name="verificationCode" id="verificationCode" minlength="4" maxlength="4" placeholder="请输入验证码" required="true">
								    </div>
								</div>-->

						<div class="form-group form-group-a col-md-12">
							<label for="password"><i class="form-required">*</i>密码</label>
							<div class="col-md-12">
								<input type="password" class="form-control form-control-a"
									name="password" id="password" placeholder="输入您的密码"
									required="true">
							</div>
						</div>

						<div class="col-md-11">
							<div class="col-xs-6 col-md-6">
								<input type="button" class="btn btn-lg btn-default"
									onclick="javascript:previousToSec();" value="上一步"></input>
							</div>
							<div class="col-xs-6 col-md-6">
								<button type="submit" class="btn btn-lg btn-primary pull-right">发布</button>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>

	<script>
			window.addEventListener("scroll",navTop)
		</script>

	<!--start of footer-->
	﻿
	<script type="text/javascript">
(function(m, ei, q, i, a, j, s) {
	m[a] = m[a] || function() {
		(m[a].a = m[a].a || []).push(arguments)
	};
	j = ei.createElement(q),
		s = ei.getElementsByTagName(q)[0];
	j.async = true;
	j.charset = "UTF-8";
	j.src = i + "?v=" + new Date().getUTCDate();
	s.parentNode.insertBefore(j, s);
})(window, document, "script", "https://www.make8.com/thirdparty/meiqia/meiqia.js?v=201608241757", "_MEIQIA");
_MEIQIA("entId", 6145);
// 在这里开启无按钮模式
_MEIQIA("withoutBtn", true);
</script>
	<!--start of growing io-->
	<script type='text/javascript'>  var _vds = _vds || []; window._vds = _vds;(function(){_vds.push(['setAccountId','c6db8a4a040e48d0a6c1e0d2bfce474a']);(function() {var vds = document.createElement('script');vds.type='text/javascript';vds.async = true;vds.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'dn-growing.qbox.me/vds.js';var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(vds, s);})();})();</script>
	<!--end of growing io-->
	<!--end of footer-->
	<!---start of help docker-->
	<div id="top"></div>
	<!--end of help docker-->

	<div>
		<input type="hidden" id="topurl" value="https://www.make8.com/" /> <input
			type="hidden" id="reload" value="1" />
	</div>

	<!--CNZZ CODE-->
	<div style="display: none;">
		<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1257531169'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/z_stat.php%3Fid%3D1257531169' type='text/javascript'%3E%3C/script%3E"));</script>
	</div>
	<!--END OF CNZZ CODE-->
</body>

</html>