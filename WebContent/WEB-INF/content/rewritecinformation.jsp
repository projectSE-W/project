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
<!--start of header-->
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
		</div>
	</nav>
	<!--end of header-->
	
	<div class="col-md-12"><br></br><br></br><br></br><br></br><br></br><br></br>
	
<br>

<div class="updatebook_table">
<form action="rewritesinformation" method="get" class="form-horizontal" role="form">
<% String authorid1 = request.getParameter("author_id"); %>
						<% String publisher = request.getParameter("publisher"); %>
						<!-- % String publisher = new String(request.getParameter("publisher").getBytes("ISO-8859-1"), "UTF-8"); % -->
						<% String publishdate = request.getParameter("publish_date"); %>
						<% String price = request.getParameter("price"); %>
						<% String title = request.getParameter("title"); %>						
<div class="form-group">
<label class="col-sm-5 control-label"><font color="#424242">工作地点</font></label>
<div class="col-sm-3">
<input type="text" class="form-control" name="book.price" value="<%=price%>" placeholder=<%=price%> required="required" autofocus>  
</div>
</div>
						
<div class="form-group">
<label class="col-sm-5 control-label"><font color="#424242">出版社</font></label>
<div class="col-sm-3">
<input type="text" class="form-control" name="book.publisher" value="<%=publisher%>" placeholder=<%=publisher%> required="required"> 
</div>
</div>
						
<div class="form-group">
<label class="col-sm-5 control-label"><font color="#424242">出版日期</font></label>
<div class="col-sm-3">
<input type="text" class="form-control" name="book.publish_date" value="<%=publishdate%>" placeholder=<%=publishdate%> required="required">   
</div>
</div>
						
<div class="form-group">
<div class="col-sm-offset-5 col-sm-3">
<button type="submit" class="btn-dark">提交</button>
</div>
</div>
						
<input type="hidden" name="book.author_id" value="<%=authorid1%>">
<input type="hidden" name="title" value="<%=title%>"> 
						
</form>
</div>
</div>
</body>
</html>