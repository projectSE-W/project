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
		<title>关于我们 - 码客帮 - 让靠谱的工程师为你开发 | 互联网软件众包平台</title>				
	<meta charset="UTF-8">
    <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="keywords" content=""><meta name="description" content="">
    <link href="https://www.make8.com/css/bootstrap.min.css?v=201608241757" rel="stylesheet">
    <link href="https://www.make8.com/css/header.css?v=201608241757" rel="stylesheet">
    <link href="https://www.make8.com/css/footer.css?v=201608241757" rel="stylesheet">
    <link href="https://www.make8.com/css/comm.css?v=201608241757" rel="stylesheet">
    <link href="https://www.make8.com/css/helpdocker.css?v=201608241757" rel="stylesheet">
    <link href="https://www.make8.com/font-awesome/css/font-awesome.css?v=201608241757" rel="stylesheet">
    <link href="https://www.make8.com/thirdparty/jqueryvalidate/css/cmxform.css?v=201608241757" rel="stylesheet">
    <link href="https://www.make8.com/thirdparty/jqueryconfirm/css/jquery-confirm.min.css?v=201608241757" rel="stylesheet">
    <link href="https://www.make8.com/thirdparty/bootstrapdialog/css/bootstrap-dialog.min.css?v=201608241757"  rel="stylesheet" type="text/css">
    <link href="https://www.make8.com/thirdparty/jquerypagination/css/jquery.pagination.css?v=201608241757"  rel="stylesheet" type="text/css">


    
				<link href="https://www.make8.com/css/about.css?v=201608241757" rel="stylesheet" type="text/css">
	</head>

	<body>
		<!--header-->
<div class="container">
<nav id="nav">
	<div class="container">
		<h1>
			<a href="/">
				<img src="Images/logo.png">
			</a>
		</h1>
		<div class="menu" onclick="dropDownMenu()"><img src="https://static.make8.com/img/v2/menu.png"/></div>
		<ul class="nav-ul">
	        <li><a href="Welcome">首页</a><div></div></li>
					<li class="newDiv"><a href="publish">发布需求</a><div></div></li>
					<li><a href="projectlist">项目列表</a><div></div></li>
					<li><a href="aboutus">关于我们</a><div></div></li>
					<li id="login_status">
						<input id="login" class="btn login" type="button" onclick="javascript:location.href='login'" value="登录">
						<input id="join" class="btn join" type="button" onclick="javascript:location.href='register'" value="注册">
					</li>
   </ul>
  </div>
</nav>
</div>
			<!--end of header-->

			<div class="col-xs-12 aboustUs-body" style="padding:0px;background:url(https://static.make8.com/img/about/aboutusBg.jpg) no-repeat;background-position: center;background-size:cover;">
				<div class="container about-Title text-center">
					<img src="https://static.make8.com/img/aboutTitle.png"/>
				</div>
				<div class="container">
					<div class="col-xs-12 about-content">
						<p>码客帮隶属于深圳市云达人科技有限公司，成立于2015年9月，公司位于深圳，创始团队主要来自华为、Oracle、金蝶、TCL、美团等知名企业，不仅拥有深厚的软件开发、运维和软件项目管理经验，更有丰富的产品设计、架构、和运营经验。团队融合了“传统IT”的严谨和“互联网+”的开放这两种文化，我们专注于以“众包+外包”的模式为客户提供高性价比的技术服务。</p>
						<p>码客帮是一个基于众包的互联网软件技术服务平台，您只需要在平台提交软件需求，码客帮项目顾问将会协助您完成需求梳理、技术选型和评估报价，并为您匹配适合该需求的工程师。为保障需求的高质量交付，码客帮提供了项目管理系统、代码托管系统和在线演示系统，使得整个开发过程是透明和可视的，从而降低开发过程的风险并提高交付质量。同时，码客帮自身拥有突出的项目管理和开发能力，我们可为大型项目提供增值服务，覆盖从需求分析、架构设计到项目人员管理、产品部署维护等端到端全程服务。</p>
						<p>截止目前，码客帮已为近百家互联网初创企业提供了包括网站、微信公众号、APP、HTML5等产品类型的技术服务，其中部分项目已完成下轮融资。码客帮将凭借自身的技术优势和技术社区资源，持续助力客户实现互联网+。</p>
					</div>
				</div>

				<div class="container">
					<div class="col-xs-12 about-blur">
						<div class="col-xs-12 text-center">
							<p>公司旗下的技术品牌</p>
							<div class="div-hr"></div>
						</div>
						<div class="col-xs-12">
							<div class="col-xs-12 col-sm-4 text-center about-blur-div" onclick="window.open('http://www.make8.com')"><img class="img_pc active" src="https://static.make8.com/img/about/make8.png"/><img class="img_m" src="https://static.make8.com/img/about/make8_m.png"/></div>
							<div class="col-xs-12 col-sm-4 text-center about-blur-div" onclick="window.open('http://www.yunweipai.com')"><img class="img_pc active" src="https://static.make8.com/img/about/yunweipai.png"/><img class="img_m" src="https://static.make8.com/img/about/yunweipai_m.png"/></div>
							<div class="col-xs-12 col-sm-4 text-center about-blur-div" onclick="window.open('http://www.chengxuyuan.com')"><img class="img_pc active" src="https://static.make8.com/img/about/chengxuyuan.png"/><img class="img_m" src="https://static.make8.com/img/about/chengxuyuan_m.png"/></div>
						</div>
					</div>
				</div>
			</div>

			<div>
				<input type="hidden" id="topurl" value="https://www.make8.com/" />
				<input type="hidden" id="reload" value="0" />
			</div>

			<!--start of footer-->
﻿<footer class="footer">
	<div class="col-xs-12 col-md-12 tail">
		<div class="container">
			<div class="col-xs-12 padding" style="padding-bottom: 72px !important">
				<div class="col-xs-12 col-sm-3 padding company_brand">
					<div>公司旗下品牌</div>
					<ul>
						<li class="col-xs-4 col-sm-12" onclick="window.location.href='#'" style="cursor: pointer;background: url(https://static.make8.com/img/v2/foot_company.png) no-repeat;padding-left:0px;padding-right:0px;"></li>
						<li class="col-xs-4 col-sm-12" onclick="window.location.href='http://www.yunweipai.com'" style="cursor: pointer;background: url(https://static.make8.com/img/v2/foot_company.png) 0px -30px no-repeat;padding-left:0px;padding-right:0px;"></li>
						<li class="col-xs-4 col-sm-12" onclick="window.location.href='http://www.chengxuyuan.com'" style="cursor: pointer;background: url(https://static.make8.com/img/v2/foot_company.png) 0px -60px no-repeat;padding-left:0px;padding-right:0px;"></li>
					</ul>
				</div>
				<div class="col-xs-12 col-sm-6 padding company_center">
					<div class="col-xs-4 padding company">
						<span style="background: url(https://static.make8.com/img/v2/foot_icon.png) no-repeat"></span>
						<span>公司</span>
						<ul>
							<li onclick="window.location.href='/about/aboutus'">关于我们</li>
							<li onclick="window.location.href='/about/contactus'">联系我们</li>
							<li onclick="window.location.href='/about/flink'">友情链接</li>
							<li onclick="window.location.href='http://news.make8.com'">码客新闻</li>
						</ul>
					</div>
					<div class="col-xs-4 padding service">
						<span style="background: url(https://static.make8.com/img/v2/foot_icon.png) -21px 0px no-repeat"></span>
						<span>服务</span>
						<ul>
							<li onclick="window.location.href='/home/request'">发布需求</li>
							<li onclick="window.location.href='/home/userinfo'">码客认证</li>
							<li onclick="window.location.href='/about/serviceflow'">服务流程</li>
							<li onclick="window.location.href='/public/pay'">如何支付</li>
						</ul>
					</div>
					<div class="col-xs-4 padding problem">
						<span style="background: url(https://static.make8.com/img/v2/foot_icon.png) -44px 0px no-repeat"></span>
						<span>常见问题</span>
						<ul>
							<li onclick="window.location.href='http://support.make8.com/category/help/01/kfz'">我是开发者</li>
							<li onclick="window.location.href='http://support.make8.com/category/help/01/sjs'">我是设计师</li>
							<li onclick="window.location.href='http://support.make8.com/category/help/01/xqf'">我是需求方</li>
						</ul>
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 padding foot_right">
					<div class="foot_phone">
						<div style="background: url(https://static.make8.com/img/v2/foot_right_icon.png) no-repeat"></div>
						<div>4000-818-530</div>
					</div>
					<div style="font-size: 25.4px;font-weight: 100;">service@make8.com</div>
					<div style="font-size: 15px;font-weight: 100;">深圳市南山区软件产业基地4栋B座203</div>
					<div class="foot_wei">
						<div onclick="window.open('http://weibo.com/5848150034/manage')" style="cursor: pointer;background: url(https://static.make8.com/img/v2/foot_right_icon.png) -31px 0px no-repeat"></div>
						<div onmouseover="showErWeiMa()" onmouseout="hideErWeiMa()" style="position: relative;cursor: pointer;background: url(https://static.make8.com/img/v2/foot_right_icon.png) -62px 0px no-repeat">
							<span id="make8_erweima">
								<img src="https://static.make8.com/img/make8_erweima.jpg"/>
							</span>
						</div>
					</div>
				</div>
			</div>
			<div class="text-center pronouncements">深圳市<a href="/infos/index" style="text-decoration：none;color:#969696;margin-right:0px;">云</a>达人科技有限公司 <a href="http://www.miibeian.gov.cn" style="color:#969696;" target="_blank">粤ICP备15083138号-2 &copy; 2016</a> </div>
		</div>
 </div>
</footer>
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

			<!--CNZZ CODE-->
			<!--<div style="display:none;"><script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1257531169'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/z_stat.php%3Fid%3D1257531169' type='text/javascript'%3E%3C/script%3E"));</script></div>-->
			<!--END OF CNZZ CODE-->
	</body>

</html>
