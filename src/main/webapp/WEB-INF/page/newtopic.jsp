<%@ page language="java" isELIgnored="false" import="java.util.*,org.fjh.entity.*" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<%
 	String path = request.getContextPath();  
    String basePath = request.getScheme() + "://"  
            + request.getServerName() + ":" + request.getServerPort()  
            + path + "/";  
%>
	<head>
		<meta charset="UTF-8">
		<title>新主题</title>
		<link  rel="stylesheet"   href="bt/css/bootstrap.css">
		<link rel="stylesheet" href="css/style.css"    />
	</head>
	<body>
		<!--
        	作者：offline
        	时间：2017-08-11
        	描述：头部
        -->
	<nav class="nav navbar navbar-default navbar-fixed-top hidden-sm hidden-xs bg-info">
			<div class="container">
				<div class="navbar-header">
					<div class="navbar-brand">
						<img src="./img/ydlogo.jpg" />
					</div>
				</div>
				<ul class="nav navbar-nav navbar-right">
					<li>
						<a href="#"><img src="<%=basePath %>img/head/${logineduser.uhead}" class="img-circle" style="width:40px;height: 40px;" /></a>
					</li>
					<br>
					<li>欢迎您【${logineduser.uname}】</li>
					<li>
						<a href="<%=basePath%>logout.do"><span class="glyphicon glyphicon-export">退出</span></a>
					</li>
				</ul>
			</div>
		</nav>
		<!--
        	作者：offline
        	时间：2017-08-11
        	描述：内容区域
        -->
       <div class="container nav-margin-top">
			<div class="row" >
				<div class="panel panel-primary">
					<div class="panel-heading">
						快速回复
					</div>
					<div class="panel-body">
						<form action="<%=basePath%>newtopic.do" name="example" >
							<input type="text" class="form-control fom" name="tname" id="t102"/>
							<br>
							<textarea  rows="12"  class="form-control" name="tcontent" ></textarea>
							<br>
							<input type="hidden" name="bid" value="${bid}" />
							
							<input type="submit" class="btn btn-danger" value="回复">
						</form>
					</div>
				</div>
				
			</div>		
			</div>
		<!--
        	作者：offline
        	时间：2017-08-11
        	描述：页尾
        -->
		<nav  class="nav navbar navbar-default navbar-fixed-bottom col-md-hide foot">
			<div class="container">

			<div class="row">
				
			</div>
			<br >
			<div class="row">关注我们:<a href="mailto:hewhlster@gmail.com">hewhlster@gmail.com</a></div>
			<div class="row">©1997-2017 Jack版权所有</div>
			</div>
		</nav>
	</body>
	<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="../bt/js/bootstrap.js"></script>
		<link rel="stylesheet" href="../themes/default/default.css" />
	<link rel="stylesheet" href="../js/kindeditor/plugins/code/prettify.css" />
	<script charset="utf-8" src="../js/kindeditor/kindeditor.js"></script>
	<script charset="utf-8" src="../js/kindeditor/lang/zh_CN.js"></script>
	<script charset="utf-8" src="../js/kindeditor/plugins/code/prettify.js"></script>
	<script type="text/javascript">
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="tcontent"]', {
				cssPath : '../js/kindeditor/plugins/code/prettify.css',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
				}
			})});
	</script>
</html>
