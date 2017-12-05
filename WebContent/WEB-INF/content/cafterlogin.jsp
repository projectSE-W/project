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
		<ul class="nav-ul">
			    <li><a href="Welcome">首页</a><div></div></li>
					<li class="newDiv"><a href="publish">发布需求</a><div></div></li>
					<li><a href="projectshow2c">项目列表</a><div></div></li>
					<li><a href="aboutus">关于我们</a><div></div></li>
					<li><a href="cregister">发布项目者注册</a><div></div></li>
					<li><a href="sregister">投标者者注册</a><div></div></li>
					<li><a href="projectshow2s">投标者查看项目</a><div></div></li>
					
					<li id="login_status">
						<input id="login" class="btn login" type="button" onclick="javascript:location.href='login'" value="登录">
						<input id="join" class="btn join" type="button" onclick="javascript:location.href='register'" value="注册">
					</li>
		   </ul>
		  </div>
		</nav>
		<!--end of header-->

    <div class="body-offset"></div>

	<!-- 添加项目经验(企业) -->
	<div class="modal" id="addCompanyProjectExperience">
	  <div class="modal-dialog modal-custom-class">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-remove"></i></button>
	        <h4 class="modal-title">添加项目经验</h4>
	      </div>
	      <div class="modal-body">
		        <form class="form-horizontal form-in-modal" action="javascript:addcompanyWorkExperience()" id="companyworkCheckForm">
		        	<div class="form-group">
		        		<div class="col-lg-12 col-md-12">
		        			<label class="control-label form-label col-md-2 fromDiv" for="companyPName">项目名称</label>
		        			<input class="col-md-9" style="padding:5px" type="text" id="companyPName" maxlength="100" name="companyPName" required>
		        		</div>
		        		<div class="col-md-offset-2 col-md-4 marginTop" id="companyPNameMsg"></div>
						<div class="col-lg-12 col-md-12 fromDiv" style="margin-bottom:1%">
							<label class="control-label form-label col-md-2" for="workinghours">项目时间</label>
							<div class="input-group date companyworkinghoursstart col-md-4" id="companyworkinghoursstartDiv">
								<input class="form-control  form-input-small" id="companyworkinghoursstart" name="companyworkinghoursstart" type="text" required/>
								<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
								<span class="input-group-addon"><span class="fa fa-calendar"></span></span>
							</div>
							<p class="col-md-1" style="text-align:center;padding-top:10px;"> - </p>
							<div class="input-group date companyworkinghoursend col-md-4" id="companyworkinghoursendDiv">
								<input class="form-control  form-input-small" id="companyworkinghoursend" name="companyworkinghoursend" type="text" required companyTimeRangeCheck="true"/>
								<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
								<span class="input-group-addon"><span class="fa fa-calendar"></span></span>
							</div>
						</div>
						<div class="col-md-offset-2 col-md-4 marginTop" id="companyworkinghoursstartMsg"></div>
						<div class="col-md-offset-7 col-md-4 marginTop" id="companyworkinghoursendMsg"></div>
						<div class="col-lg-12 col-md-12" style="height: 232px;">
							<label class="control-label form-label col-md-2"  for="companyworkingcontent">项目描述</label>
							<textarea style="padding:5px" class="col-md-9" name="companyworkingcontent" id="companyworkingcontent" maxlength="1000" cols="30" rows="10" required></textarea>
						</div>
						<div class="col-md-offset-2 col-md-4 marginTop" id="companyworkingcontentMsg"></div>
						<div class="col-lg-12 col-md-12 fromDiv" style="margin-top:1%">
							<label class="control-label form-label col-md-2"  for="companyWorkingUrl">项目链接</label>
							<input class="col-md-9" style="padding:5px" type="text" id="companyWorkingUrl" name="companyWorkingUrl" maxlength="200" required="true">
						</div>
						<div class="col-md-offset-2 col-md-4 marginTop" id="companyWorkingUrlMsg"></div>
		        	</div>
		        	<hr>
		        	<div style="overflow:hidden">
		        		<button type="submit" class="btn btn-lg btn-primary form-btn col-md-2 col-md-offset-3">确定</button>
		        		<button type="button" class="btn btn-lg btn-default form-btn col-md-2 col-md-offset-1" data-dismiss="modal" onclick="cancel(this)">取消</button>
		        		<input type="reset" style="display:none" id="resetToCompanyE">
		        	</div>
		        </form>
	       </div>
	    </div>
	  </div>
		</div>

	<!-- 添加工作经验 -->
	<div class="modal" id="addworkexperience">
	  <div class="modal-dialog modal-custom-class">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-remove"></i></button>
	        <h4 class="modal-title">添加工作经验</h4>
	      </div>
	      <div class="modal-body">
		        <form class="form-horizontal form-in-modal" action="javascript:addworkexperience()" id="workCheckForm">
		        	<div class="form-group">
		        		<div class="col-lg-12 col-md-12 fromDiv">
		        			<label class="control-label form-label col-md-2" for="company">公司</label>
		        			<input class="col-md-9" type="text" id="company" maxlength="100" name="company" required>
		        		</div>
		        		<div id="companyMsg" class="col-md-offset-2 col-md-4 marginTop"></div>
		        		<div class="col-lg-12 col-md-11 fromDiv">
		        			<label class="control-label form-label col-md-2" for="position">职位</label>
		        			<input class="col-md-9" type="text" id="position" name="position" maxlength="50" required>
		        		</div>
		        		<div id="positionMsg" class="col-md-offset-2 col-md-4 marginTop"></div>
						<div class="col-lg-12 col-md-11 fromDiv">
							<label class="control-label form-label col-md-2" for="workinghours">工作时间</label>
							<div class="input-group date workinghoursstart col-md-4" id="workinghoursstartDiv">
								<input class="form-control  form-input-small" id="workinghoursstart" name="workinghoursstart" type="text" required="true"/>
								<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
								<span class="input-group-addon"><span class="fa fa-calendar"></span></span>
							</div>
							<p class="col-md-1" style="text-align:center;padding-top:10px;"> - </p>
							<div class="input-group date workinghoursend col-md-4" id="workinghoursendDiv">
								<input class="form-control  form-input-small" id="workinghoursend" name="workinghoursend" type="text" timeRangeCheck="true"/>
								<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
								<span class="input-group-addon"><span class="fa fa-calendar"></span></span>
							</div>
						</div>

						<div class="col-md-offset-2 col-md-4 marginTop" id="workinghoursstartMsg">
						</div>
					  <div class="col-md-offset-7 col-md-4 marginTop" id="workinghoursendMsg">
						</div>

						<div class="col-lg-12 col-md-11" style="height:233px">
							<label class="control-label form-label col-md-2" for="workingcontent">工作内容</label>
							<textarea class="col-md-9" name="workingcontent" id="workingcontent" maxlength="1000" cols="30" rows="10" required></textarea>
							<div class="col-md-offset-2 col-md-3" id="workingcontentMsg">
							</div>
						</div>
		        	</div>
		        	<hr>
		        	<div style="overflow:hidden">
		        		<button type="submit" class="btn btn-lg btn-primary form-btn col-md-2 col-md-offset-3">确定</button>
		        		<button type="button" class="btn btn-lg btn-default form-btn col-md-2 col-md-offset-1" data-dismiss="modal" onclick="cancel(this)">取消</button>
		        		<input type="reset" style="display:none" id="workCheckFormreset">
		        	</div>
		        </form>
	       </div>
	    </div>
	  </div>
		</div>

	<!-- 添加作品 -->
	<div class="modal" id="addprojectworks">
	  <div class="modal-dialog modal-custom-class">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-remove"></i></button>
	        <h4 class="modal-title">添加作品</h4>
	      </div>
	      <div class="modal-body">
		        <form class="form-horizontal form-in-modal" id="pojectCheckForm" action="javascript:addpoject()" role="form"  method="post">
		        	<div class="form-group">
		        		<div class="col-lg-12 col-md-12">
		        			<label class="control-label form-label col-md-2 fromDiv" for="projectname">作品标题</label>
		        			<input class="col-md-9" type="text" id="projectname" maxlength="100" name="projectname" required>
		        		</div>
		        		<div id="projectnameMsg" class="col-md-offset-2 col-md-4 marginTop"></div>
		        		<div class="col-lg-12 col-md-12">
		        			<label class="control-label form-label col-md-2 fromDiv" for="projecturl">作品链接</label>
		        			<input class="col-md-9" type="text" id="projecturl" maxlength="200" name="projecturl" required>
		        		</div>
		        		<div id="projecturlMsg" class="col-md-offset-2 col-md-4 marginTop"></div>
		        		<div class="col-lg-12 col-md-12" style="height: 220px;">
		        			<label class="control-label form-label col-md-2 fromDiv" for="projectintro">作品描述</label>
		        			<textarea class="col-md-9" type="text" id="projectintro" maxlength="1000" style="padding: 10px;height: 200px;" name="projectintro" required></textarea>
		        			<div id="projectintroMsg" class="col-md-offset-2 col-md-4"></div>
		        		</div>
		        	</div>
		        	<hr>
		        	<div style="overflow:hidden">
		        		<button type="submit" class="btn btn-lg btn-primary form-btn col-md-2 col-md-offset-3">确定</button>
		        		<button type="button" class="btn btn-lg btn-default form-btn col-md-2 col-md-offset-1" data-dismiss="modal" onclick="cancel(this)">取消</button>
		        		<input type="reset" style="display:none" id="pojectCheckFormreset">
		        	</div>
		        </form>
	       </div>
	    </div>
	  </div>
		</div>

	<!-- 学历遮罩层 -->
	<div class="modal" id="educational">
	  <div class="modal-dialog modal-custom-class">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-remove"></i></button>
	        <h4 class="modal-title">添加教育背景</h4>
	      </div>
	      <div class="modal-body">
		        <form class="form-horizontal form-in-modal" id="EduCheckForm" action="javascript:addeducational()" role="form"  method="post">
		        	<div class="form-group">
		        		<div class="col-lg-12 col-md-12 fromDiv">
		        			<label class="control-label form-label col-md-2" for="schoolname">学校名称</label>
		        			<input class="col-md-9" type="text" id="schoolname" maxlength="50" name="schoolname" required>
		        		</div>
		        		<div class="col-md-offset-2 col-md-4 marginTop" id="schoolnameMsg"></div>
						<div class="col-lg-12 col-md-12 fromDiv">
							<label class="control-label form-label col-md-2" for="major">所学专业</label>
		        	<input class="col-md-9" type="text" id="major" name="major" maxlength="100" required>
						</div>
		        <div class="col-md-offset-2 col-md-4 marginTop" id="majorMsg"></div>
						<div class="col-lg-12 col-md-12 fromDiv">
							<label class="control-label form-label col-md-2" for="education">学历</label>
							<select class="form-control" name="education" id="education" required>
								<option value="1">大学专科</option>
								<option value="2">大学本科</option>
								<option value="3">硕士</option>
								<option value="4">博士</option>
								<option value="5">其他</option>
							</select>
						</div>
						<div class="col-lg-12 col-md-12 fromDiv">
							<label class="control-label form-label col-md-2" for="graduationyears">毕业时间</label>
							<select class="form-control" name="graduationyears" id="graduationyears" required>
								<option value="1">2018</option>
								<option value="2">2017</option>
								<option value="3">2016</option>
								<option value="4">2015</option>
								<option value="5">2014</option>
								<option value="6">2013</option>
								<option value="7">2012</option>
								<option value="8">2011</option>
								<option value="9">2010</option>
								<option value="10">2009</option>
								<option value="11">2008</option>
								<option value="12">2007</option>
								<option value="13">2006</option>
								<option value="14">2005</option>
								<option value="15">2004</option>
								<option value="16">2003</option>
								<option value="17">2002</option>
								<option value="18">2001</option>
								<option value="19">2000</option>
								<option value="20">1999</option>
								<option value="21">1998</option>
								<option value="22">1997</option>
								<option value="23">1996</option>
								<option value="24">1995</option>
								<option value="25">1994</option>
								<option value="26">1993</option>
								<option value="27">1992</option>
								<option value="28">1991</option>
								<option value="29">1990</option>
							</select>
						</div>
		        	</div>
		        	<hr>
		        	<div style="overflow:hidden">
		        		<button type="submit" class="btn btn-lg btn-primary form-btn col-md-2 col-md-offset-3">确定</button>
		        		<button type="button" class="btn btn-lg btn-default form-btn col-md-2 col-md-offset-1" data-dismiss="modal" onclick="cancel(this)">取消</button>
		        		<input type="reset" style="display:none" id="eduCheckFormreset">
		        	</div>
		        </form>
	       </div>
	    </div>
	  </div>
		</div>

  	<div class="container">
	      <div class="col-lg-2 col-md-2 userInfo-left-nav">
            <ul class="list-group userInfo-service" id="userinfoNav">
                <a class="header">个人中心</a>
                  <input type="hidden" id="tabId" value="navBaseInfo">
                  <input type="hidden" id="tabContentId" value="baseInfo">
                	<a class="list-group-item active" id="navBaseInfo" onclick="javascript:showTabContent(this);">基本信息</a>

                	<a class="list-group-item" id="navAuthInfo" onclick="javascript:showTabContent(this);">
                		认证信息
											<div id="reminder" class="reminder">
												<div id="reminder" class="reminder">
													<div class="reminder_before"></div>
		                			<div class="reminder_content">
		                				温馨提示：请您尽快完成认证，方便平台推荐合适您的项目
		                			</div>
		                			<div class="glyphicon glyphicon-remove reminder_close" onclick="msgHide()"></div>
		                		</div>
	                		</div>
	                		<script>
	                			window.addEventListener("load",function(){$("#reminder").css("width","460px")})
	                			setTimeout(function(){$("#reminder").css("width","0px")},30000)
	                		</script>
                	</a>
                <a class="list-group-item" id="publishTheProject" onclick="javascript:showTabContent(this);">发布的项目</a>
                <a class="list-group-item" id="JoinTheProject" onclick="javascript:showTabContent(this);">参与的项目</a>


                	<a class="list-group-item" id="canJoinTheProject" onclick="javascript:showTabContent(this);">推送的项目</a>
								<a class="list-group-item" id="ability" ng-click="showTabContent();" ng-model="ability">能力测评</a>
                <a class="list-group-item" id="navOptions" onclick="javascript:showTabContent(this);">设置</a>
            </ul>
  		  </div>

		  		<div id="baseInfo" class="col-lg-9 col-md-9 tab-form">
		     <form id="userInfoForm" class="form-horizontal" action="javascript:doSave()" role="form" method="post">
		     	<div class="form-header">
		       		<h3>完善您的基本信息</h3>
		       </div>
		       <fieldset>

		       <div class="col-md-12 phone">
		         <div class="col-md-3 col-md-offset-1">
		           <label class="control-label form-label" for="phoneNumber"><i class="form-required">*</i>手机号码:</label>
		         </div>
		         <div class="col-md-8">
		           <div class="col-lg-7 col-md-7">
		          	 <input type="text" name="phoneNumber" id="phoneNumber" value="" class="form-control form-input" required minlength="11" maxlength="11" isMobilePhoneNumber="true" phoneNumExisting="true"/>
		           </div>
		           <div id="vcodediv" class="col-lg-5 col-md-5">
		           	 <div id="vcodeSendDiv " style="display:none">
		           	 	<input type="button" id="sendVcodeBtn" class="btn btn-primary form-btn" value="发送验证码" onclick="javascript:sendSMS();" disabled="true"/>
		           	 </div>
		          	 <div id="vcodeVerfiedDiv" style="display:none">
		          	 	<i class="fa fa-2x fa-check-circle-o text-primary"></i>
		          	 	<p class="text-primary" style="display:inline-block;font-size:18px;font-weight: bold;">已验证</p>
		          	</div>
		           </div>
		         </div>
		       </div>

		       <div id="vcodeinputdiv" class="col-md-12" style="display:none;margin-bottom:20px">
		       	 <div class="col-md-3 col-md-offset-1">
		           <label class="control-label form-label" for="vcode"><i class="form-required">*</i>手机验证码：</label>
		         </div>
		          <div class="col-md-8">
		          	<div class="col-lg-7 col-md-7">
			           <input class="form-control form-input-small" type="text" name="vcode" id="vcode" value=""  required  maxlength="11"/>
		          	</div>
		         </div>
		       </div>

		       <div class="col-md-12 UserBaseinfo">
		       	 <div class="col-md-3 col-md-offset-1">
		           	<label class="control-label form-label" for="vcode"><i class="form-required">*</i>用户昵称:</label>
		       		<div id="userNameTip" style="display:none;color:red;font-size:12px;">(只能填写一次，请谨慎输入)
		        	</div>
		         </div>
		         <div class="col-md-8">
		         	<div class="col-md-7">
		           		<input type="text" class="form-control form-input" name="userName" id="userName" required minlength="2" maxlength="20" validUserName="true"></input>
		         	</div>
		         </div>
		       </div>

		       <div class="col-md-12" id="emailDiv">
		         <div class="col-md-3 col-md-offset-1">
		         	<label class="control-label form-label" for="email"><i class="form-required">*</i>E-mail:</label>
		         </div>
		         <div class="col-md-8">
		          	<div class="col-lg-7 col-md-7">
		           		<input type="email" name="email" id="email" class="form-control form-input" required minlength="3" maxlength="50" />
		         	</div>
		         	<div class="col-lg-5 col-md-5">
				    	<div id="emailActivationDiv" style="display:none;" >
		         	    	<input id="emailValidateBtn" type="button" class="btn btn-primary form-btn" value="发送验证码" disabled="true" onclick="javascript:doValidateEmail();" style="margin: 0px !important;"/>
						</div>
						<div id="emailVCodeVerfiedDiv" style="display:none">
	          	 			<i class="fa fa-2x fa-check-circle-o text-primary"></i>
	          	 			<p class="text-primary" style="display:inline;font-size:18px;font-weight: bold;">已验证</p>
		          		</div>
		         	</div>
		         </div>
		       </div>

		       <div id="emailVCodeDiv" class="col-md-12" style="display:none;border:solid 1px #ccc;padding:20px 0px;margin-bottom:20px">
		       	 <div  class="col-md-3 col-md-offset-1">
		           <label class="control-label form-label" for="emailVCode"><i class="form-required">*</i>邮箱验证码：</label>
		         </div>
		          <div class="col-md-8">
		          		<div class="col-lg-7 col-md-7">
				           <input style="padding-left: 50px;background: url(https://www.make8.com/img/email.png);background-position: 15px center;background-repeat: no-repeat;" class="form-control form-input-small" type="text" name="emailVCode" id="emailVCode" value=""  required  maxlength="11"/>
		          		</div>
		         </div>
		       </div>

		       <div class="col-md-12 qq">
		         	<div class="col-md-3 col-md-offset-1">
		           		<label class="control-label form-label" for="phoneNumber"><i class="form-required">*</i>QQ:</label>
		         	</div>
		         	<div class="col-md-8">
		           		<div class="col-lg-7 col-md-7">
		          	 		<input type="text" name="qqNumber" id="qqNumber" value="" class="form-control form-input" required digits="true"/>
		           		</div>
		          	</div>
		        </div>

		       <div class="col-md-12 weixin">
		         	<div class="col-md-3 col-md-offset-1">
		           		<label class="control-label form-label" for="phoneNumber"><i class="form-required weixinIconHidden">*</i>微信:</label>
		         	</div>
		         	<div class="col-md-8">
		           		<div class="col-lg-7 col-md-7">
		          	 		<input type="text" name="weixinNumber" id="weixinNumber" value="" class="form-control form-input"/>
		           		</div>
		          	</div>
		        </div>

		       <div><span id="vcodespan" style="display: none;"></span></div>

		       <div class="col-md-12 LocalArea">
		       		<div class="col-md-2 col-md-offset-1">
		         		<label class="control-label form-label" for="location"><i class="form-required">*</i>所在区域:</label>
		         	</div>
		         	<div class="col-md-8 col-md-offset-1">
		         		<div class="col-lg-3 col-md-3">
		         	 		<select class="form-control form-select" name="province" id="province" onchange="retriveCities();" required>
		         	 	</select>
		         		</div>
		         		<div class="col-lg-3 col-md-3">
		         	 		<select class="form-control form-select" name="city" id="city" required>
		         	 		</select>
		         		</div>
		         	</div>
		       </div>
     				<input type="hidden" value="" id="baseInfo-email"/>
     				<input type="hidden" value="" id="baseInfo-name"/>
     				<input type="hidden" value="15504638550" id="baseInfo-mobile"/>
     				<input type="hidden" value="0" id="baseInfo-provinceId"/>
     				<input type="hidden" value="0" id="baseInfo-regionId"/>
     				<input type="hidden" value="" id="baseInfo-bankAccount"/>
     				<input type="hidden" value="1" id="baseInfo-userType"/>
     				<input type="hidden" value="" id="baseInfo-qq"/>
     				<input type="hidden" value="" id="baseInfo-weixin"/>
			     <br>
		      	 <button type="submit"  class="btn button-style col-md-2 col-md-offset-5" style="margin-top:20px;">保存</button>

		        <br>
		       <div>
		       		<span class="text-left form-message-span" style="display:none" id="msgspan"></span>
		       </div>
		    </form>
		  </div>

<!--能力测评-->
			<div id="abilityContent" class="col-lg-9 col-md-9 tab-form" style="display: none;">
						<div class="col-md-12" style="margin-top:10px">
				 			<div class="col-md-12 titleDiv">能力测评</div>
				 		</div>
				 		<div class="col-md-12">
				 			<div class="col-md-12 abilityDivBackground">
				 				<div class="abilityDivBorder">
					 				<div class="col-xs-12 col-md-2">点击选择能力:</div>
					 				<div class="col-xs-12 col-md-10 " id="abilitySelect">
		  	  						<div class="col-md-offset-1 col-md-2 text-center skillsTests" aid="HTML/CSS" onclick="abilityBtnActive(this);clearCheckNotNull('abilitySelect')">HTML/CSS</div>
		  	  						<div class="col-md-offset-1 col-md-2 text-center skillsTests" aid="JavaScript" onclick="abilityBtnActive(this);clearCheckNotNull('abilitySelect')">JavaScript</div>
		  	  						<div class="col-md-offset-1 col-md-2 text-center skillsTests" aid="PHP" onclick="abilityBtnActive(this);clearCheckNotNull('abilitySelect')">PHP</div>
		  	  						<div class="col-md-offset-1 col-md-2 text-center skillsTests" aid="Java" onclick="abilityBtnActive(this);clearCheckNotNull('abilitySelect')">Java</div>
		  	  						<div class="col-md-offset-1 col-md-2 text-center skillsTests" aid="C语言" onclick="abilityBtnActive(this);clearCheckNotNull('abilitySelect')">C语言</div>
										<span class="col-md-10 ol-md-offset-1 warningDiv">请选择评测能力</span>
					 				</div>


					 				<div class="col-xs-12 col-md-2">选择难度:</div>
					 				<div class="col-xs-12 col-md-10 " id="testLevel">
					 						<div class="col-xs-offset-1 col-md-offset-1 col-xs-3 text-center col-md-2 skillsTests" lid="1" onclick="Level(this);clearCheckNotNull('testLevel')">初级</div>
					 						<div class="col-xs-offset-1 col-md-offset-1 col-xs-3 text-center col-md-2 skillsTests" lid="2" onclick="Level(this);clearCheckNotNull('testLevel')">中极</div>
					 						<div class="col-xs-offset-1 col-md-offset-1 col-xs-3 text-center col-md-2 skillsTests" lid="3" onclick="Level(this);clearCheckNotNull('testLevel')">高级</div>
					 						<span class="col-md-10 ol-md-offset-1 warningDiv">请选择评测难度</span>
					 				</div>
				 				</div>


				 				<div class="abilityDiv-warning">
				 						<div class="col-xs-12 col-md-offset-1 abilityDiv-warning-div"><p class="abilityDiv-warning-p">注意事项</p></div>
				 						<div class="col-xs-12 col-md-offset-1 abilityDiv-warning-padding">
				 							<p>1.请在PC端使用Chrome浏览器进行比试。</p>
				 							<p>2.为保证公平性,请诚信比试</p>
				 							<p>3.本次测试由e代测提供技术支持,有问题可发邮件到service@edaice.com或拨打电话0755-86615853.</p>
				 						</div>
				 						<div class="col-xs-12 col-md-offset-3 col-md-9 abilityDiv-warning-padding">
				 							<button class="btn btn-primary" id="startTestBtn" ng-click="createExam()">开始测评</button>
				 						</div>
				 				</div>
				 				<input type="hidden" value="" id="abilityInput" ng-model='abilityInput'/>
				 				<input type="hidden" value="" id="levelInput" ng-model='levelInput'/>
				 			</div>
				 		</div>

						<div class="col-md-12" style="margin-top:10px">
				 			<div class="col-md-12 titleDiv">历史成绩</div>
				 			<div class="col-md-12 historyDiv">
								<div class="col-md-12 histroyContentBackground">
									<div class="col-md-12 text-center histroyTitle">
										<div class="col-sm-4 col-md-4">试题名称</div>
										<div class="col-sm-3 col-md-3">开始时间</div>
										<div class="col-sm-3 col-md-3">结束时间</div>
										<div class="col-sm-2 col-md-2">成绩</div>
									</div>
									<div ng-repeat='listExamHistory in listData'  class="col-md-12 text-center histroyContent" ng-cloak>
										<div class="col-sm-4 col-md-4" ng-bind='listExamHistory.paperName'>JavaScript</div>
										<div class="col-sm-3 col-md-3" ng-bind='listExamHistory.startTime'>2016.3.31 9:00</div>
										<div class="col-sm-3 col-md-3" ng-bind='listExamHistory.endTime'>2016.3.31 10:00</div>
										<div class="col-sm-2 col-md-2" ng-bind='listExamHistory.score' ng-if='listExamHistory.status=="completing"'>90</div>
										<div class="col-sm-2 col-md-2" ng-bind='listExamHistory.status' ng-if='listExamHistory.status!="completing"'>starting</div>
									</div>
									<div class="col-md-12 text-center histroyContent" ng-cloak>
										<div class="col-sm-12 col-md-12" ng-bind='listDataMsg'></div>
									</div>
								</div>
							</div>
				 		</div>
			</div>

   			<input type="hidden" id="showAvaliableJoinProjectFinal" value="0">
			<div id="canJoinTheProjectContent" class="col-xs-12 col-md-9 tab-form" style="display:none;">
				 		<div class="col-md-12" style="margin-top:10px">
				 			<div class="col-md-12 titleDiv">推送的项目</div>
				 		</div>
						<div id="canJoinTheProjectItem"></div>
			</div>


			<div id="JoinTheProjectContent" class="col-xs-12 col-md-9 tab-form" style="display: none;">
				 		<div class="col-xs-11 col-md-11" style="margin-top:10px;padding: 0px;">
				 			<div class="col-xs-12 col-md-12 titleDiv">参与的项目</div>
				 		</div>
						<div id="JoinTheProjectItem">
						</div>
			</div>

			<div id="publishTheProjectContent" class="col-xs-12 col-md-9 tab-form" style="display: none;">
				 		<div class="col-xs-10" style="margin-top:10px;padding: 0px;">
				 			<div class="col-xs-12 titleDiv">发布的项目</div>
				 		</div>
				 		<div class="col-xs-2 text-right" style="margin-top: 10px;padding: 0px;">
				 			<a href="https://www.make8.com/home/request"><img src="https://www.make8.com/img/add.png" style="width:25px;height: 25px;"/></a>
				 		</div>
						<div id="publishTheProjectItem">
						</div>
			</div>

			<div id="navOptionsContent" class="col-lg-9 col-md-9 tab-form" style="display: none;">
				 <form action="javascript:changePassword()" id="changePasswordForm" role="form" method="post">
				 		<div class="form-group">
				 			<div class="col-md-12 titleDiv">修改密码</div>
				 		</div>
				 		<div class="col-md-12 form-group DivBackground">
				 				<div class="col-md-12 DivmarginTop">
				 					<div class="col-md-2 text-center">
				 						<label for="oldPassword">旧密码: </label>
				 					</div>
				 					<div class="col-md-8">
				 						<input class="form-control" type="password" id="oldPassword" name="oldPassword" required/>
				 					</div>
				 				</div>
				 				<div class="col-md-12"><div class="col-md-offset-2 col-md-8"  id="oldPasswordWarning" style="height: 0px;"></div></div>
				 				<div class="col-md-12 DivmarginTop">
				 					<div class="col-md-2 text-center">
				 						<label for="newPassword">新密码: </label>
				 					</div>
				 					<div class="col-md-8">
				 						<input class="form-control" type="password" id="newPassword" name="newPassword" rangelength="6,12" required/>
				 					</div>
				 				</div>
				 				<div class="col-md-12"><div class="col-md-offset-2 col-md-8"  id="newPasswordWarning" style="height: 0px;"></div></div>
				 				<div class="col-md-12 DivmarginTop">
				 					<div class="col-md-2 text-center">
				 						<label for="confirmPassword">重复新密码: </label>
				 					</div>
				 					<div class="col-md-8">
				 						<input class="form-control" type="password" id="confirmPassword" name="confirmPassword" required equalTo="#newPassword" />
				 					</div>
				 				</div>
				 				<div class="col-md-12"><div class="col-md-offset-2 col-md-8"  id="confirmPasswordWarning" style="height: 0px;"></div></div>
				 				<div class="col-md-offset-5 col-md-2 DivmarginTop">
				 					<button type="submit" class="btn btn-primary">保存</button>
				 				</div>
				 		</div>
				 </form>
				 <form action="" id="changePushForm" role="form" method="post">
				 		<div class="form-group">
				 			<div class="col-md-12 titleDiv">信息推送</div>
				 		</div>
				 		<div class="col-md-12 from-group DivBackground">
				 			<div class="col-md-12 text-center" style="background:#b8dfff;border:solid 1px #ccc;height:35px;line-height: 35px;">
				 					<p class="col-md-6">推送项目</p>
				 					<p class="col-md-6">电子邮件</p>
				 			</div>
				 			<div class="col-md-12 form-group text-center" style="background: white;border: solid 1px #ccc;border-top:none;height:35px;line-height: 35px;">
				 					<p class="col-md-6">新的开发任务</p>
				 					<p class="col-md-6">
				 						<input type="checkbox" name="Push" value="openPush"/>
				 					</p>
				 			</div>
				 			<div class="col-md-offset-5 col-md-2 DivmarginTop">
				 				<button type="button" class="btn btn-primary">保存</button>
				 			</div>
				 		</div>
				 </form>
			</div>

				 	  <div id="autheninfo" class="col-lg-9 col-md-9 tab-form" style="display:none;">
			  	<div>
			     <form id="atheninfoForm" class="form-horizontal" action="javascript:doAthenInfoSave()" role="form" method="post">
			       <fieldset>

			       	 <div class="form-group" id="userTypeChoosenDiv">
			      <div class="form-header">
			     			<h3 id="userinfoId"><i class="fa fa-paperclip"></i>&nbsp;码客帮欢迎不同的开发力量加入,请问您的类型是？</h3>
		        </div>
			            <div class="col-lg-10 col-md-11 col-md-offset-1">
			            	<div class="">
								<div class="col-md-5 thumbnail pORc act" id="personalBtn" name="servicerType" onclick="checkServiceType(this);">
									<img id="personalBtnimg" src="https://www.make8.com/img/user_active.png">
									<p>个人</p>
								</div>

								<div class="col-md-5 col-md-offset-1 thumbnail pORc unact" id="companyBtn" name="servicerType" onclick="checkServiceType(this);">
									<img id="companyBtnimg" src="https://www.make8.com/img/we.png">
									<p>公司</p>
								</div>
			            	</div>
			            	<div class="">
			        			<button type="button" class="btn button-style col-md-2 col-md-offset-9" onclick="nextTosecond()">下一步 ></button>
			            	</div>
						</div>
			       </div>

			       <!-- 个人认证第二步 -->
				       		<div class="form-group" id="personalSecond" style="display:none">
                     <!--<div class=" col-md-10 col-md-offset-1" id="userTypeRepDiv" style="display:none">
						<label class="control-label form-label">认证类型:</label>
						<span id="userTypeBadge" class="badge badge-success badge-md"></span>
					</div>-->
						<div class="form-header">
			     			<h3 id="userinfoId"><i class="fa fa-paperclip"></i>&nbsp;让我们了解您擅长的技能,为您推荐最合适的项目</h3>
		        </div>
					<div class=" col-md-10 col-md-offset-1 workstatus" id="workStatus">
						<label class="col-md-12"><i class="form-required">*</i>工作状态:</label>
						<div class="col-lg-10 col-md-11 col-md-offset-1">
							<label for="worker" class="col-md-4" onclick="labelActive(this);clearCheckNotNull('workStatus')">
								<div><div></div></div>
								<p>可兼职接活</p>
							</label>
							<label for="freelance" class="col-md-4" onclick="labelActive(this);clearCheckNotNull('workStatus')">
								<div><div></div></div>
								<p>自由职业者</p>
							</label>
							<label for="student" class="col-md-4" onclick="labelActive(this);clearCheckNotNull('workStatus')">
								<div><div></div></div>
								<p>在校学生</p>
							</label>
							<input type="radio" name="freelanceType" id="worker" value="0">
							<input type="radio" name="freelanceType" id="freelance" value="1">
							<input type="radio" name="freelanceType" id="student" value="2">
							<input type="hidden" id="freelanceTypeHidden" value="-1">
						</div>
						<span class="col-md-11 col-md-offset-1 warningDiv marginTop">请您选择工作状态</span>
					</div>



					<div class=" col-md-10 col-md-offset-1 canworktype" id="canWorkType">
						<label class="col-md-12"><i class="form-required">*</i>能胜任的工作类型:</label>
						<div class="col-lg-10 col-md-11 col-md-offset-1">

							<label for="WType1" class="col-md-4" onclick="labelcheckboxActive(this);clearCheckNotNull('canWorkType')">
								<div><img src="https://www.make8.com/img/checkboxchecked.png"></div>
								<p>WEB前端开发</p>
							</label>

							<input type="checkbox" name="cando" id="WType1" value="1">
							<label for="WType2" class="col-md-4" onclick="labelcheckboxActive(this);clearCheckNotNull('canWorkType')">
								<div><img src="https://www.make8.com/img/checkboxchecked.png"></div>
								<p>后端开发</p>
							</label>

							<input type="checkbox" name="cando" id="WType2" value="2">
							<label for="WType3" class="col-md-4" onclick="labelcheckboxActive(this);clearCheckNotNull('canWorkType')">
								<div><img src="https://www.make8.com/img/checkboxchecked.png"></div>
								<p>iOS开发</p>
							</label>

							<input type="checkbox" name="cando" id="WType3" value="3">
							<label for="WType4" class="col-md-4" onclick="labelcheckboxActive(this);clearCheckNotNull('canWorkType')">
								<div><img src="https://www.make8.com/img/checkboxchecked.png"></div>
								<p>Android开发</p>
							</label>

							<input type="checkbox" name="cando" id="WType4" value="4">
							<label for="WType5" class="col-md-4" onclick="labelcheckboxActive(this);clearCheckNotNull('canWorkType')">
								<div><img src="https://www.make8.com/img/checkboxchecked.png"></div>
								<p>UI设计</p>
							</label>

							<input type="checkbox" name="cando" id="WType5" value="5">
							<label for="WType6" class="col-md-4" onclick="labelcheckboxActive(this);clearCheckNotNull('canWorkType')">
								<div><img src="https://www.make8.com/img/checkboxchecked.png"></div>
								<p>H5应用</p>
							</label>

							<input type="checkbox" name="cando" id="WType6" value="6">
							<label for="WType7" class="col-md-4" onclick="labelcheckboxActive(this);clearCheckNotNull('canWorkType')">
								<div><img src="https://www.make8.com/img/checkboxchecked.png"></div>
								<p>微信开发</p>
							</label>

							<input type="checkbox" name="cando" id="WType7" value="7">
							<label for="WType8" class="col-md-4" onclick="labelcheckboxActive(this);clearCheckNotNull('canWorkType')">
								<div><img src="https://www.make8.com/img/checkboxchecked.png"></div>
								<p>产品设计</p>
							</label>

							<input type="checkbox" name="cando" id="WType8" value="8">
							<input type="hidden" id="nameCando" value="">
						</div>
						<span class="col-md-11 col-md-offset-1 warningDiv marginTop">请您选择能胜任的工作类型</span>
					</div>

					<div class=" col-md-10 col-md-offset-1 excelstechnologies"  id="ExcelsTechnologies">
						<label class="col-md-12"><i class="form-required">*</i>擅长的技术:</label>
						<div class="col-lg-10 col-md-11">
	  	  					<label for="ETechnologies1" class="col-md-2 col-md-offset-1">PHP</label>

	  	  					<input type="checkbox" name="mainAbility" value="1" id="ETechnologies1">
	  	  					<label for="ETechnologies2" class="col-md-2 col-md-offset-1">Java</label>

	  	  					<input type="checkbox" name="mainAbility" value="2" id="ETechnologies2">
	  	  					<label for="ETechnologies3" class="col-md-2 col-md-offset-1">Ruby</label>

	  	  					<input type="checkbox" name="mainAbility" value="3" id="ETechnologies3">
	  	  					<label for="ETechnologies4" class="col-md-2 col-md-offset-1">Python</label>

	  	  					<input type="checkbox" name="mainAbility" value="4" id="ETechnologies4">
	  	  					<label for="ETechnologies5" class="col-md-2 col-md-offset-1">Go</label>

	  	  					<input type="checkbox" name="mainAbility" value="5" id="ETechnologies5">
	  	  					<label for="ETechnologies6" class="col-md-2 col-md-offset-1">C/C++</label>

	  	  					<input type="checkbox" name="mainAbility" value="6" id="ETechnologies6">
	  	  					<label for="ETechnologies7" class="col-md-2 col-md-offset-1">Object-C</label>

	  	  					<input type="checkbox" name="mainAbility" value="7" id="ETechnologies7">
	  	  					<label for="ETechnologies8" class="col-md-2 col-md-offset-1">.NET</label>

	  	  					<input type="checkbox" name="mainAbility" value="8" id="ETechnologies8">
	  	  					<label for="ETechnologies9" class="col-md-2 col-md-offset-1">JavaScript</label>

	  	  					<input type="checkbox" name="mainAbility" value="9" id="ETechnologies9">
	  	  					<label for="ETechnologies10" class="col-md-2 col-md-offset-1">HTML/CSS</label>

	  	  					<input type="checkbox" name="mainAbility" value="10" id="ETechnologies10">
	  	  					<label for="ETechnologies11" class="col-md-2 col-md-offset-1">Photoshop</label>

	  	  					<input type="checkbox" name="mainAbility" value="11" id="ETechnologies11">
	  	  					<label for="ETechnologies12" class="col-md-2 col-md-offset-1">AI</label>

	  	  					<input type="checkbox" name="mainAbility" value="12" id="ETechnologies12">
							<input type="text" name="otherMainAbility" id="ActionScript" class="col-md-11 col-md-offset-1" placeholder="其他技术 :" onkeyup="clearCheckNotNull('ExcelsTechnologies')">
							<input type="hidden" id="mainAbilityCheckBox" value="" />
							<input type="hidden" id="mainAbilityT" value="" />
						</div>
						<span class="col-md-11 col-md-offset-1 warningDiv marginTop">请您选择擅长的技术</span>
					</div>

					<div id="addWorkContent" class=" col-md-10 col-md-offset-1 workexperience">
						<label class="col-md-6">工作经验:</label>
							<span id="addWork" href="#addworkexperience" class="col-md-6 col-md-offset-5" data-toggle="modal">
								<img src="https://www.make8.com/img/add.png">
								<p>添加工作经验</p>
							</span>
					</div>

					<div id="addProjectContent" class=" col-md-10 col-md-offset-1 projectworks">
						<label class="col-md-6"><i class="form-required">*</i>项目作品:</label>
							<span id="addProject" href="#addprojectworks" onclick="clearCheckNotNull('addProjectContent')" class="col-md-6 col-md-offset-5" data-toggle="modal">
								<img src="https://www.make8.com/img/add.png">
								<p>项目作品</p>
							</span>
								<span class="col-md-12 warningDiv marginTop">请填写项目作品</span>
					</div>

					<div id="addEduContent" class=" col-md-10 col-md-offset-1 educational">
						<label class="col-md-6"><i class="form-required">*</i>教育背景:</label>
								<span id="addEdu" href="#educational" onclick="clearCheckNotNull('addEduContent')" class="col-md-6 col-md-offset-5" data-toggle="modal">
									<img src="https://www.make8.com/img/add.png">
									<p>学历</p>
								</span>
						<span class="col-md-12 warningDiv marginTop">请填写学历</span>
					</div>

					<div class=" col-md-10 col-md-offset-1 projectworks">
						<label class="col-md-6"><i class="form-required" style="visibility: hidden;">*</i>个人简介:</label>
						<div class="col-md-12">
							<textarea id="profile" maxlength="1000" class="form-control"></textarea>
						</div>
					</div>

						<button onclick="personalToSecondHtml2()" type="button" class="btn button-style col-md-2 col-md-offset-1">< 上一步</button>
		        		<button onclick="nextTothird()" type="button" class="btn button-style col-md-2 col-md-offset-6">下一步 ></button>
				 </div>

					<!-- 公司认证第二步 -->
							<div class="form-group" id="companySecond" style="display:none">
						<div class="form-header">
			     			<h3 id="userinfoId"><i class="fa fa-paperclip"></i>&nbsp;让我们了解贵公司的情况,以便为您推荐最合适的项目</h3>
		        </div>
						<div class=" col-md-10 col-md-offset-1 workstatus" id="campanySize">
							<label class="col-md-12"><i class="form-required">*</i>公司规模:</label>
							<div class="col-lg-10 col-md-11 col-md-offset-1">

								<label for="10" class="col-md-4" onclick="labelN0fCActive(this);clearCheckNotNull('campanySize')">
									<div><div></div></div>
									<p>小于10人</p>
								</label>
								<label for="30" class="col-md-4" onclick="labelN0fCActive(this);clearCheckNotNull('campanySize')">
									<div><div></div></div>
									<p>10~30人</p>
								</label>
								<label for="100" class="col-md-4" onclick="labelN0fCActive(this);clearCheckNotNull('campanySize')">
									<div><div></div></div>
									<p>31~100人</p>
								</label>
								<label for="other" class="col-md-4" onclick="labelN0fCActive(this);clearCheckNotNull('campanySize')">
									<div><div></div></div>
									<p>大于100人</p>
								</label>
								<input type="radio" name="theNumberOf" id="10" value="1">
								<input type="radio" name="theNumberOf" id="30" value="2">
								<input type="radio" name="theNumberOf" id="100" value="3">
								<input type="radio" name="theNumberOf" id="other" value="4">
								<input type="hidden" value="" id="theNumberOfHidden">
							</div>
							<span class="col-md-11 col-md-offset-1 warningDiv marginTop">请选择贵公司的规模</span>
						</div>

						<div class=" col-md-10 col-md-offset-1 companycanworktype" id="companyCanWorkType">
							<label class="col-md-12"><i class="form-required">*</i>能胜任的工作类型:</label>
							<div class="col-lg-10 col-md-11 col-md-offset-1">
									<label for="cCT1" class="col-md-4" onclick="labelcheckboxActive(this);clearCheckNotNull('companyCanWorkType')">
										<div><img src="https://www.make8.com/img/checkboxchecked.png"></div>
										<p>WEB前端开发</p>
									</label>

									<input type="checkbox" name="companyworktype" id="cCT1" value="1">
									<label for="cCT2" class="col-md-4" onclick="labelcheckboxActive(this);clearCheckNotNull('companyCanWorkType')">
										<div><img src="https://www.make8.com/img/checkboxchecked.png"></div>
										<p>后端开发</p>
									</label>

									<input type="checkbox" name="companyworktype" id="cCT2" value="2">
									<label for="cCT3" class="col-md-4" onclick="labelcheckboxActive(this);clearCheckNotNull('companyCanWorkType')">
										<div><img src="https://www.make8.com/img/checkboxchecked.png"></div>
										<p>iOS开发</p>
									</label>

									<input type="checkbox" name="companyworktype" id="cCT3" value="3">
									<label for="cCT4" class="col-md-4" onclick="labelcheckboxActive(this);clearCheckNotNull('companyCanWorkType')">
										<div><img src="https://www.make8.com/img/checkboxchecked.png"></div>
										<p>Android开发</p>
									</label>

									<input type="checkbox" name="companyworktype" id="cCT4" value="4">
									<label for="cCT5" class="col-md-4" onclick="labelcheckboxActive(this);clearCheckNotNull('companyCanWorkType')">
										<div><img src="https://www.make8.com/img/checkboxchecked.png"></div>
										<p>UI设计</p>
									</label>

									<input type="checkbox" name="companyworktype" id="cCT5" value="5">
									<label for="cCT6" class="col-md-4" onclick="labelcheckboxActive(this);clearCheckNotNull('companyCanWorkType')">
										<div><img src="https://www.make8.com/img/checkboxchecked.png"></div>
										<p>H5应用</p>
									</label>

									<input type="checkbox" name="companyworktype" id="cCT6" value="6">
									<label for="cCT7" class="col-md-4" onclick="labelcheckboxActive(this);clearCheckNotNull('companyCanWorkType')">
										<div><img src="https://www.make8.com/img/checkboxchecked.png"></div>
										<p>微信开发</p>
									</label>

									<input type="checkbox" name="companyworktype" id="cCT7" value="7">
									<label for="cCT8" class="col-md-4" onclick="labelcheckboxActive(this);clearCheckNotNull('companyCanWorkType')">
										<div><img src="https://www.make8.com/img/checkboxchecked.png"></div>
										<p>产品设计</p>
									</label>

									<input type="checkbox" name="companyworktype" id="cCT8" value="8">
							<input type="hidden" value="" id="companyworktypeHidden">
							</div>
							<span class="col-md-11 col-md-offset-1 warningDiv marginTop">请选择贵公司能胜任的工作类型</span>
						</div>

						<div class=" col-md-10 col-md-offset-1 companyexcelstechnologies" id="companyEtechnologies">
							<label class="col-md-12"><i class="form-required">*</i>擅长的技术:</label>
							<div class="col-lg-10 col-md-11">
								<label for="cET1" class="col-md-2 col-md-offset-1">PHP</label>

								<input type="checkbox" name="companytechnology" value="1" id="cET1">
								<label for="cET2" class="col-md-2 col-md-offset-1">Java</label>

								<input type="checkbox" name="companytechnology" value="2" id="cET2">
								<label for="cET3" class="col-md-2 col-md-offset-1">Ruby</label>

								<input type="checkbox" name="companytechnology" value="3" id="cET3">
								<label for="cET4" class="col-md-2 col-md-offset-1">Python</label>

								<input type="checkbox" name="companytechnology" value="4" id="cET4">
								<label for="cET5" class="col-md-2 col-md-offset-1">Go</label>

								<input type="checkbox" name="companytechnology" value="5" id="cET5">
								<label for="cET6" class="col-md-2 col-md-offset-1">C/C++</label>

								<input type="checkbox" name="companytechnology" value="6" id="cET6">
								<label for="cET7" class="col-md-2 col-md-offset-1">Object-C</label>

								<input type="checkbox" name="companytechnology" value="7" id="cET7">
								<label for="cET8" class="col-md-2 col-md-offset-1">.NET</label>

								<input type="checkbox" name="companytechnology" value="8" id="cET8">
								<label for="cET9" class="col-md-2 col-md-offset-1">JavaScript</label>

								<input type="checkbox" name="companytechnology" value="9" id="cET9">
								<label for="cET10" class="col-md-2 col-md-offset-1">HTML/CSS</label>

								<input type="checkbox" name="companytechnology" value="10" id="cET10">
								<label for="cET11" class="col-md-2 col-md-offset-1">Photoshop</label>

								<input type="checkbox" name="companytechnology" value="11" id="cET11">
								<label for="cET12" class="col-md-2 col-md-offset-1">AI</label>

								<input type="checkbox" name="companytechnology" value="12" id="cET12">
								<input type="text" id="companytechnology" class="col-md-11 col-md-offset-1" onkeyup="clearCheckNotNull('companyEtechnologies')" placeholder="其他技术" >
									<input type="hidden" id="companytechnologyCheckbox" value=""/>
									<input type="hidden" id="companytechnologyText" value=""/>
							</div>
							<span class="col-md-11 col-md-offset-1 warningDiv marginTop">请选择或填写贵公司擅长的技术</span>
						</div>

						<div class=" col-md-10 col-md-offset-1 producttype" id="productType">
							<label class="col-md-12" style="padding:2% 0px"><i class="form-required">*</i>产品类型:</label>
							<div class="col-lg-11 col-md-12">
									<label for="CPT1" class="col-md-5 col-md-offset-1">电子商务(淘宝,京东)</label>

									<input type="checkbox" name="companyProductType" value="1" id="CPT1">
									<label for="CPT2" class="col-md-5 col-md-offset-1">信息平台(58同城,大众点评)</label>

									<input type="checkbox" name="companyProductType" value="2" id="CPT2">
									<label for="CPT3" class="col-md-5 col-md-offset-1">生活服务(美团,饿了么)</label>

									<input type="checkbox" name="companyProductType" value="3" id="CPT3">
									<label for="CPT4" class="col-md-5 col-md-offset-1">互联网金融(陆金所,人人投)</label>

									<input type="checkbox" name="companyProductType" value="4" id="CPT4">
									<label for="CPT5" class="col-md-5 col-md-offset-1">在线教育/在线视频(优酷,北风网)</label>

									<input type="checkbox" name="companyProductType" value="5" id="CPT5">
									<label for="CPT6" class="col-md-5 col-md-offset-1">社区/论坛(天涯,豆瓣)</label>

									<input type="checkbox" name="companyProductType" value="6" id="CPT6">
									<label for="CPT7" class="col-md-5 col-md-offset-1">综合门户(新浪,搜狐)</label>

									<input type="checkbox" name="companyProductType" value="7" id="CPT7">
									<label for="CPT8" class="col-md-5 col-md-offset-1">OTA/在线旅游(去哪,携程)</label>

									<input type="checkbox" name="companyProductType" value="8" id="CPT8">
									<label for="CPT9" class="col-md-5 col-md-offset-1">在线音乐(虾米,网易云音乐)</label>

									<input type="checkbox" name="companyProductType" value="9" id="CPT9">
									<label for="CPT10" class="col-md-5 col-md-offset-1">垂直媒体(汽车之家,和讯)</label>

									<input type="checkbox" name="companyProductType" value="10" id="CPT10">
									<label for="CPT11" class="col-md-5 col-md-offset-1">即时通讯(微信,陌陌)</label>

									<input type="checkbox" name="companyProductType" value="11" id="CPT11">
									<label for="CPT12" class="col-md-5 col-md-offset-1">企业管理系统(用友,明道)</label>

									<input type="checkbox" name="companyProductType" value="12" id="CPT12">
									<label for="CPT13" class="col-md-5 col-md-offset-1">互联网医疗（春雨医生）</label>

									<input type="checkbox" name="companyProductType" value="13" id="CPT13">
								<input type="text" id="companyProductType" class="col-md-11 col-md-offset-1" onkeyup="clearCheckNotNull('productType')" placeholder="其他产品类型">
								<input type="hidden" value="" id="companyProductTypecheckbox"/>
								<input type="hidden" id="companyProductTypetext" value="" />
							</div>
							<span class="col-md-11 col-md-offset-1 warningDiv" style="margin-top:-15px">请选择贵公司的产品类型</span>
						</div>

						<div class=" col-md-10 col-md-offset-1 companyProjectExperience" id="addCPE">
							<label class="col-md-6"><i class="form-required">*</i>经典案例:</label>
													<span id="addCProject" href="#addCompanyProjectExperience" onclick="clearCheckNotNull('addCPE')" class="col-md-6 col-md-offset-5" data-toggle="modal">
														<img src="https://www.make8.com/img/add.png">
														<p>项目经验</p>
													</span>
											<span class="col-md-12 warningDiv marginTop">请添加贵公司完成的经典案例</span>
						</div>

						<div class=" col-md-10 col-md-offset-1 companyIntro" id="addCI">
							<label class="col-md-12"><i class="form-required">*</i>公司简介</label>
							<div class="col-md-12" style="padding:0 0 2% 0">
								<textarea class="col-md-12 addCIntro" onkeyup="clearCheckNotNull('addCI')" name="addCIntro" id="addCIntro" cols="30" s="10"></textarea>
							</div>
							<input type="hidden" id="addCIntroHidden" value="">
							<span class="col-md-12 warningDiv marginTop">请简易对贵公司做一个介绍</span>
						</div>

						<div class="">
									<button type="button" class="btn button-style col-md-2 col-md-offset-1" onclick="LastCompany()">< 上一步 </button>
			        		<button type="button" class="btn button-style col-md-2 col-md-offset-6" onclick="nextCompanyThird()">下一步 ></button>
			            </div>
					</div>

						<!--简历类型-->
							<input type="hidden" id="isresume" value="no"/>

						<!--个人认证(简历上传)-->
							<div id="is-resume" style="display: none;">
						<div class="form-header">
			     			<!--<h3 id="userinfoId"><i class="fa fa-paperclip"></i>&nbsp;码客帮欢迎您完善自己的个人信息</h3>-->
			     			<h3 id="userinfoId"><i class="fa fa-paperclip"></i>&nbsp;请选择您要认证的方式</h3>
						</div>
			       		<div class="col-md-12 resume-no-div resume-margin-bottom resume-active"  onclick="uploadResume(this)" id="resume-no">
			       		<div class="resume-title">
			       			<div style="margin-top: 50px;">
				       			<div class="col-xs-2 col-md-1">
												<img src="https://www.make8.com/img/resume-yes.png"/>
				       			</div>
				       			<div class="col-xs-10 col-md-10">
				       						<p class="resume-font">方式一：选择手工录入认证信息，点击“下一步”继续</p>
				       			</div>
			       			</div>
			       		</div>
			       	</div>

							<div class="col-md-12 resume-yes-div" id="resume-yes" onclick="uploadResume(this)">
			      			<div class="resume-title div-overflow resume-margin-bottom">
			       				<div class="col-xs-2 col-md-1">
			       						<img src="https://www.make8.com/img/resume-no.png"/>
			       				</div>
			       				<div class="col-xs-10 col-md-10">
			       						<p class="resume-font">方式二：上传简历或者填写简历链接进行认证，点击“下一步”继续</p>
			       				</div>
			       			</div>

			       			<div class="resume-file-height">
					       		<div class="col-md-offset-1 col-md-10">
						          <input onfocus="resumeFocus()" name="resume" id="resume" class="file" type="file" placeholder="文件格式为DOC或者PDF,文件大小不超过5M"></input>
			       				</div>
			       				<div class="col-md-offset-1 col-md-10" style="padding-bottom:5px;font-weight: 100;">上传文档支持5M以内的doc、pdf、zip格式</div>
		       				  <div class="col-md-offset-1 col-md-10">
		       				  		<span id="resumeWaring" class="resume-message"></span>
						         	 	<span id="fileUploadMsg" class="error-message"></span>
						         	 	<span id="fileUploadErrMsg" class="error-message"></span>
						        </div>
			       			</div>

			       			<div class="col-md-offset-1 col-md-10 resume-margin-bottom">
			       				<p class="resume-p-font">或者输入您的简历链接</p>
			       			</div>
			       			<div class="col-md-offset-1 col-md-10 resume-margin-bottom">
			       					<input onfocus="resumeFocus()" class="form-control" type="text" name="resume-url" id="resume-url" placeholder="http://www.make8.com"/>
			       			</div>
			       	</div>



			       	<div class="col-md-12 resume-padding">
			       		<div class="col-xs-6 col-md-6 resume-padding">
							<input class="btn col-md-4 btn-primary" type="button" onclick="resumeBack()" value="< 上一步"/>
			       		</div>
			       		<div class="col-xs-6 col-md-6 resume-padding text-right">
			       				<input class="btn col-md-offset-8 col-md-4 btn-primary" type="button" onclick="resumeNext()" value="下一步 >"/>
			       		</div>
			       	</div>

			      </div>

			       <!-- 个人身份证验证信息 -->
			      	<div id="servicerPersonalDiv" style="display:none;">
			      <div class="form-header">
			     			<h3 id="userinfoId"><i class="fa fa-paperclip"></i>&nbsp;为了您的信用信息,请进行身份认证</h3>
		        </div>
			      	<div class=" col-md-10 col-md-offset-1" id="realNameDiv">
				      	<div class="form-group col-lg-10 col-md-10 col-md-offset-2">
				       	 	<div class="col-lg-4 col-md-3 col-xs-12">
				           		<label class="control-label form-label" for="realName"><i class="form-required">*</i>真实姓名：</label>
				         	</div>
				         	<div class="col-lg-6 col-md-7 col-xs-12">
				           		<input class="form-control form-input" onkeyup="clearCheckNotNull('realNameDiv')" type="text" name="realName" id="realName" value="" minlength="2" maxlength="50"></input>
				         	</div>
			        	</div>
			        	<span class="col-md-12 warningDiv marginTop">请填写真实姓名</span>
			      	</div>

			        <div class=" col-md-10 col-md-offset-1" id="idCardDiv">
			        	<div class="form-group col-lg-10 col-md-10 col-md-offset-1">
				       	 	<div class="col-lg-4 col-md-3 col-xs-12">
				           		<label class="control-label form-label" for="idCardNum"><i class="form-required">*</i>身份证号码：</label>
				         	</div>
				         	<div class="col-lg-6 col-md-7 col-xs-12">
				         			<input class="form-control form-input" onkeyup="clearCheckNotNull('idCardDiv')" type="text" name="idCardNum" id="idCardNum" value=""></input>
				         	</div>
			        	</div>
				      	<span class="col-md-12 warningDiv marginTop">不存在该身份证</span>
			        </div>

			      	<div class=" col-md-10 col-md-offset-1" id="realNameDiv">
				      	<div class="form-group col-lg-10 col-md-10 col-md-offset-2">
				       	 	<div class="col-lg-4 col-md-3 col-xs-12">
				           		<label class="control-label form-label" for="realName"><i class="form-required">*</i>支付宝账号：</label>
				         	</div>
				         	<div class="col-lg-6 col-md-7 col-xs-12">
				         			<input class="form-control form-input" type="text" name="payAccount" id="payAccount" value=""></input>
				         	</div>
			        	</div>
			        	<span class="col-md-12 warningDiv marginTop" style="display:block;"id="payAccountErr"></span>
			      	</div>

					<div class=" col-md-10 col-md-offset-1" style="border:solid 1px #ccc">
			         	<div class="form-group col-md-12">
				       	 	<div class="col-md-3">
				           		<label class="control-label form-label" for="idCardPic"><i class="form-required">*</i>身份证照片</label>
				         	</div>
											<div class="col-lg-12 col-md-12">
						            	<input id="idCardPic" name="idCarPic" class="file" type="file"></input>
						         	</div>
						         	<div class="col-lg-12 col-md-12" >
						         	 	<span id="idCardPicMsg" class="error-message"></span>
						         	</div>
						         	<div class="col-lg-11 col-md-11 col-sm-12 col-xs-12">
						         		<p>请使用真实有效的身份证或护照按下图示例拍照，需确保证件内容及脸部清晰,上传图片支持2M以内的PNG、JPG、GIF格式;Mac OS系统请使用新版Firefox浏览器上传，也可联系码客帮客服协助上传</p>
			                                                 查看示例：
			                			<img class="img-responsive" style="border:1px solid #E2E2E2;"src="https://www.make8.com/img/idcardshow.png"></img>
						         	</div>

			        	</div>
					</div>

				<!-- 信息保存 -->
							<button type="button" onclick="statusThirdToSecond()" class="btn button-style col-md-2 col-md-offset-1">< 上一步</button>

			     	<button type="submit" class="btn button-style col-md-2 col-md-offset-6">保存</button>
			      </div>

			     <!-- 公司认证 -->
			     	<div id="servicerCompanyDiv" style="display:none">
			     	<div class="form-header">
			     			<h3 id="userinfoId"><i class="fa fa-paperclip"></i>&nbsp;为了贵公司的信用信息,请进行公司认证</h3>
		        </div>
			     	<div class=" col-md-10 col-md-offset-1">
 						<div class="form-group " id="checkCompanyName">
			     	    	<div class="col-lg-3 col-md-4 col-md-offset-1">
				         		<label class="control-label form-label" for="compName"><i class="form-required">*</i>公司名称：</label>
				         		<br />
				         	</div>
				         	<div class="col-lg-6 col-md-7">
				           		<input class="form-control form-input" onkeyup="clearCheckNotNull('checkCompanyName')" value="" type="text" name="compName" id="compName"></input>
				         	</div>
				         	<span class="col-md-offset-1 col-md-11 warningDiv marginTopL">请填写公司名称</span>
			        	</div>

			        	<div class="form-group" id="checkCompanyAddr">
				       	 	<div class="col-lg-3 col-md-4 col-md-offset-1" >
				           		<label class="control-label form-label" for="compAddr"><i class="form-required">*</i>公司地址：</label>
				         	</div>
				         	<div class="col-lg-6 col-md-7">
				           		<input class="form-control form-input" onkeyup="clearCheckNotNull('checkCompanyAddr')" value="" type="text" name="compAddr" id="compAddr"></input>
				         	</div>
				         	<span class="col-md-offset-1 col-md-11 warningDiv marginTopL">请填写公司地址</span>
			        	</div>

			        	<div class="form-group"  id="checkCompanyUrl">
				       	 	<div class="col-lg-3 col-md-4 col-md-offset-1">
				           		<label class="control-label form-label" for="compUrl"><i class="form-required">*</i>公司网站：</label>
				         	</div>
				         	<div class="col-lg-6 col-md-7">
				           		<input class="form-control form-input" onkeyup="clearCheckNotNull('checkCompanyUrl')" value="" type="text" name="compUrl" id="compUrl"></input>
				         	</div>
				         	<span class="col-md-offset-1 col-md-11 warningDiv marginTopL">请填写公司网站</span>
			        	</div>
			     	</div>

					<div class=" col-md-10 col-md-offset-1">
						<div class="form-group" id="checkLegalPersons">
					       	<div class="col-lg-3 col-md-4 col-md-offset-1">
					           	<label class="control-label form-label" for="repName"><i class="form-required">*</i>法人代表：</label>
					        </div>
					        <div class="col-lg-6 col-md-7">
					        		<input class="form-control form-input" onkeyup="clearCheckNotNull('checkLegalPersons')" maxlength="20" value="" type="text" name="repName" id="repName" placeholder="请填写公司的法人代表姓名"></input>
					        </div>
					        <span class="col-md-offset-1 col-md-11 warningDiv marginTopL">请填写法人代表</span>
					    </div>

					    <div class="form-group"  id="checkCompanyTel">
					       	 <div class="col-lg-3 col-md-4 col-md-offset-1">
					           <label class="control-label form-label" for="compPhoneNum"><i class="form-required" style="visibility: hidden;">*</i>公司电话：</label>
					         </div>
					         <div class="col-lg-6 col-md-7">
					           <input class="form-control form-input" value="" type="text" name="compPhoneNum" id="compPhoneNum" placeholder="区号-电话号码（0755-88888888）"></input>
					         </div>
					    </div>
					</div>

					<div class=" col-md-10 col-md-offset-1" id="realNameDiv">
		      	<div class="form-group">
		       	 	<div class="col-lg-3 col-md-4 col-md-offset-1">
		           		<label class="control-label form-label" for="accountNum"><i class="form-required">*</i>支付宝账号：</label>
		         	</div>
		         	<div class="col-lg-6 col-md-7">
		         			<input class="form-control form-input" type="text" name="payAccount2" id="payAccount2" value=""></input>
		         	</div>
	        	</div>
	        	<span class="col-lg-3 col-md-4 col-md-offset-1 warningDiv marginTop" style="display:block;"id="payAccountErr2"></span>
	      	</div>

					<div class=" col-md-10 col-md-offset-1">
			      		<div class="form-group"  id="checkCompanyNum">
				       		<div class="col-lg-3 col-md-4 col-md-offset-1">
				           		<label class="control-label form-label" for="blNum"><i class="form-required">*</i>营业执照号：</label>
				        	</div>
				       		<div class="col-lg-6 col-md-7 col-md-offset-1">
				       			<input class="form-control form-input-left-offset" onkeyup="clearCheckNotNull('checkCompanyNum')" value="" type="text" name="blNum" id="blNum" placeholder="1-20位字符" maxlength="20"></input>
				        	</div>
				        	<span class="col-md-offset-1 col-md-11 warningDiv marginTopL">请填写营业执照号</span>
			       		</div>

			      		<div class="form-group">
			       	 		<div class="col-lg-12 col-md-11 col-md-offset-1">
			           			<label class="control-label form-label" for="blPic"><i class="form-required">*</i>营业执照：</label>
			         		</div>
					       			<div class="col-lg-10 col-md-10  col-md-offset-1">
					           			<input id="blPic" name="blPic" class="file" type="file"></input>
					         		</div>
					         		<div class="col-lg-12 col-md-11  col-md-offset-1" >
						         	 	<span id="blPicMsg" class="error-message"></span>
						       		</div>
					         		<div class="col-lg-11 col-md-11  col-md-offset-1">
					         	 		<p>将<font color="red">通过年检</font>的营业执照原件或盖章的复印件扫描、拍照后上传，文件支持5M以内的PNG、JPG、GIF格式;Mac OS系统请使用新版Firefox浏览器上传，也可联系码客帮客服协助上传</p>
					         		</div>
			     		</div>
					</div>
							<button type="button" onclick="companythirdToSecond()" class="btn button-style col-md-2 col-md-offset-1">< 上一步</button>

							<button type="submit" class="btn button-style col-md-2 col-md-offset-6">保存</button>
			   </div>

			   </fieldset>

	       <div>
	       		<span class="text-left form-message-span" style="display:none" id="athenmsgspan"></span>
	       </div>
			    </form>
			    </div>
			  </div>
		  </div>

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
   	<input type="hidden" id="topurl" value="https://www.make8.com/"/>
   	<input type="hidden" id="reload" value="1"/>
   	<input type="hidden" id="IdentifyStep" value="1"/>
   	<div id="userInfoBase" style="display: none;"></div>
   </div>

		  <script type="text/javascript" src="https://www.make8.com/js/home/userinfo.js?v=201608241757"></script>
      <!--CNZZ CODE-->
      <div style="display:none;"><script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1257531169'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/z_stat.php%3Fid%3D1257531169' type='text/javascript'%3E%3C/script%3E"));</script></div>
     <!--END OF CNZZ CODE-->
  </body>
</html>
