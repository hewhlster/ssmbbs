<%@ page language="java" isELIgnored="false" import="java.util.*,org.fjh.entity.*" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		<title>版块列表</title>
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
        <style type="text/css">
        	.boardlogo{
        		height: 200px;
        		border: orange solid 1px;
        		margin: 5px;
        		width: 140px;
        		background-color:#FFFFCC;
        		padding-top:5px;

        	}
        	
        	.board-img{
        		width:110px;
        		height:120px;
        	}
        	.boardlogo:hover{
        		border: red;
        		background-color:#F0AD4E;
        		cursor: pointer;
        		color: #ffffff;
        	}
        </style>
		
<div class="container nav-margin-top">
			<c:forEach items="${boardmap}" var="board">
			<div class="panel panel-primary">
				<div class="panel-heading">
					${board.key.bname}
				</div>
				<div class="panel-body">
				<c:forEach items="${board.value}" var="subboard">
					<div class="col-lg-4  col-md-2 col-xs-2 boardlogo">
						<img src="<%=basePath%>img/boardlogo/${subboard.bimg}" alt="" class="board-img img-rounded"/>
						<br><br>
						<div class="row" style="text-align: center;font-weight: bold;"><a href="<%=basePath%>pager.do?bid=${subboard.bid}">${subboard.bname}(1000)</a></div>
						<div class="row"><a href="">天气太热...</a></div>
					</div>
				</c:forEach>
				</div>
			</div>
			</c:forEach>
		</div>
		
		
		<!--
        	作者：offline
        	时间：2017-08-11
        	描述：页尾
        -->
		<nav  class="nav navbar navbar-default  col-md-hide foot">
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
</html>
