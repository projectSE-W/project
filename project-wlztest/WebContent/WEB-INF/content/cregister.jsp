<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		 <title>S - 包满意 - 让技术大牛完成你的技术梦想 | 互联网软件众包平台</title>
		<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no" />
		<meta name="keywords" content="包满意, 软件外包, 软件众包, 代码众包, 开发者众包, 程序员兼职, 项目外包,互联网软件外包,网站外包,安卓APP外包,Andriod APP,iOS APP外包,微信开发外包">
        <meta name="description" content="包满意是一个基于众包的互联网软件技术服务平台，建立项目需求方与技术大牛的连接。帮助需求方快速找到靠谱的软件工程师，同时也为程序员提供积累项目经验和收获财富的渠道。">
		<link rel="stylesheet" type="text/css" href="https://www.make8.com/css/bootstrap.min.css?v=201608241757"/>
		<link rel="stylesheet" type="text/css" href="https://www.make8.com/css/style.css?v=201608241757"/>
		<link rel="stylesheet" type="text/css" href="https://www.make8.com/css/helpdocker.css?v=201608241757"/>
		<link rel="stylesheet" type="text/css" href="https://www.make8.com/font-awesome/css/font-awesome.min.css?v=201608241757"/>
	    <link href="https://www.make8.com/thirdparty/bootstrapdialog/css/bootstrap-dialog.min.css?v=201608241757"  rel="stylesheet" type="text/css">
			<link rel="stylesheet" type="text/css" href="https://www.make8.com/css/footer.css?v=201608241757"/>
		</head>
</head>
<body
	style='background: url(Images/2.png) no-repeat; background-size: cover;'>

	<script
		src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script
		src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<nav id="nav">
	    <div class="container">
		<h1>
			<a href="/">
				<img src="Images/logo.png">
			</a>
		</h1>
		<ul class="nav-ul">
			    <li><a href="Welcome">首页</a><div></div></li>
					<li class="newDiv"><a href="publish">发布需求</a><div></div></li>
					<li><a href="projectlist">项目列表</a><div></div></li>
					<li><a href="aboutus">关于我们</a><div></div></li>
					<li><a href="cregister">发布项目者注册</a><div></div></li>
					<li><a href="sregister">投标者者注册</a><div></div></li>
					<li id="login_status">
						<input id="login" class="btn login" type="button" onclick="javascript:location.href='login'" value="登录">
						<input id="join" class="btn join" type="button" onclick="javascript:location.href='register'" value="注册">
					</li>
		   </ul>
		  </div>
		</nav>
				<br>
				<br>
				
				<div class="col-md-12 headImg">
			<div class="container text-center">
				<div class="col-md-12 head-Font-bg">让技术大牛完成你的技术梦想</div>
				<div class="col-md-12 head-Font-sm"> 更低的成本  | 更高的开发质量</div>


			</div>
		</div>
				<form action="AddAction" method="get" class="form-horizontal"
					role="form">
					<div class="form-group">
						<label class="col-sm-5 control-label"><font
							color="#424242">account</font></label>
						<div class="col-sm-3">
							<input type="text" class="form-control" name="c.account"
								required="required" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-5 control-label"><font
							color="#424242">password</font></label>
						<div class="col-sm-3">
							<input type="text" class="form-control" name="c.password"
								required="required" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-5 control-label"><font
							color="#424242">cname</font></label>
						<div class="col-sm-3">
							<input type="text" class="form-control" name="c.cname"
								required="required" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-5 control-label"><font
							color="#424242">city</font></label>
						<div class="col-sm-3">
							<input type="text" class="form-control" name="c.city"
								required="required" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-5 control-label"><font
							color="#424242">linkman</font></label>
						<div class="col-sm-3">
							<input type="text" class="form-control" name="c.linkman"
								required="required"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-5 control-label"><font
							color="#424242">phone</font></label>
						<div class="col-sm-3">
							<input type="text" class="form-control" name="c.phone"
								required="required" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-5 control-label"><font
							color="#424242">email</font></label>
						<div class="col-sm-3">
							<input type="text" class="form-control" name="c.email"
								required="required" />
						</div>
					</div>
					<!--  
					<div class="form-group">
						<label class="col-sm-5 control-label"><font
							color="#424242">出版社</font></label>
						<div class="col-sm-3">
							<input type="text" class="form-control" name="book.publisher"
								required="required" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-5 control-label"><font
							color="#424242">出版日期</font></label>
						<div class="col-sm-3">
							<input type="text" class="form-control" name="book.publish_date"
								placeholder="年-月-日" required="required" />
						</div>
					</div>
					-->
					<div class="form-group">
						<div class="col-sm-offset-5 col-sm-3">
							<button type="submit" class="btn-dark">提交</button>
						</div>
					</div>
					 
				      <div class="col-lg-offset-1 col-xs-offset-1 col-lg-10 col-xs-10 btn-submit-container">
							<div class="btn-height">
								<button type="submit" id="btnSubmit" class="btn btn-primary btn-submit btn-submit-style">注册</button>
								</div>
							<div class="text-center">已有账号?<a href="login">马上登录</a></div>
					  </div>

				</form>
			</div>
		</div>
	</div>
</body>
</html>