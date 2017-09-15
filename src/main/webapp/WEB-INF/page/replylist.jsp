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
		<title>>>>>>>帖子<<<<<</title>
		<link rel="stylesheet" href="bt/css/bootstrap.css">
		<link rel="stylesheet" href="css/style.css" />
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
						<a href="#"><span class="glyphicon glyphicon-export">退出</span></a>
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
			<!-- 面包导航 -->
			<div class="row">
				<div class="container">
					<div class=" col-lg-11">
					<ul class="breadcrumb ">
						<li>
							<a href="#">热门论坛</a><span class="divider"></span>
						</li>
						<li>
							<a href="#">龙城茶座</a> 
						</li>
						<li></li>
					</ul>
					</div>
					<div class="col-lg-1">
						<button class="btn btn-primary" id="b100">发表新主题</button>
					</div>
				</div>
			</div>

			<!--帖子内容 -->
			<style type="text/css">
				.topic-left-user-head {
					width: 130px;
					height: 130px;
				}
			</style>
			<c:forEach items="${topicmap}" var="topic">
			<!-- 供下面回帖子用 -->
			<c:set var="tid" value="${topic.key.tid}" scope="page"/>
			<!-- 主题信息 -->
			<div class="row" style="border: solid orange 1px;">
				<!--
                	作者：offline
                	时间：2017-08-11
                	描述：左侧网友信息
                -->
				<div style=" height:100%;text-align: center;border-bottom: dotted orange 1px;" class="col-lg-3">
					<div style="height: 30px;"></div>
					<div>查看:100 | 回复：60</div>
					<div>Jack-</div>
					<div><img src="./img/user/1.jpg" alt="" class="topic-left-user-head" /></div>
					<div>帖子数:<span>100</span></div>
				</div>
				<!--
					右侧帖子信息
				-->
				<div class="col-lg-9" style=" border-left:  solid orange 1px;">
					<!--
                    	作者：offline
                    	时间：2017-08-11
                    	描述：帖子主题
                    -->
					<div style="border-bottom: dashed 1px #9D9D9D;">发表于<fmt:formatDate value="${topic.key.tpublishdate}" type="both"/></div>
					<!--
                    	作者：offline
                    	时间：2017-08-11
                    	描述：帖子正文
                    -->
					<div style="padding-top: 15px;">
						${topic.key.tcontent}
					</div>
					<!--
                    	作者：offline
                    	时间：2017-08-11
                    	描述：帖子附带信息
                    -->
					<div style="border-top: #9d9d9d dashed 1px; text-align: right;"><span class="text-danger">楼主</span></div>
				</div>
			</div>
			<!-- 回复信息 -->
			<c:forEach items="${ topic.value }" var="reply" varStatus="vs">
			<div class="row" style="border: solid orange 1px;">
				<!--
                	作者：offline
                	时间：2017-08-11
                	描述：左侧网友信息
                -->
				<div style=" height:100%;text-align: center;border-bottom: dotted orange 1px;" class="col-lg-3">
					<div style="height: 30px;"></div>
					<div>查看:100 | 回复：60</div>
					<div>Jack</div>
					<div><img src="./img/user/1.jpg" alt="" class="topic-left-user-head" /></div>
					<div>帖子数:<span>100</span></div>
				</div>
				<!--
					右侧帖子信息
				-->
				<div class="col-lg-9" style=" border-left:  solid orange 1px;">
					<!--
                    	作者：offline
                    	时间：2017-08-11
                    	描述：帖子主题
                    -->
					<div style="border-bottom: dashed 1px #9D9D9D;">发表于<fmt:formatDate type="both" value="${reply.tpublishdate}"/></div>
					<!--
                    	作者：offline
                    	时间：2017-08-11
                    	描述：帖子正文
                    -->
					<div style="padding-top: 15px;">
						${reply.rcontent}
					</div>
					<!--
                    	作者：offline
                    	时间：2017-08-11
                    	描述：帖子附带信息
                    -->
					<div style="border-top: #9d9d9d dashed 1px; text-align: right;"><span class="text-danger">【${vs.index+1 }】楼</span></div>
				</div>
				
			</div>
			</c:forEach>
			</c:forEach>
			<!-- 分页 -->
			<div class="row right">
				<ul class="pagination">
					<li>
						<a href="#">&laquo;</a>
					</li>
					<li class="active">
						<a href="#">1</a>
					</li>
					<li class="">
						<a href="#">2</a>
					</li>
					<li>
						<a href="#">3</a>
					</li>
					<li>
						<a href="#">4</a>
					</li>
					<li>
						<a href="#">5</a>
					</li>
					<li>
						<a href="#">&raquo;</a>
					</li>
				</ul>
			</div>
			
			<!-- 回贴子 -->
			<div class="row" >
				<div class="panel panel-primary">
					<div class="panel-heading">
						快速回复
					</div>
					<div class="panel-body">
						<form action="<%=basePath%>newreply.do">
							<textarea  class="form-control" name="rcontent" ></textarea>
							<br>
							<input type="hidden" name="tid" value="${pageScope.tid}" />
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
		<nav class="nav navbar navbar-default  col-md-hide foot ">
			<div class="container">

				<div class="row">

				</div>
				<br>
				<div class="row">关注我们:
					<a href="mailto:hewhlster@gmail.com">hewhlster@gmail.com</a>
				</div>
				<div class="row">©1997-2017 Jack版权所有</div>
			</div>
		</nav>
	</body>
	<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="../bt/js/bootstrap.js"></script>
	<script type="text/javascript">
		$(function(){
			$("#b100").click(function(){
				window.location="<%=basePath%>newtopicmv.do";
				
			});
			
		})
	</script>
</html>