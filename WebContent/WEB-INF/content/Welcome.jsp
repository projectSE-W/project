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
		<meta charset="utf-8">
		 <title>包满意- 让技术大牛完成你的技术梦想 | 互联网软件众包平台</title>
		<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no" />
		<meta name="keywords" content="包满意, 软件外包, 软件众包, 代码众包, 开发者众包, 程序员兼职, 项目外包,互联网软件外包,网站外包,安卓APP外包,Andriod APP,iOS APP外包,微信开发外包">
        <meta name="description" content="包满意是一个基于众包的互联网软件技术服务平台，建立项目需求方与技术大牛的连接。帮助需求方快速找到靠谱的软件工程师，同时也为程序员提供积累项目经验和收获财富的渠道。">
		<link rel="stylesheet" type="text/css" href="https://www.make8.com/css/bootstrap.min.css?v=201608241757"/>
		<link rel="stylesheet" type="text/css" href="https://www.make8.com/css/style.css?v=201608241757"/>
		<link rel="stylesheet" type="text/css" href="https://www.make8.com/css/helpdocker.css?v=201608241757"/>
		<link rel="stylesheet" type="text/css" href="https://www.make8.com/font-awesome/css/font-awesome.min.css?v=201608241757"/>
	    <link href="https://www.make8.com/thirdparty/bootstrapdialog/css/bootstrap-dialog.min.css?v=201608241757"  rel="stylesheet" type="text/css">
			<link rel="stylesheet" type="text/css" href="https://www.make8.com/css/footer.css?v=201608241757"/>
		<script src="https://www.make8.com/js/jquery-2.2.0.min.js?v=201608241757"></script>
		<script src="https://www.make8.com/thirdparty/countUp/countUp.min.js?v=201608241757"></script>
		<script src="https://www.make8.com/js/bootstrap.min.js?v=201608241757"></script>
		<script type="text/javascript" src="https://www.make8.com/js/index.js?v=201608241757"></script>
		<script type="text/javascript" src="https://www.make8.com/js/comm.js?v=201608241757"></script>
        <script type="text/javascript" src="https://www.make8.com/js/helpdocker.js?v=201608241757"></script>
        <script type="text/javascript" src="https://www.make8.com/js/footer.js?v=201608241757"></script>
		<script type="text/javascript" src="https://www.make8.com/thirdparty/bootstrapdialog/js/bootstrap-dialog.min.js?v=201608241757"></script>
		<script type="text/javascript" src="https://www.make8.com/thirdparty/jqueryvalidate/js/jquery.validate.js?v=201608241757"></script>
		<script type="text/javascript" src="https://www.make8.com/thirdparty/jqueryvalidate/js/localization/messages_zh.js?v=201608241757"></script>
	</head>
	<body>
		<!--start of hidden parameters-->
		<input type="hidden" id="h_developerNum" value="18,462"/>
		<input type="hidden" id="h_companyNum" value="1,005"/>
		<input type="hidden" id="h_projectNum" value="618"/>
		<!-- end of hidden parameters-->

		<!--start of header-->
		<nav id="nav">
	    <div class="container">
		<h1>
			<a href="/">
				<img src="https://static.make8.com/img/v2/logo.png">
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
		<!--end of header-->

		<div class="col-md-12 headImg">
			<div class="container text-center">
				<div class="col-md-12 head-Font-bg">让技术大牛完成你的技术梦想</div>
				<div class="col-md-12 head-Font-sm">专属项目经理 / BAT级工程师 / 更低的成本 / 一流的开发质量</div>
				<div class="col-md-12">
					<input id="Send" type="button" class="btn Send" onclick="javascript:location.href='/home/request'" value="发布需求" />
				</div>

				<div class="col-md-12 appointment">
					<form id="form-reservation" method="post" action="javascript:doServiceReservation();">
						<div class="col-md-offset-1 col-md-10 appointmentBackground">
							<span>
								<input type="text" id="name" class="name" name="name" onkeyup="inputBackground(this)" onblur="inputBlur(this)" required/>
								<div id="nameWarning" class="appointmentWarning"></div>
							</span>
							<span>
								<input type="text" id="TelPhone" class="TelPhone" name="TelPhone" onkeyup="inputBackground(this)" onblur="inputBlur(this)" maxlength="11" minlength="11" required isMobilePhoneNumber="true"/>
								<div id="telPhoneWarning" class="appointmentWarning"></div>
							</span>
							<span>
								<textarea type="text" id="demand" class="demand" name="demand"  onkeyup="inputBackground(this)" onblur="inputBlur(this)" required/></textarea>
								<div id="demandWarning" class="appointmentWarning"></div>
							</span>
							<div style="float:left;width: 9%;" class="appointmentMarginTop">
								<input class="btn-appointment btn" type="submit" value="预约顾问" />
							</div>
						</div>
					</form>
				</div>

			</div>
		</div>
<div class="col-md-12 padding wantToDo">
				<div class="col-xs-12 col-sm-6 hidden-xs wantToDo_bg"></div>
				<div class="container">
					<div class="col-sm-6 col-md-6 text-center wanToDo-Div">
						<p>您有一个需求？</p>
						<img style="display: block;margin: 0 auto;" src="https://static.make8.com/img/v2/demand.png" />
						<button class="btn btn-primary wanToDo-btn wantToDo_btn_left" onclick="javascript:window.location.href='/home/request'">发布需求</button>
					</div>
					<div class="col-sm-6 col-md-6 text-center wanToDo-Div">
						<p>您是技术大牛？</p>
						<img style="display: block;margin: 0 auto;" src="https://static.make8.com/img/v2/technology.png" />
						<button class="btn btn-success wanToDo-btn wantToDo_btn_right" onclick="javascript:window.location.href='/home/userinfo'">认证码客</button>
					</div>
				</div>
			</div>
		<div class="col-md-12 col-sm-12 col-xs-12 padding news">
			<div class="col-md-4 col-sm-4 col-xs-4 newsContentLeft text-right">
				<div class="newsContentLeftDiv">
					<div class="text-left newsTitle">NEWS</div>
					<div class="text-left newsHr"></div>
					<div class="text-left">最新资讯</div>
				</div>
			</div>
			<div class="col-lg-5 col-md-7 col-sm-5 col-xs-6 padding-left newsContentRight">
				<!--<marquee scrollamount="" scrolldelay=""  >-->
				<div class="marquee">
				</div>
			</div>
			<div class="col-lg-2 col-md-1 col-sm-1 col-xs-4 more hidden-xs">
				<div class="col-md-12 col-sm-12 col-xs-12 moreBtnDiv">
					<button class="moreBtn" onclick="window.open('http://news.make8.com')">MORE</button>
				</div>
			</div>
			<div class="col-lg-2 col-md-1 col-sm-1 col-xs-2 more hidden-md hidden-lg hidden-sm" onclick="window.open('http://news.make8.com')">
				<img src="https://static.make8.com/img/more.png" />
			</div>
		</div>

		<div class="col-xs-12 padding" style="background: #f5fbff">
			<div class="container text-center serviceContent">
				<h2>服务内容</h2>
				<div></div>
				<div class="col-md-12 text-left padding">

					<div class="col-xs-12 col-md-4 text-center padding-left serviceContent_padding">
						<div class="serviceContent_div">
							<div><img src="https://static.make8.com/img/v2/serviceContent_01.png" /></div>
							<div class="serviceContent_title">解决方案</div>
							<div class="serviceContent_Content">与电商、O2O、直播、互金等行业合作伙伴为您提供从产品、技术、运营的综合解决方案</div>
							 <div onclick="window.location.href='/public/solution'" class="serviceContent_loadMore">详情</div> 
						</div>
					</div>

					<div class="col-xs-12 col-md-4 text-center serviceContent_padding">
						<div class="serviceContent_div">
							<div><img src="https://static.make8.com/img/v2/serviceContent_02.png" /></div>
							<div class="serviceContent_title">软件众包</div>
							<div class="serviceContent_Content">拥有前华为、Oracle的工程师团队和平台数万名工程师资源，为您提供专业的软件众包服务</div>
							 <div onclick="window.location.href='/public/crowdsourcing'" class="serviceContent_loadMore">详情</div> 
						</div>
					</div>

					<div class="col-xs-12 col-md-4 text-center padding-right serviceContent_padding">
						<div class="serviceContent_div">
							<div><img src="https://static.make8.com/img/v2/serviceContent_03.png" /></div>
							<div class="serviceContent_title">代维服务</div>
							<div class="serviceContent_Content">基于旗下运维派社区资源，为您提供系统上线后的日常代维、数据迁移、扩容等运维服务</div>
							 <div onclick="window.location.href='/public/maintainance'" class="serviceContent_loadMore">详情</div> 
						</div>
					</div>

				</div>
			</div>
		</div>

		<div class="container text-center professionalServices">
			<h2>服务优势</h2>
			<div></div>
			<div class="col-xs-12 padding">
				<div class="col-xs-12 padding border ps-list">
					<div class="col-xs-6 padding text-left">
						<div class="title">更专业的服务</div>
						<div class="content">配备专属项目经理，结合线上项目管理和代码托管系统，为您提供定制化服务</div>
					</div>
					<div class="col-xs-6 padding-right ps-img text-right"><img src="https://static.make8.com/img/v2/professionalServices_01.png" alt="" /></div>
				</div>
				<div class="col-xs-12 padding border ps-list">
					<div class="col-xs-6 padding-left ps-img text-left"><img src="https://static.make8.com/img/v2/professionalServices_02.png" alt="" /></div>
					<div class="col-xs-6 padding text-left">
						<div class="title">更高的性价比</div>
						<div class="content">平台直接对客户需求负责，确保交付质量，开发采用众包模式，降低交付成本</div>
					</div>
				</div>
				<div class="col-xs-12 padding border ps-list">
					<div class="col-xs-6 padding text-left">
						<div class="title">服务100+客户</div>
						<div class="content">成功服务100+企业客户的经验积累，包括电商、微信营销、APP、企业官网等</div>
					</div>
					<div class="col-xs-6 padding-right ps-img text-right"><img src="https://static.make8.com/img/v2/professionalServices_03.png" alt="" /></div>
				</div>
			</div>
		</div>

		<div class="col-md-12 text-center successProject">
			<div class="container">
				<h2>客户案例</h2>
				<div></div>
				<div class="col-xs-12" style="padding-left: 0px;padding-right: 0px;">
					<ul>
								<li class="col-sm-12 col-sm-4 padding successProject_div">
									<div onmouseover="successProjectMouseover(this)" onmouseout="successProjectMouseout(this)" class="col-xs-12 col-md-12 text-center padding successProject-item" onclick="window.open('/public/case/detail/3')">
										<div class="successProject-item-div" style="background:white url(https://static.make8.com//img/cases/bsy.png)"></div>
										<div class="item">
											<div class="text-left item-name">丙升元</div>
											<div class="text-left">周期：<span style="color: #a5a5a5">20天</span> | 参与角色：<span style="color: #a5a5a5">UI设计、全栈开发</span></div>
										</div>
									</div>
								</li>
								<li class="col-sm-12 col-sm-4 padding successProject_div">
									<div onmouseover="successProjectMouseover(this)" onmouseout="successProjectMouseout(this)" class="col-xs-12 col-md-12 text-center padding successProject-item" onclick="window.open('/public/case/detail/2')">
										<div class="successProject-item-div" style="background:white url(https://static.make8.com//img/cases/ykl.png)"></div>
										<div class="item">
											<div class="text-left item-name">云刊例</div>
											<div class="text-left">周期：<span style="color: #a5a5a5">50天</span> | 参与角色：<span style="color: #a5a5a5">UI设计、全栈开发</span></div>
										</div>
									</div>
								</li>
								<li class="col-sm-12 col-sm-4 padding successProject_div">
									<div onmouseover="successProjectMouseover(this)" onmouseout="successProjectMouseout(this)" class="col-xs-12 col-md-12 text-center padding successProject-item" onclick="window.open('/public/case/detail/1')">
										<div class="successProject-item-div" style="background:white url(https://static.make8.com//img/cases/rocsolid.png)"></div>
										<div class="item">
											<div class="text-left item-name">ROCSOLID</div>
											<div class="text-left">周期：<span style="color: #a5a5a5">30天</span> | 参与角色：<span style="color: #a5a5a5">UI设计、前端开发、后端开发</span></div>
										</div>
									</div>
								</li>
					</ul>
				</div>
				<div class="col-xs-12" onclick="window.open('/public/customercases')">
					<div class="loadMore">查看更多</div>
				</div>
			</div>
		</div>

		
		<div class="col-md-12 data">
			<div class="container text-center">
				<div class="col-xs-12 col-sm-4 col-md-4 data-div">
					<div class="col-xs-6 col-sm-12 col-md-12 data-number" id="developerNum"></div>
					<div class="col-xs-6 col-sm-12 col-md-12 data-unit">注册用户</div>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4 data-div">
					<div class="col-xs-6 col-sm-12 col-md-12 data-number" id="companyNum"></div>
					<div class="col-xs-6 col-sm-12 col-md-12 data-unit">认证码客</div>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4 data-div">
					<div class="col-xs-6 col-sm-12 col-md-12 data-number" id="projectNum"></div>
					<div class="col-xs-6 col-sm-12 col-md-12 data-unit">交易项目</div>
				</div>
			</div>
		</div>

			
			<!--start of footer-->
﻿<footer class="footer">
	<div class="col-xs-12 col-md-12 tail">
		<div class="container">
			<div class="col-xs-12 padding" style="padding-bottom: 72px !important">
			
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

				<div>
					<input type="hidden" id="topurl" value="https://www.make8.com/" />
					<input type="hidden" id="reload" value="1" />
					<input type="hidden" id="version" value="201608241757" />
				</div>

				<!--CNZZ CODE-->
				<div style="display:none;"><script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1257531169'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/z_stat.php%3Fid%3D1257531169' type='text/javascript'%3E%3C/script%3E"));</script></div>
				<!--END OF CNZZ CODE-->
	</body>
	<body>


</html>
