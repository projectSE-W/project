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
		<title>注册 - 包满意 - 让技术大牛完成你的技术梦想 | 互联网软件众包平台</title>
			    
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


    <script type="text/javascript" src="https://www.make8.com/js/jquery.min.js?v=201608241757"></script>
   	<script type="text/javascript" src="https://www.make8.com/js/angular.min.js?v=201608241757"></script>
   	<script type="text/javascript" src="https://www.make8.com/js/angular-route.min.js?v=201608241757"></script>
	<script type="text/javascript" src="https://www.make8.com/js/angular-resource.min.js?v=201608241757"></script>
	<script type="text/javascript" src="https://www.make8.com/js/angular-comm.js?v=201608241757"></script>
	<script type="text/javascript" src="https://www.make8.com/js/map.js?v=201608241757"></script>
	<script type="text/javascript" src="https://www.make8.com/js/jquery.placeholder.js?v=201608241757"></script>
    <script type="text/javascript" src="https://www.make8.com/js/bootstrap.min.js?v=201608241757"></script>
    <script type="text/javascript" src="https://www.make8.com/js/comm.js?v=201608241757"></script>
    <script type="text/javascript" src="https://www.make8.com/js/footer.js?v=201608241757"></script>
    <script type="text/javascript" src="https://www.make8.com/js/helpdocker.js?v=201608241757"></script>
    <script type="text/javascript" src="https://www.make8.com/thirdparty/jqueryvalidate/js/jquery.validate.js?v=201608241757"></script>
    <script type="text/javascript" src="https://www.make8.com/thirdparty/jqueryvalidate/js/localization/messages_zh.js?v=201608241757"></script>
    <script type="text/javascript" src="https://www.make8.com/thirdparty/jqueryconfirm/js/jquery-confirm.min.js?v=201608241757"></script>
    <script type="text/javascript" src="https://www.make8.com/thirdparty/bootstrapdialog/js/bootstrap-dialog.min.js?v=201608241757"></script>
    <script type="text/javascript" src="https://www.make8.com/js/jquery-ui.js?v=201608241757"></script>
    <script type="text/javascript" src="https://www.make8.com/thirdparty/jquerypagination/js/jquery.pagination-1.2.7.min.js?v=201608241757"></script>

	    
	<link href="https://www.make8.com/thirdparty/countdown/css/jquery.countdown.css?v=201608241757" rel="stylesheet">
    <link href="https://www.make8.com/thirdparty/fileinput/css/fileinput.min.css?v=201608241757"  rel="stylesheet" type="text/css">
    <link href="https://www.make8.com/thirdparty/datetimepicker/css/bootstrap-datetimepicker.css?v=201608241757" rel="stylesheet">

    <script type="text/javascript" src="https://www.make8.com/js/projectprogress.js?v=201608241757"></script>
    <script type="text/javascript" src="https://www.make8.com/thirdparty/countdown/js/jquery.countdown.js?v=201608241757"></script>
    <script type="text/javascript" src="https://www.make8.com/thirdparty/jqueryraty/jquery.raty.min.js?v=201608241757"></script>
	<script type="text/javascript" src="https://www.make8.com/thirdparty/fileinput/js/fileinput.js?v=201608241757"></script>
    <script type="text/javascript" src="https://www.make8.com/thirdparty/fileinput/js/fileinput_locale_zh.js?v=201608241757"></script>

    <script type="text/javascript" src="https://www.make8.com/thirdparty/datetimepicker/js/bootstrap-datetimepicker.js?v=201608241757"></script>
    <script type="text/javascript" src="https://www.make8.com/thirdparty/datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js?v=201608241757"></script>
 

        <link rel="stylesheet" href="https://www.make8.com/css/home/request.css?v=201608241757">
        <link rel="stylesheet" href="https://www.make8.com/css/style.css?v=201608241757">
        <script type="text/javascript" src="https://www.make8.com/js/home/request.js?v=201608241757"></script>
	</head>

	<body>
	 <!--start of header-->
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
		<!--end of header-->

        
		<div class="container">
			<div class="breadcrumb-container-4-request">
				<ol class="breadcrumb">
				</ol>
			</div>
		</div>
		
				<form class="form-horizontal" id="publishRequestFormStep2" action="sregister" role="form" method="post">
					 <!-- <form class="form-horizontal" id="publishRequestFormStep2" role="form" method="post"> -->
						<fieldset>
							<h1 class="text-center wbm-tell-name">注册</h1>
							
							<div class="form-group form-group-a col-md-12">
								<label for="projectName"><i class="form-required">*</i>account</label>
								<div class="col-md-12">
									<input type="text" class="form-control form-control-a" id="projectName" name="s.account" placeholder="" required>
							   </div>
							</div>
							
							<div class="form-group form-group-a col-md-12">
								<label for="projectName"><i class="form-required">*</i>code</label>
								<div class="col-md-12">
									<input type="text" class="form-control form-control-a" id="projectDetail" name="s.code" placeholder="" required>
							   </div>
							</div>
							<div class="form-group form-group-4-textarea col-md-12">
								<label for="projectDesc"><i class="form-required">*</i>name</label>
								<div class="col-md-12">
									<textarea class="form-control form-textarea" rows="5" id="projectDesc" name="s.name" placeholder="" required="true" minlength="20" maxlength="1000"></textarea>
								</div>
							</div>
							<div class="form-group form-group-4-textarea col-md-12">
								<label for="projectDesc"><i class="form-required">*</i>age</label>
								<div class="col-md-12">
									<textarea class="form-control form-textarea" rows="5" id="projectDesc" name="s.age" placeholder="" required="true" minlength="20" maxlength="1000"></textarea>
								</div>
							</div>
							<div class="form-group form-group-4-textarea col-md-12">
								<label for="projectDesc"><i class="form-required">*</i>gender</label>
								<div class="col-md-12">
									<textarea class="form-control form-textarea" rows="5" id="projectDesc" name="s.gender" placeholder="" required="true" minlength="20" maxlength="1000"></textarea>
								</div>
							</div>
							<div class="form-group form-group-4-textarea col-md-12">
								<label for="projectDesc"><i class="form-required">*</i>school</label>
								<div class="col-md-12">
									<textarea class="form-control form-textarea" rows="2" id="projectDesc" name="s.school" placeholder="" required="true" minlength="20" maxlength="1000"></textarea>
								</div>
							</div>
							<div class="form-group form-group-4-textarea col-md-12">
								<label for="projectDesc"><i class="form-required">*</i>grade</label>
								<div class="col-md-12">
									<textarea class="form-control form-textarea" rows="5" id="projectDesc" name="s.grade" placeholder="" required="true" minlength="20" maxlength="1000"></textarea>
								</div>
							</div>
							<div class="form-group form-group-a col-md-12">
								<label for="projectName"><i class="form-required">*</i>major</label>
								<div class="col-md-12">
									<input type="text" class="form-control form-control-a" id="projectName" name="s.major" placeholder="" required>
							   </div>
							</div>
							<div class="form-group form-group-a col-md-12">
								<label for="projectName"><i class="form-required">*</i>countcity</label>
								<div class="col-md-12">
									<input type="text" class="form-control form-control-a" id="projectName" name="s.countcity" placeholder="" required>
							   </div>
							</div>
							<div class="form-group form-group-a col-md-12">
								<label for="projectName"><i class="form-required">*</i>city</label>
								<div class="col-md-12">
									<input type="text" class="form-control form-control-a" id="projectName" name="s.city" placeholder="" required>
							   </div>
							</div>
							<div class="form-group form-group-a col-md-12">
								<label for="projectName"><i class="form-required">*</i>phone</label>
								<div class="col-md-12">
									<input type="text" class="form-control form-control-a" id="projectName" name="s.phone" placeholder="" required>
							   </div>
							</div>
							<div class="form-group form-group-a col-md-12">
								<label for="projectName"><i class="form-required">*</i>email</label>
								<div class="col-md-12">
									<input type="text" class="form-control form-control-a" id="projectName" name="s.email" placeholder="" required>
							   </div>
							</div>
							<div class="form-group form-group-a col-md-12">
								<label for="projectName"><i class="form-required">*</i>countlanguage</label>
								<div class="col-md-12">
									<input type="text" class="form-control form-control-a" id="projectName" name="s.countlanguage" placeholder="" required>
							   </div>
							</div>
							<div class="form-group form-group-a col-md-12">
								<label for="projectName"><i class="form-required">*</i>language</label>
								<div class="col-md-12">
									<input type="text" class="form-control form-control-a" id="projectName" name="s.language" placeholder="" required>
							   </div>
							</div>
							
							
							<div class="col-xs-6 col-md-6">
										<button type="submit" class="btn btn-lg btn-primary pull-right">注册</button>
									</div>
                        </fieldset>
					</form>
				
	</body>

</html>
