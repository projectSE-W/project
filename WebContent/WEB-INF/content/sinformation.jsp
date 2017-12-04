<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<!DOCTYPE html>
<html lang="zh-CN" ng-app='projectsApp' ng-controller='projectsCtrl'>

<head>
<title>项目市场 - 码客帮 - 让靠谱的工程师为你开发 | 互联网软件众包平台</title>

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
	src="https://www.make8.com/js/header.js?v=201608241757"></script>
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

<link rel="stylesheet"
	href="https://www.make8.com/css/home/projects.css?v=201608241757" />
<script type="text/javascript"
	src="https://www.make8.com/js/projects.js?v=201608241757"></script>
</head>

<body>
	<div class="container">
		<nav id="nav">
			<div class="container">
				<h1>
					<a href="/"> <img
						src="https://static.make8.com/img/v2/logo_black.png">
					</a>
				</h1>
				<div class="menu" onclick="dropDownMenu()">
					<img src="https://static.make8.com/img/v2/menu.png" />
				</div>
				<ul class="nav-ul">
					<input type="hidden" id="isLogged" value="true" />


					<li><a href="/">首页</a>
					<div></div></li>
					<li class="newDiv"><a href="/public/evaluate">项目估价</a>
					<div></div></li>
					<li><a href="/home/request">发布需求</a>
					<div></div></li>
					<li><a href="/market">项目市场</a>
					<div></div></li>
					<li><a href="/home/userinfo">码客认证</a>
					<div></div></li>
					<!--<li><a href="/public/comp_list">服务商库</a><div></div></li>-->
					<li><a href="http://news.make8.com/">码客新闻</a>
					<div></div></li>
					<li><a href="/about/aboutus">关于我们</a>
					<div></div></li>
					<li>
						<ul class="use">
							<li onclick="navLogin(this)"><i title="">15504638550</i> <i
								class="fa fa-angle-up"></i></li>
							<li
								onclick="javascript:location.href='https://www.make8.com/home/userinfo'"
								onmouseover="loginMouseOver(this)"
								onmouseout="loginMouseOut(this)">个人中心</li>
							<li onclick="javascript:logout();"
								onmouseover="loginMouseOver(this)"
								onmouseout="loginMouseOut(this)">退出登录</li>
						</ul>
					</li>
				</ul>
			</div>
		</nav>
	</div>
	<div class="body-offset"></div>
	<!--banner-->
	<div
		style="background: #eff3f6 url(https://static.make8.com/img/item-market-banner-2.png) center; min-height: 240px;">
		<div class="container banner-container">
			<div class="hidden-xs hidden-sm col-xs-12 padding">
				<div class="col-md-4 text-left padding">
					<div
						style="margin-top: 30px; background: url(https://static.make8.com/img/item-market-banner-div.png) center; height: 121px; width: 222px;">
						<div class="text-center number-style">619</div>
						<div class="text-center">累计项目总数</div>
					</div>
				</div>
				<div class="col-md-4 text-center padding">
					<div
						style="margin: 30px auto 0px auto; background: url(https://static.make8.com/img/item-market-banner-div.png) center; height: 121px; width: 222px;">
						<div class="text-center number-style">13</div>
						<div class="text-center">招募中的项目</div>
					</div>
				</div>
				<div class="col-md-4 text-right padding">
					<div
						style="margin: 30px 0px 0px calc(100% - 222px); background: url(https://static.make8.com/img/item-market-banner-div.png) center; height: 121px; width: 222px;">
						<div class="text-center number-style">18,468</div>
						<div class="text-center">注册用户</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12 padding-all">
				<form id="form-reservation" method="POST"
					action="javascript:doServiceReservation();">
					<div class="col-cs-2 padding-all input-style">
						<input type="text" class="form-control" placeholder="姓名" id="name"
							name="name" required>
						<div id="nameWarning" class="appointmentWarning"></div>
					</div>
					<div class="col-cs-2 padding-all input-style">
						<input type="text" class="form-control" placeholder="联系方式"
							id="telPhone" name="telPhone" maxlength="11" minlength="11"
							required isMobilePhoneNumber="true">
						<div id="telPhoneWarning" class="appointmentWarning"></div>
					</div>
					<div class="col-cs-4 padding-all input-style">
						<input type="text" class="form-control" name="demand" id="demand"
							placeholder="您的需求，例如：一个打车ios app预算10万，深圳。" required>
						<div id="demandWarning" class="appointmentWarning"></div>
					</div>
					<div class="col-cs-3 padding-all input-style">
						<!--<div id="submitForm" type="submit" class="reservation-btn">快速发布</div>-->
						<input class="btn reservation-btn" type="submit" value="快速发布" />
					</div>
				</form>
			</div>
		</div>
	</div>

	<div class="col-xs-12 label-container"
		style="background: white; min-height: 70px;">
		<div class="container project-search-view">
			<div class="search-panel col-xs-12 col-md-8 padding">
				<button style="margin-left: 0px;"
					class="btn btn-link search-item {{isAllType?'btn-search-active search-item-blank':''}}"
					value="" ng-click='searchType()'>
					<span class="{{isAllType?'btn-search-span-active':''}}">全部</span>
				</button>
				<button
					class="btn btn-link search-item {{projectType.isActive?'btn-search-active search-item-blank':''}}"
					ng-click='searchType(projectType)' value="{{projectType.value}}"
					ng-model='projectType' ng-repeat='projectType in projectTypeList'
					ng-cloak>
					<span class="{{projectType.isActive?'btn-search-span-active':''}}"
						ng-bind='projectType.name'></span>
				</button>
			</div>
			<div class='breadcrumb-container col-xs-12 col-md-4 padding'>
				<div class="breadcrumb-container-div">
					<div style="margin-right: 12px" class="col-search-12">
						<input id='search' type="text" class="form-control"
							ng-keydown='keySearch($event)'>
					</div>
					<div class="input-group-btn">
						<button class="btn btn-info" type="button" ng-click='search()'>
							<div>
								<img src="https://static.make8.com/img/search_icon.png" />
							</div>
						</button>
					</div>
				</div>
			</div>

		</div>
	</div>

	<!--<div class="container" id="projectView">
				<div class="row search-result-num-panel">招募中的项目
					<p id="projectNum" class="result-num" ng-bind='totalRow'></p>个</div>
			</div>-->

	<div id="projectView" class="container container-padding">
		<div class="col-xs-12 col-sm-6 col-md-4"
			ng-repeat="project in dataList" ng-bloak>
			<div class="img-border">
				<div class="faith-project" ng-show="project.faithProject == 1">
					<a href="#"><img
						src="https://www.make8.com/img/faith_project.png" /></a>
				</div>
				<div class="col-xs-12 col-md-12 project-bg">

					<div class="col-xs-12 padding text-center"
						style="margin-bottom: 31px" ng-cloak>
						<a ng-click="viewProject(project)"><img
							ng-src="{{project.abbrImagePath}}"/ ></a>
					</div>

					<div class="col-xs-12 padding">
						<div class="col-xs-12 col-md-12 project-name"
							ng-bind="project.abbrName" title="{{project.name}}"
							ng-click="viewProject(project)"></div>
						<div class="col-xs-12 col-md-12 project-start-time padding">
							招募对象 ：<span class="project-span-style"
								title='{{project.enrollRoleListAllStr}}'
								ng-bind="project.enrollRoleListStr"></span>
						</div>
						<div class="col-xs-12 col-md-12 project-start-time padding">
							<div style="float: left;">项目类型：</div>
							<div ng-repeat="userType in project.userType"
								style="float: left;">
								<span class="project-span-style" ng-show="userType==1">Andriod&nbsp;</span>
								<span class="project-span-style" ng-show="userType==3">HTML5&nbsp;</span>
								<span class="project-span-style" ng-show="userType==2">iOS&nbsp;</span>
								<span class="project-span-style" ng-show="userType==4">网站&nbsp;</span>
								<span class="project-span-style" ng-show="userType==5">微信&nbsp;</span>
								<span class="project-span-style" ng-show="userType==7">UI&nbsp;</span>
								<span class="project-span-style" ng-show="userType==8">其他&nbsp;</span>
							</div>
						</div>
						<div class="col-xs-12 col-md-12 project-start-time padding">
							项目周期：<span class="project-span-style" ng-bind="project.period"></span><span
								class="project-span-style">天</span>
						</div>
						<div class="col-xs-12 col-md-12 project-start-time padding">
							浏览次数：<span class="project-span-style" ng-bind="project.viewCount"></span>
						</div>
						<div
							class="col-xs-12 col-md-12 project-div-style project-start-time padding"
							ng-bloak>
							项目预算：<span style="color: red" ng-bind="project.budget"></span> <span
								style="width: 70px; height: 25px; text-align: center; line-height: 25px; border-radius: 5px; display: block; position: absolute; right: 0px; top: 0px; background: #ffb22b; color: white;"
								ng-show='project.status==0'>待启动</span> <span
								style="width: 70px; height: 25px; text-align: center; line-height: 25px; border-radius: 5px; display: block; position: absolute; right: 0px; top: 0px; background: #ffb22b; color: white;"
								ng-show='project.status==1'>开发中</span> <span
								style="width: 70px; height: 25px; text-align: center; line-height: 25px; border-radius: 5px; display: block; position: absolute; right: 0px; top: 0px; background: #ffb22b; color: white;"
								ng-show='project.status==2'>已完成</span>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- paginate-container -->
	<div class="container">
		<div id="paginationView"
			class="col-xs-12 pagination-view-container pageNum-style"
			style="overflow: hidden; margin-left: 0px; padding: 0;">
			<ul class="m-pagination-page" style="">
				<!--<li ng-hide='currentPage<showLimit+1'><a ng-click='firstPage()' data-page-index="1">首页</a></li>
						<li ng-hide='currentPage<showLimit+1'><a ng-click='prevPage()'>上一页</a></li>
						<li ng-repeat='page in showPages' class='{{page==currentPage?"active":""}}' ng-click='pagenate(page)' ng-cloak>
							<a data-page-index="{{page-1}}" ng-bind='page'></a>
						</li>
						<li class='active' ng-show='showPages==0'><a>1</a></li>-->
				<li><a style="font-size: 14px" ng-click='loadMore()'>加载更多</a></li>
				<!--<li><a ng-click='lastPage()'>尾页</a></li>-->
			</ul>
		</div>
	</div>
	<!-- paginate-container end-->
	</div>

	<!--start of footer-->
	﻿
	<footer class="footer">
		<div class="col-xs-12 col-md-12 tail">
			<div class="container">
				<div class="col-xs-12 padding"
					style="padding-bottom: 72px !important">
					<div class="col-xs-12 col-sm-3 padding company_brand">
						<div>公司旗下品牌</div>
						<ul>
							<li class="col-xs-4 col-sm-12" onclick="window.location.href='#'"
								style="cursor: pointer; background: url(https://static.make8.com/img/v2/foot_company.png) no-repeat; padding-left: 0px; padding-right: 0px;"></li>
							<li class="col-xs-4 col-sm-12"
								onclick="window.location.href='http://www.yunweipai.com'"
								style="cursor: pointer; background: url(https://static.make8.com/img/v2/foot_company.png) 0px -30px no-repeat; padding-left: 0px; padding-right: 0px;"></li>
							<li class="col-xs-4 col-sm-12"
								onclick="window.location.href='http://www.chengxuyuan.com'"
								style="cursor: pointer; background: url(https://static.make8.com/img/v2/foot_company.png) 0px -60px no-repeat; padding-left: 0px; padding-right: 0px;"></li>
						</ul>
					</div>
					<div class="col-xs-12 col-sm-6 padding company_center">
						<div class="col-xs-4 padding company">
							<span
								style="background: url(https://static.make8.com/img/v2/foot_icon.png) no-repeat"></span>
							<span>公司</span>
							<ul>
								<li onclick="window.location.href='/about/aboutus'">关于我们</li>
								<li onclick="window.location.href='/about/contactus'">联系我们</li>
								<li onclick="window.location.href='/about/flink'">友情链接</li>
								<li onclick="window.location.href='http://news.make8.com'">码客新闻</li>
							</ul>
						</div>
						<div class="col-xs-4 padding service">
							<span
								style="background: url(https://static.make8.com/img/v2/foot_icon.png) -21px 0px no-repeat"></span>
							<span>服务</span>
							<ul>
								<li onclick="window.location.href='/home/request'">发布需求</li>
								<li onclick="window.location.href='/home/userinfo'">码客认证</li>
								<li onclick="window.location.href='/about/serviceflow'">服务流程</li>
								<li onclick="window.location.href='/public/pay'">如何支付</li>
							</ul>
						</div>
						<div class="col-xs-4 padding problem">
							<span
								style="background: url(https://static.make8.com/img/v2/foot_icon.png) -44px 0px no-repeat"></span>
							<span>常见问题</span>
							<ul>
								<li
									onclick="window.location.href='http://support.make8.com/category/help/01/kfz'">我是开发者</li>
								<li
									onclick="window.location.href='http://support.make8.com/category/help/01/sjs'">我是设计师</li>
								<li
									onclick="window.location.href='http://support.make8.com/category/help/01/xqf'">我是需求方</li>
							</ul>
						</div>
					</div>
					<div class="col-xs-12 col-sm-3 padding foot_right">
						<div class="foot_phone">
							<div
								style="background: url(https://static.make8.com/img/v2/foot_right_icon.png) no-repeat"></div>
							<div>4000-818-530</div>
						</div>
						<div style="font-size: 25.4px; font-weight: 100;">service@make8.com</div>
						<div style="font-size: 15px; font-weight: 100;">深圳市南山区软件产业基地4栋B座203</div>
						<div class="foot_wei">
							<div onclick="window.open('http://weibo.com/5848150034/manage')"
								style="cursor: pointer; background: url(https://static.make8.com/img/v2/foot_right_icon.png) -31px 0px no-repeat"></div>
							<div onmouseover="showErWeiMa()" onmouseout="hideErWeiMa()"
								style="position: relative; cursor: pointer; background: url(https://static.make8.com/img/v2/foot_right_icon.png) -62px 0px no-repeat">
								<span id="make8_erweima"> <img
									src="https://static.make8.com/img/make8_erweima.jpg" />
								</span>
							</div>
						</div>
					</div>
				</div>
				<div class="text-center pronouncements">
					深圳市<a href="/infos/index"
						style="color: #969696; margin-right: 0px;">云</a>达人科技有限公司 <a
						href="http://www.miibeian.gov.cn" style="color: #969696;"
						target="_blank">粤ICP备15083138号-2 &copy; 2016</a>
				</div>
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
		<input type="hidden" id="url" value="https://static.make8.com" /> <input
			type="hidden" id="topurl" value="https://www.make8.com/" /> <input
			type="hidden" id="reload" value="0" />
	</div>

	<!--CNZZ CODE-->
	<div style="display: none;">
		<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1257531169'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/z_stat.php%3Fid%3D1257531169' type='text/javascript'%3E%3C/script%3E"));</script>
	</div>
	<!--END OF CNZZ CODE-->
</body>

</html>