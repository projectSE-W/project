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

<div class="container">
			<div class="bigtable">
					
					<br>
					
					<div class="table-responsive">
						<table class="table table-striped">
							<tr>
								<th>S名称</th>
								<th>S ID</th>
								<th>学历</th>
								<th>详细信息</th>
								<th>确定TA</th>
							</tr>
						<s:iterator value="clist">
						<tr>
							<td><strong><s:property value="sname"/></strong></td>
							<td><strong><s:property value="sid"/></strong></td>
								<td><strong><s:property value="sxueli"/></strong></td>
								<td><a href="sdetail?sid=${sid}">详细信息</a></td>
								<td><!-- author_id=${author_id}需要你自己改 -->
									<a href="invitethissAction?author_id=${author_id}&publisher=${publisher}&publish_date=${publish_date}&price=${price}&title=${title}"><input type="button" value="邀请TA"/></a>
								</td>
							</tr>
						</s:iterator>
						</table>
					</div>
				</div>
			</div>

</body>
</html>