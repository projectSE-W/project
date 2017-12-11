<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<!DOCTYPE html>
<html lang="zh-CN" ng-app="handleApp" ng-Controller="handleController">

<head>
	<title>项目管理 - 码客帮 - 让靠谱的工程师为你开发 | 互联网软件众包平台</title>
		
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

	
	<link href="https://www.make8.com/thirdparty/countdown/css/jquery.countdown.css?v=201608241757" rel="stylesheet">
    <link href="https://www.make8.com/thirdparty/fileinput/css/fileinput.min.css?v=201608241757"  rel="stylesheet" type="text/css">
    <link href="https://www.make8.com/thirdparty/datetimepicker/css/bootstrap-datetimepicker.css?v=201608241757" rel="stylesheet">

    

	<link rel="stylesheet" href="https://www.make8.com/css/home/request_handle.css?v=201608241757">
	</head>

<body>
	<!--header-->
<div class="container">
<nav id="nav">
	<div class="container">
		<h1>
			<a href="/">
				<img src="https://static.make8.com/img/v2/logo_black.png">
			</a>
		</h1>
		<div class="menu" onclick="dropDownMenu()"><img src="https://static.make8.com/img/v2/menu.png"/></div>
		<ul class="nav-ul">
				 <input type="hidden" id="isLogged" value="true" />


			<li><a href="/">首页</a><div></div></li>
			<li class="newDiv"><a href="/public/evaluate">项目估价</a><div></div></li>
			<li><a href="/home/request">发布需求</a><div></div></li>
			<li><a href="/market">项目市场</a><div></div></li>
			<li><a href="/home/userinfo">码客认证</a><div></div></li>
			<!--<li><a href="/public/comp_list">服务商库</a><div></div></li>-->
			<li><a href="http://news.make8.com/">码客新闻</a><div></div></li>
			<li><a href="/about/aboutus">关于我们</a><div></div></li>
			<li>
				<ul class="use">
					<li onclick="navLogin(this)">
						<i title="">15504638550</i>
						
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
   </ul>
  </div>
</nav>
</div>
	<!--end of header-->

	<input type='hidden' id='projectId' value='620' />
	<input type="hidden" id="projectStatus" value='-1'/>
	<input type='hidden' id='accessType' value='0' />
	<input type="hidden" id="currentLoginUserId" value='13572'/>
	<input type="hidden" id="progressFeedbackHidden" value=""/>

<!-- 进展反馈 -->
	<div class="modal" id="progressFeedback">
	  <div class="modal_plan">
	    <div class="modal-content">
	      <div class="modal_title chooseRoleFunctionTitle">
	       	<div class="col-md-6 col-sm-6 col-xs-6">
	      		<img src="https://static.make8.com/img/Feedback_icon.png" style="width: 25px;height: 25px;" alt="" />
	      		<span>进展反馈</span>
	      	</div>
	      	<div class="col-md-6 col-sm-6 col-xs-6 text-right">
	      		<img data-dismiss="modal" style="cursor: pointer;" src="https://static.make8.com/img/project_functions_cancle.png" alt="" />
	      	</div>
	      </div>
	      <div class="modal_body_functions">
		        <form action="javascript:createProgressFeedback()" id="progressFeedbackForm">
		        	<input type='hidden' id='stepId' value=''/>
		        	<div class="col-xs-12 col-md-12 col-sm-12">
			        	<div class="col-md-12 col-sm-12 col-xs-12 padding-right">
			        		<div class="col-md-12 col-sm-12 col-xs-12 padding" style="margin:15px auto;"><span style="color: red;">*</span>进展反馈(至少10个字)</div>
			        		<div class="col-md-12 col-sm-12 col-xs-12 padding">
			        			<textarea class="form-control plan_textarea" id='monitorDesc' minlength="10" required></textarea>
			        		</div>
			        	</div>

						<!--header-->
		            	<div class="col-md-12 col-sm-12 col-xs-12" style="margin:15px auto;">附件</div>
		            	<div class='col-md-12 col-xs-12 col-sm-12 padding-right'>
		            		<input id="fileselect-monitor" name="pic" class="picselect file" type="file"></input>
		            	</div>
		            	<div class='col-md-12 fileupload-info-box'>
							<div class="col-md-10 project-handle-item-content padding-left" style="margin-left: 0px;">
								<div id='monitorFileInfo' class="alert alert-danger alert-dismissible fileupload-info" role="alert">
								  <button type="button" class="close"><span aria-hidden="true" class='info-close'>&times;</span></button>
								  <strong>错误!</strong><span class='info'></span>
								  <img id="tempimg" dynsrc="" src="" style="display:none" />
								</div>
							</div>
							<div class='col-md-12' style="margin-left:0px;">
								<div class="col-md-12 col-sm-12 col-xs-12 padding project-handle-item-content">
									<p style='color:#ccc;'>将需求描述文件上传,文件支持20M以内的doc、docx、pdf、ppt、pptx、xls、xlsx、zip、rar、jpg、png、jpeg、bmp、gif格式,也可联系码客帮客服上传。</p>
								</div>
							</div>
						</div>
		            	<!--header end-->
		            	<div class='col-md-12 col-xs-12 col-sm-12'>
								<div id='monitorFileList' class="col-md-10 project-handle-item-content file-list padding-left" style="margin-left: 0px;margin-top: 10px;margin-bottom: 10px;" max='5'>
									<!--附件模型-->
									<div class="btn-group attach-group attach-model">
								      	<button type="button" class="btn btn-primary btn-xs attach">PrimaryPrimaryPrimary</button>
								      	<button type="button" class="btn btn-primary btn-xs attach-del">
								       		<span class="fa fa-times"></span>
								        	<span class="sr-only">Toggle Dropdown</span>
								      	</button>
								    </div>
								    <!--附件模型end-->

									<input type='hidden' class='attachment' id='attachment' value=''/>
								 </div>
						</div>
						<!-- footer-->
		        		<div class="col-md-12 col-xs-12 col-sm-12 padding-right functionMarginTop">
		        			<div class="col-md-5 col-sm-5 col-xs-5 text-left padding">
		        				<input type="button" value="取消" data-dismiss="modal" class="btn btn-cancel btn-functions btn-cancel-functions"/>
		        			</div>
		        			<div class="col-md-offset-2 col-sm-offset-2 col-xs-offset-2 col-md-5 col-sm-5 col-xs-5 text-right padding">
		        				<input type="submit" value="确定" class="btn btn-primary btn-functions"/>
		        			</div>
		        		</div>
		        	</div>
		        </form>
	       </div>
	    </div>
	  </div>
	</div>

<!-- 计划 -->
	<div class="modal" id="plan">
	  <div class="modal_plan">
	    <div class="modal-content">
	      <div class="modal_title chooseRoleFunctionTitle">
	       	<div class="col-md-6 col-sm-6 col-xs-6">
	      		<img src="https://static.make8.com/img/plan_icon.png" style="width: 25px;height: 25px;" alt="" />
	      		<span>阶段计划</span>
	      	</div>
	      	<div class="col-md-6 col-sm-6 col-xs-6 text-right">
	      		<img data-dismiss="modal" style="cursor: pointer;" src="https://static.make8.com/img/project_functions_cancle.png" alt="" />
	      	</div>
	      </div>
	      <div class="modal_body_functions">
		        <form action="javascript:createPlan()" id="planForm">
		        	<div class="col-xs-12 col-md-12 col-sm-12">
			        	<div class="col-md-12 col-sm-12 col-xs-12 padding-right plan_margin_top">
			        		<div class="col-md-6 col-sm-6 col-xs-6 padding">
			        			<div class="col-md-3 col-sm-3 col-xs-5 plan_title padding"><span style="color: red;">*</span>开始时间</div>
			        			<div class="input-group col-md-9 col-sm-9 col-xs-7 date planStartTime" style="padding: 0px 15px 0px 0px;" id="planStartTimeDiv">
			        				<input type="text" class="form-control form-input-small" id="planStartTime" required name="planStartTime"/>
			        				<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
									<span class="input-group-addon"><span class="fa fa-calendar"></span></span>
			        			</div>
			        			<div name="planStartTimeMsg" id="planStartTimeMsg"></div>
			        		</div>
			        		<div class="col-md-6 col-sm-6 col-xs-6 padding">
			        			<div class="col-md-3 col-sm-3 col-xs-5 plan_title padding text-right"><span style="color: red;">*</span>结束时间</div>
			        			<div class="input-group col-md-9 col-sm-9 col-xs-7 planEndTime date padding-right" style="padding: 0px 0px 0px 15px;" id="planEndTimeDiv">
			        				<input type="text" class="form-control" id="planEndTime" name="planEndTime" required checkTime="true"/>
			        				<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
									<span class="input-group-addon"><span class="fa fa-calendar"></span></span>
			        			</div>
			        			<div name="planEndTimeMsg" style="padding-left: 30px;" id="planEndTimeMsg"></div>
			        		</div>
			        	</div>

						<div class="col-md-12 col-sm-12 col-xs-12 padding-right plan_margin_top">
			        		<div class="col-md-6 col-sm-6 col-xs-6 padding">
			        			<div class="col-md-3 col-sm-3 col-xs-5 plan_title padding"><span style="color: red;">*</span>阶段状态</div>
			        			<div class="col-md-9 col-sm-9 col-xs-7 padding-left">
			        				<select id="status" class="form-control" name="status" required>
												<option value='1'>开发中</option>
												<option value='2'>待交付</option>
												<option value='3'>已完成</option>
			        				</select>
			        			</div>
			        		</div>
			        		<div class="col-md-6 col-sm-6 col-xs-6 padding">
			        			<div class="col-md-3 col-sm-3 col-xs-5 plan_title padding text-right"><span style="color: red;">*</span>阶段金额</div>
			        			<div class="col-md-9 col-sm-9 col-xs-7 padding-right"><input type="text" name="price" id="price" class="form-control" required checkPrice="true"/></div>
			        			<div style="padding-left: 30px;" name="priceMsg" id="priceMsg"></div>
			        		</div>
			        	</div>

			        	<div class="col-md-12 col-sm-12 col-xs-12 padding-right plan_margin_top">
			        		<div class="col-md-6 col-sm-6 col-xs-6 padding">
			        			<div class="col-md-3 col-sm-3 col-xs-5 plan_title padding"><span style="color: red;">*</span>阶段执行者</div>
			        			<div class="col-md-9 col-sm-9 col-xs-7 padding-left">
			        				<select id='coper' name="coper" class="form-control" required>
			        					<!--执行者-->
			        				</select>
			        			</div>
			        		</div>

			        		<div class="col-md-6 col-sm-6 col-xs-6 padding isDelay">
			        			<div class="col-md-3 col-sm-3 col-xs-5 plan_title padding text-right"><span style="color: red;">*</span>是否延期</div>
			        			<div class="col-md-9 col-sm-9 col-xs-7 padding-right">
			        				<select id="isDelay" class="form-control" name="isDelay" required>
			        					<option value="0">否</option>
			        					<option value="1">是</option>
			        				</select>
			        			</div>
			        		</div>

			        	</div>

		        		<div class="col-md-12 col-sm-12 col-xs-12 padding plan_margin_top">
		        			<div class="col-md-12 col-sm-12 col-xs-12 plan_title">
		        				<span style="color: red;">*</span>阶段描述(不少于10个字)
		        			</div>
		        			<div class="col-md-12 col-xs-12 col-xs-12 padding-right">
		        				<textarea id="describe" name="describe" class="form-control plan_textarea" required minlength="10"></textarea>
		        			</div>
		        		</div>

		        		<div class="col-md-12 col-xs-12 col-sm-12 padding-right functionMarginTop">
		        			<div class="col-md-5 col-sm-5 col-xs-5 text-left padding">
		        				<input type="button" value="取消" data-dismiss="modal" class="btn btn-cancel btn-functions btn-cancel-functions"/>
		        			</div>
		        			<div class="col-md-offset-2 col-sm-offset-2 col-xs-offset-2 col-md-5 col-sm-5 col-xs-5 text-right padding">
		        				<input type="submit" value="确定" class="btn btn-primary btn-functions"/>
		        			</div>
		        		</div>
		        	</div>
		        </form>
	       </div>
	    </div>
	  </div>
	</div>

<!-- 选择角色职能 -->
	<div class="modal" id="functionChoice">
	  <div class="modal_dialog">
	    <div class="modal-content">
	      <div class="modal_title chooseRoleFunctionTitle">
	       	<div class="col-md-6 col-sm-6 col-xs-6">
	      		<img src="https://static.make8.com/img/projectRole.png" style="width: 25px;height: 25px;" alt="" />
	      		<span>选择角色</span>
	      	</div>
	      	<div class="col-md-6 col-sm-6 col-xs-6 text-right">
	      		<img data-dismiss="modal" style="cursor: pointer;" src="https://static.make8.com/img/project_functions_cancle.png" alt="" />
	      	</div>
	      </div>
	      <div class="modal_body_functions">
		        <form action="javascript:addChosenDev()" id="functionChoiceForm">
		        	<div class="col-xs-12 col-md-12 col-sm-12">
		        		<div class="col-md-4 col-sm-4 col-xs-6"><div class="functions" value="1" onclick="choosefunctions(this)">项目经理</div></div>
		        		<div class="col-md-4 col-sm-4 col-xs-6"><div class="functions" value="2" onclick="choosefunctions(this)">产品经理</div></div>
		        		<div class="col-md-4 col-sm-4 col-xs-6"><div class="functions" value="3" onclick="choosefunctions(this)">UI设计</div></div>
		        		<div class="col-md-4 col-sm-4 col-xs-6"><div class="functions" value="4" onclick="choosefunctions(this)">前端开发</div></div>
		        		<div class="col-md-4 col-sm-4 col-xs-6"><div class="functions" value="5" onclick="choosefunctions(this)">后端开发</div></div>
		        		<div class="col-md-4 col-sm-4 col-xs-6"><div class="functions" value="6" onclick="choosefunctions(this)">测试</div></div>
		        		<div class="col-md-4 col-sm-4 col-xs-6"><div class="functions" value="7" onclick="choosefunctions(this)">架构师</div></div>
		        		<div class="col-md-4 col-sm-4 col-xs-6"><div class="functions" value="8" onclick="choosefunctions(this)">DBA</div></div>
		        		<div class="col-md-4 col-sm-4 col-xs-6"><div class="functions" value="9" onclick="choosefunctions(this)">全栈</div></div>
		        		<div class="col-md-12 col-xs-12 col-sm-12 functionMarginTop">
		        			<div class="col-md-5 col-sm-5 col-xs-5 text-left padding">
		        				<input type="button" value="取消" data-dismiss="modal" class="btn btn-cancel btn-functions btn-cancel-functions"/>
		        			</div>
		        			<div class="col-md-offset-2 col-sm-offset-2 col-xs-offset-2 col-md-5 col-sm-5 col-xs-5 text-right padding">
		        				<input type="submit" value="确定" class="btn btn-primary btn-functions"/>
		        			</div>
		        		</div>
		        	</div>
		        </form>
		        <div class id="functionChoiceMsg" style="display: none;color: red;padding: 0px 30px;margin-top: 10px;">至少选择一个角色职能</div>
	       </div>
	    </div>
	  </div>
	</div>

<!-- 添加日志 -->
	<div class="modal" id="addLogDiv">
	  <div class="modal_dialog">
	    <div class="modal-content">
	      <div class="modal_title chooseRoleFunctionTitle">
	       	<div class="col-md-6 col-sm-6 col-xs-6">
	      		<img src="https://static.make8.com/img/Feedback_icon.png" style="width: 25px;height: 25px;" alt="" />
	      		<span>进度日志</span>
	      	</div>
	      	<div class="col-md-6 col-sm-6 col-xs-6 text-right">
	      		<img data-dismiss="modal" style="cursor: pointer;" src="https://static.make8.com/img/project_functions_cancle.png" alt="" />
	      	</div>
	      </div>
	      <div class="modal_body">
		        <form action="javascript:addLog()" id="addLogDivForm">
		        	<div class="col-xs-12 col-md-12 col-sm-12">
		        		<div class="col-md-12 col-sm-12 col-xs-12 openObj">
		        			<div class="col-md-12 col-sm-12 col-xs-12 padding logDiv_title"><span style="color: red;">*</span>公开对象</div>
		        			<div class="col-md-8 col-sm-8 col-xs-8 padding">
		        				<select class="form-control" id="objectOriented" name="objectOriented" required>
		        					<option value="1">所有人可见</option>
		        					<option value="2">仅顾问可见</option>
	        					    <option value="3">仅开发可见</option>
	        					    <option value="4">仅雇主可见</option>
		        				</select>
		        			</div>
		        		</div>
		        		<div class="col-md-12 col-sm-12 col-xs-12 logContent">
		        			<div class="col-md-12 col-xs-12 col-sm-12 padding logDiv_title"><span style="color: red;">*</span>日志内容(至少输入5个字)</div>
		        			<div class="col-md-12 col-sm-12 col-xs-12 padding">
		        				<textarea style="resize: none;height: 160px;" minlength="5" class="form-control" id="journalContent" name="journalContent" required></textarea>
		        			</div>
		        		</div>
		        		<div class="col-md-12 col-xs-12 col-sm-12">
		        			<div class="col-md-6 col-sm-6 col-xs-6 text-left padding">
		        				<input id="addLogDivCancle" type="button" value="取消" data-dismiss="modal" class="btn btn-cancel"/>
		        			</div>
		        			<div class="col-md-6 col-sm-6 col-xs-6 text-right padding">
		        				<input type="submit" value="确定" class="btn btn-primary"/>
		        			</div>
		        		</div>
		        	</div>
		        </form>
	       </div>
	    </div>
	  </div>
	</div>

	<div class="container body">
		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="col-md-4 col-sm-4 col-xs-12 projectInfo">
				<div class="col-md-12 col-sm-12 col-xs-12 padding">
					<div class="col-md-6 col-sm-6 col-xs-6 projectId padding">NO.620</div>
					<div class="col-md-6 col-sm-6 col-xs-6 text-right padding">
						<div class="consultant" onclick='_MEIQIA._SHOWPANEL()'>
							<div>咨询顾问</div>
							<div>
								<img src="https://static.make8.com/img/rh_yuyue.png"/>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-12 col-sm-12 col-xs-12 padding projectName">1</div>
				<div class="col-md-12 col-sm-12 col-xs-12 padding projectMsg">
					<div class="col-md-12 col-sm-12 col-xs-12 padding projectMsgDiv">项目雇主：
						<span class="projectMsgSpan">
								15504638550
						</span>
					</div>
					<div class="col-md-12 col-sm-12 col-xs-12 padding projectMsgDiv">项目类型：<span class="projectMsgSpan">Andriod / 其他</span></div>
						<div class="col-md-12 col-sm-12 col-xs-12 padding projectMsgDiv">项目预算：<span class="projectMsgSpan">100-1000元</span></div>
					<div class="col-md-12 col-sm-12 col-xs-12 padding projectMsgDiv">创建时间：<span class="projectMsgSpan">2017-11-05 22:52</span></div>
					<div class="col-md-12 col-sm-12 col-xs-12 padding projectMsgDiv">项目周期：<span class="projectMsgSpan">1天</span></div>
					<div class="col-md-12 col-sm-12 col-xs-12 padding projectMsgDiv">分配顾问：<span class="projectMsgSpan">顾问-大鱼</span></div>
					<div class="col-md-12 col-sm-12 col-xs-12 padding projectMsgDiv">需要购买域名：
						<span class="projectMsgSpan">
								是
						</span>
					</div>
					<div class="col-md-12 col-sm-12 col-xs-12 padding projectMsgDiv">需要购买云主机和数据库：
						<span class="projectMsgSpan">
								是
						</span>
					</div>

					<input type="hidden" value="13572">
					<input type="hidden" value="13572">
				</div>
			</div>
			<div class="col-md-8 col-sm-12 col-xs-12 projectStatusDiv padding-right">
				<div class="col-md-12 padding projectLabel">
					<div class="border-left"></div>
					<div>项目状态</div>
				</div>
				<div class="col-md-12 col-sm-12 col-xs-12 projectStatus">
						<img class="projectStatusImg" src="https://static.make8.com/img/m_request_handle_1.png"/>
				</div>
			</div>
		</div>


		<div class="col-md-12 col-sm-12 col-xs-12 projectDetails">
			<div class="col-md-12 padding projectLabel">
				<div class="border-left"></div>
				<div>项目详情</div>
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12 padding projectDetails_div">
				112322222222222222222222222222222222222222
			</div>
		</div>

				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="col-md-12 padding projectLabel">
						<div class="border-left"></div>
						<div>项目附件</div>
					</div>
					<div class="col-md-12 col-sm-12 col-xs-12 padding projectAttachment">
						<div class="col-md-8 col-sm-10 col-xs-12 padding-left">
							<div class="col-md-12">
									<div class="col-md-10 padding-left project-handle-item-content">
							           		<input id="fileselect" name="pic" class="picselect file" type="file"></input>
									</div>
							</div>
								<div class='col-md-12 fileupload-info-box'>
									<div class="col-md-10 padding-left project-handle-item-content">
										<div id='projectFileInfo' class="alert alert-danger alert-dismissible fileupload-info" role="alert">
										  <button type="button" class="close"><span aria-hidden="true" class='info-close'>&times;</span></button>
										  <strong>错误!</strong><span class='info'></span>
										  <img id="tempimg" dynsrc="" src="" style="display:none" />
										</div>
									</div>
								</div>
								<div class='col-md-12'>
									<div class="col-md-12 col-sm-12 col-xs-12 padding project-handle-item-content">
										<p style='color:#ccc;'>将需求描述文件上传,文件支持20M以内的doc、docx、pdf、ppt、pptx、xls、xlsx、zip、jpg、png、jpeg、bmp、gif格式,也可联系码客帮客服上传。</p>
									</div>
								</div>

								<div class='col-md-12'>
									<div id='projectList' class="col-md-10 padding-left project-handle-item-content file-list padding-left" max='2'>
										<!--附件模型-->
										<div class="btn-group attach-group attach-model">
									      <button type="button" class="btn btn-primary btn-xs attach">PrimaryPrimaryPrimary</button>
									      <button type="button" class="btn btn-primary btn-xs attach-del">
									        <span class="fa fa-times"></span>
									        <span class="sr-only">Toggle Dropdown</span>
									      </button>
									    </div>
									    <!--附件模型end-->

										<input type='hidden' id="projectAttachment" class='attachment' name='attachment' value='[]'/>
									</div>
								</div>
						</div>
					</div>
				</div>





		<div class="col-md-12 col-sm-12 col-xs-12 other">
			<div class="col-md-12 col-sm-12 col-xs-12 padding">
				<div class="col-md-12 padding projectLabel">
					<div class="border-left"></div>
					<div>雇主信息</div>
				</div>
				<div class="col-md-12 padding">
					<div class="col-md-12 col-sm-12 col-xs-12 padding">
						<div class="col-md-12 col-sm-12 col-xs-12 projectContactInformation">
							<div class="col-md-3 col-sm-6 col-xs-12 padding projectContactInformationDiv">
								<div><img src="https://static.make8.com/img/user_icon.png" alt="" /></div>
								<div></div>
							</div>
							<div class="col-md-3 col-sm-6 col-xs-12 padding projectContactInformationDiv">
								<div><img src="https://static.make8.com/img/phone_icon.png" alt="" /></div>
								<div>15504638550</div>
							</div>
							<div class="col-md-3 col-sm-6 col-xs-12 padding projectContactInformationDiv">
								<div><img src="https://static.make8.com/img/mail_icon.png" alt="" /></div>
								<div></div>
							</div>
							<div class="col-md-3 col-sm-6 col-xs-12 padding projectContactInformationDiv">
								<div>
									<div><img src="https://static.make8.com/img/qq_icon.png" alt="" /></div>
									<div></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12 padding">
				<div class="col-md-12 padding projectLabel">
					<div class="border-left"></div>
					<div>项目进度日志</div>
				</div>
				<div class="col-md-12 col-sm-12 col-xs-12 padding">
					<div class="col-md-12 col-sm-12 col-xs-12 padding">
						    	<table class="col-md-12 col-sm-12 col-xs-12 padding journal" cellpadding="0" border="1" cellspacing="0">
									<tr class="tableThFloat tableTr">
										<td class="col-md-3 col-sm-3 col-xs-3 text-center padding">时间</td>
										<td class="col-md-3 col-sm-3 col-xs-3 text-center padding">发布人</td>
										<td class="col-md-6 col-sm-6 col-xs-6 text-center padding">内容</td>
									</tr>
											<tr class="tableTr" onclick="showReasonForCompetence(this)">
												<td class="text-center">2017-11-05 22:52</td>
												<td class="text-center"></td>
												<td class="text-center reasonForCompetence"><div class="reasonForCompetenceContent text-center">项目创建成功</div></td>
											</tr>
					            </table>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 模态框（顾问操作项目进入开发状态） -->
	<div class="modal fade" id="confirmBox" tabindex="-1" role="dialog"
	   aria-labelledby="confirmBox" aria-hidden="true">
	   <div class="modal-dialog">
	      <div class="modal-content">
	      	<form action="javascript:entryDevelopment()" id="checkAccount">
	         <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> &times; </button>
	            <h4 class="modal-title" id="confirmBox"> 请先输入开发金额</h4>
	         </div>
	         <div class="modal-body" style="overflow:auto;padding-bottom: 30px;">
	         <div class="col-xs-12 " style="font-size: 16px;color: #3487bd;">项目金额:</div>
	         <div class="col-xs-12 ">
	         	<input id="proAccount" name="proAccount" type="text" class="form-control">
	         </div>
	         <p id="accountErr"></p>
	         </div>
	         <div class="modal-footer">
	            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	            <!--<button id="confirm-btn" type="button" class="btn btn-primary" onclick="entryDevelopment()">确认</button>-->
	            <input type="submit" class="btn btn-primary" value="确认" />
	         </div>
	         </form>
	      </div><!-- /.modal-content -->
	</div><!-- /.modal -->
	</div>

	<!-- 模态框（雇主提交验收确认） -->
	<div class="modal fade" id="checkVerifyBox" tabindex="-1" role="dialog" aria-hidden="true">
	   <div class="modal-dialog">
	   	<form action="javascript:checkVerify()" id="checkVerify">
	      <div class="modal-content">
	         <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> &times; </button>
	            <h4 class="modal-title">项目阶段验证</h4>
	         </div>
	         <div class="modal-body" style="overflow:auto;padding-bottom: 30px;">
<!--TODO   通过不通过按钮-->
				<div class="form-group col-xs-12" >
				 <p>验收意见:</p>
				 <div class="col-xs-6 col-md-3 project-type" onclick="checkStatusRadio(this)">
		         	 <div><img class="project-type-img" src="https://www.make8.com/img/checkboxchecked.png"/></div><p>通过</p>
		         </div>
		         <div class="col-xs-6 col-md-3 project-type" onclick="checkStatusRadio(this)">
		         	 <div><img class="project-type-img active" id="unPass" src="https://www.make8.com/img/checkboxchecked.png" /></div><p>不通过</p>
		         </div>
			   </div>
	          	 <div class="form-group col-xs-12">
	         	 	<p>备注：</p>
	         	 	<!--<textarea class="form-control" style="resize: none;" rows="3"></textarea>-->
	         	 	<textarea style="resize: none;height: 120px;"class="form-control" id="checkRemark" name="checkRemark"></textarea>
	         	 	<span style="color: red;" id="checkRemarkMsg"></span>
	         	 </div>
			 </div>
	         <div class="modal-footer">
	            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	            <input type="submit" class="btn btn-primary" value="确认">
	         </div>
	      </div><!-- /.modal-content -->
	     </form>
	</div><!-- /.modal -->
	</div>
	   	   </div>
		</div>
	<!--进展反馈对话框 end-->
	</form>
   </div>
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

	<div>
		<input type="hidden" id="topurl" value="https://www.make8.com/" />
		<input type="hidden" id="reload" value="1" />
	</div>
	<script type="text/javascript">
		initFileIuput("#fileUpload");
	</script>

	<!--CNZZ CODE-->
	<div style="display:none;"><script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1257531169'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/z_stat.php%3Fid%3D1257531169' type='text/javascript'%3E%3C/script%3E"));</script></div>
	<!--END OF CNZZ CODE-->
</body>
</html>
