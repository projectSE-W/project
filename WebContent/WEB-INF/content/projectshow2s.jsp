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


    
				<link rel="stylesheet" href="https://www.make8.com/css/home/projects.css?v=201608241757" />
				</head>

	<body>
<div class="container">
<nav id="nav">
	<div class="container">
		<h1>
			<a href="/">
				<img src="Images/logo.png">
			</a>
		</h1>
		<ul class="nav-ul">
				 <input type="hidden" id="isLogged" value="true" />


			<li><a href="Welcome">首页</a><div></div></li>
					<li class="newDiv"><a href="publish">发布需求</a><div></div></li>
					<li><a href="projectlist">项目列表</a><div></div></li>
					<li><a href="aboutus">关于我们</a><div></div></li>
					<li><a href="cregister">发布项目者注册</a><div></div></li>
					<li><a href="sregister">投标者者注册</a><div></div></li>
					<li><a href="projectshow2s">投标者查看项目</a><div></div></li>
					
					<li id="login_status">
						<input id="login" class="btn login" type="button" onclick="javascript:location.href='login'" value="登录">
						<input id="join" class="btn join" type="button" onclick="javascript:location.href='register'" value="注册">
					</li>
			<!-- 
			<li>
				<ul class="use">
					<li onclick="navLogin(this)">
						<i title=""></i>
						
						<i class="fa fa-angle-up"></i>
					</li>
					<li onclick="javascript:location.href='https://www.make8.com/home/userinfo'" onmouseover="loginMouseOver(this)" onmouseout="loginMouseOut(this)">
						个人中心
					</li>
					<li onclick="javascript:logout();" onmouseover="loginMouseOver(this)" onmouseout="loginMouseOut(this)">
						退出登录
					</li>
				</ul>
			</li>
			 -->
   </ul>
  </div>
</nav>

<div class="container">
			<div class="bigtable">
					
					<br>
					
					<div class="table-responsive">
						<table class="table table-striped">
							<tr>
								<th>公司名</th>
								<th>项目名</th>
								<th>项目内容</th>
								<th>开始时间</th>
								<th>结束时间</th>
							</tr>
							
							
							<s:iterator value="allproject">
							<tr class="success">
								<td><strong><s:property value="cname"/></strong></td>
								<td><strong><s:property value="pname"/></strong></td>
								<td><strong><s:property value="content"/></strong></td>
								<td><strong><s:property value="date"/></strong></td>
								<td><strong><s:property value="dend"/></strong></td>
								
							</tr>
							</s:iterator>
							
						</table>
					</div>
				</div>
			</div>
			<!-- paginate-container end-->
			</div>
			
			<div class="container">
			<div class="bigtable">
					
					<br>
					
					<div class="table-responsive">
						<table class="table table-striped">
							<tr>
								<th>公司名</th>
								<th>项目名</th>
								<th>项目内容</th>
								<th>开始时间</th>
								<th>结束时间</th>
							</tr>
							
							
							<s:iterator value="allproject">
							<tr class="success">
								<td><strong><s:property value="cname"/></strong></td>
								<td><strong><s:property value="pname"/></strong></td>
								<td><strong><s:property value="content"/></strong></td>
								<td><strong><s:property value="date"/></strong></td>
								<td><strong><s:property value="dend"/></strong></td>
								
							</tr>
							</s:iterator>
							
						</table>
					</div>
				</div>
			</div>
			
			<div class="container">
				<div id="paginationView" class="col-xs-12 pagination-view-container pageNum-style" style="overflow: hidden;margin-left: 0px;padding:0;">
					<ul class="m-pagination-page" style="">
						<!--<li ng-hide='currentPage<showLimit+1'><a ng-click='firstPage()' data-page-index="1">首页</a></li>
						<li ng-hide='currentPage<showLimit+1'><a ng-click='prevPage()'>上一页</a></li>
						<li ng-repeat='page in showPages' class='{{page==currentPage?"active":""}}' ng-click='pagenate(page)' ng-cloak>
							<a data-page-index="{{page-1}}" ng-bind='page'></a>
						</li>
						<li class='active' ng-show='showPages==0'><a>1</a></li>-->
						<li><a style="font-size: 14px" ng-click='loadMore()'>我是没有用的加载更多</a></li>
						<!--<li><a ng-click='lastPage()'>尾页</a></li>-->
					</ul>
				</div>
			</div>	
			<!--  
			<div class="col-xs-12 label-container" style="background: white;min-height: 70px;">
				<div class="container project-search-view">
					<div class="search-panel col-xs-12 col-md-8 padding">
						<button style="margin-left: 0px;" class="btn btn-link search-item {{isAllType?'btn-search-active search-item-blank':''}}" value="" ng-click='searchType()'>
							<span class="{{isAllType?'btn-search-span-active':''}}">全部</span>
						</button>
						<button class="btn btn-link search-item {{projectType.isActive?'btn-search-active search-item-blank':''}}" ng-click='searchType(projectType)' value="{{projectType.value}}" ng-model='projectType' ng-repeat='projectType in projectTypeList' ng-cloak>
							<span class="{{projectType.isActive?'btn-search-span-active':''}}" ng-bind='projectType.name'></span>
						</button>
					</div>
					<div class='breadcrumb-container col-xs-12 col-md-4 padding'>
						<div class="breadcrumb-container-div">
							<div style="margin-right: 12px" class="col-search-12">
								<input id='search' type="text" class="form-control" ng-keydown='keySearch($event)'>
							</div>
							<div class="input-group-btn">
								<button class="btn btn-info" type="button" ng-click='search()'><div><img src="https://static.make8.com/img/search_icon.png"/></div></button>
							</div>
						</div>
					</div>

				</div>
			</div>
			-->
			<!--<div class="container" id="projectView">
				<div class="row search-result-num-panel">招募中的项目
					<p id="projectNum" class="result-num" ng-bind='totalRow'></p>个</div>
			</div>-->
			<!--  
			<div id="projectView" class="container container-padding">
				<div class="col-xs-12 col-sm-6 col-md-4" ng-repeat="project in dataList" ng-bloak>
					<div class="img-border">
						<div class="faith-project" ng-show="project.faithProject == 1">
							<a href="#"><img src="https://www.make8.com/img/faith_project.png" /></a>
						</div>
						<div class="col-xs-12 col-md-12 project-bg">
							
							<div class="col-xs-12 padding text-center" style="margin-bottom: 31px" ng-cloak>
								<a ng-click="viewProject(project)"><img ng-src="{{project.abbrImagePath}}" / ></a>
							</div>
							
							<div class="col-xs-12 padding">
								<div class="col-xs-12 col-md-12 project-name" ng-bind="project.abbrName" title="{{project.name}}" ng-click="viewProject(project)"></div>
								<div class="col-xs-12 col-md-12 project-start-time padding">招募对象 ：<span class="project-span-style" title='{{project.enrollRoleListAllStr}}' ng-bind="project.enrollRoleListStr"></span></div>	
								<div class="col-xs-12 col-md-12 project-start-time padding">									
										<div style="float: left;">项目类型：</div>
										<div ng-repeat="userType in project.userType" style="float: left;">
											<span class="project-span-style" ng-show="userType==1">Andriod&nbsp;</span>
											<span class="project-span-style" ng-show="userType==3">HTML5&nbsp;</span>
											<span class="project-span-style" ng-show="userType==2">iOS&nbsp;</span>
											<span class="project-span-style" ng-show="userType==4">网站&nbsp;</span>
											<span class="project-span-style" ng-show="userType==5">微信&nbsp;</span>
											<span class="project-span-style" ng-show="userType==7">UI&nbsp;</span>
											<span class="project-span-style" ng-show="userType==8">其他&nbsp;</span>
										</div>
								</div>
								<div class="col-xs-12 col-md-12 project-start-time padding">项目周期：<span class="project-span-style" ng-bind="project.period"></span><span class="project-span-style">天</span></div>
								<div class="col-xs-12 col-md-12 project-start-time padding">浏览次数：<span class="project-span-style" ng-bind="project.viewCount"></span></div>
								<div class="col-xs-12 col-md-12 project-div-style project-start-time padding" ng-bloak>
									项目预算：<span style="color: red" ng-bind="project.budget"></span> 
									<span style="width:70px;height: 25px;text-align: center;line-height: 25px;border-radius: 5px;display: block;position: absolute;right: 0px;top: 0px;background: #ffb22b;color: white;" ng-show='project.status==0'>待启动</span>
									<span style="width:70px;height: 25px;text-align: center;line-height: 25px;border-radius: 5px;display: block;position: absolute;right: 0px;top: 0px;background: #ffb22b;color: white;" ng-show='project.status==1'>开发中</span>
									<span style="width:70px;height: 25px;text-align: center;line-height: 25px;border-radius: 5px;display: block;position: absolute;right: 0px;top: 0px;background: #ffb22b;color: white;" ng-show='project.status==2'>已完成</span>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
			-->
			
			
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
					<input type="hidden" id="url" value="https://static.make8.com"/>
					<input type="hidden" id="topurl" value="https://www.make8.com/" />
					<input type="hidden" id="reload" value="0" />
				</div>

				<!--CNZZ CODE-->
				<div style="display:none;"><script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1257531169'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/z_stat.php%3Fid%3D1257531169' type='text/javascript'%3E%3C/script%3E"));</script></div>
				<!--END OF CNZZ CODE-->
	</body>

</html>