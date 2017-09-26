<%@ page language="java" isELIgnored="false"
	import="java.util.*,org.fjh.entity.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<head>
<meta charset="UTF-8">
<title>帖子列表</title>
<link rel="stylesheet" href="bt/css/bootstrap.css">
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
	<!--
        	作者：offline
        	时间：2017-08-11
        	描述：头部
        -->
	<nav
		class="nav navbar navbar-default navbar-fixed-top hidden-sm hidden-xs bg-info">
		<div class="container">
			<div class="navbar-header">
				<div class="navbar-brand">
					<img src="./img/ydlogo.jpg" />
				</div>
			</div>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><img
						src="<%=basePath %>img/head/${logineduser.uhead}"
						class="img-circle" style="width: 40px; height: 40px;" /></a></li>
				<br>
				<li>欢迎您【${logineduser.uname}】</li>
				<li><a href="<%=basePath%>logout.do"><span
						class="glyphicon glyphicon-export">退出</span></a></li>
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
						<li><a href="#">热门论坛</a><span class="divider"></span></li>
						<li><a href="#">龙城茶座</a></li>
						<li></li>
					</ul>
				</div>
				<div class="col-lg-1">
					<button class="btn btn-primary" id="b100">发表新主题</button>
				</div>
			</div>
		</div>
		<div class="row">
			<table class="table table-striped table-hover">
				<thead>
					<tr class="info">
						<th>&nbsp;</th>
						<th>主题</th>
						<th>点击/查看</th>
						<th>发表时间</th>
						<th>最后回复</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${topiclist }" var="topic" varStatus="vs">
						<tr>
							<td style="width: 20px;"><c:choose>
									<c:when test="${topic.treaded>10}">
										<img src="<%=basePath%>img/topicst/fire.gif" />
									</c:when>

									<c:otherwise>
										<img src="<%=basePath%>img/topicst/new.gif" />
									</c:otherwise>
								</c:choose></td>
							<td style="width: 60%"><a
								href="<%=basePath %>gettopic.do?topicid=${topic.tid}"
								target="_blank">${ topic.tname }</a></td>
							<td>${ topic.treaded}</td>
							<td><fmt:formatDate value="${ topic.tpublishdate}"
									type="both" /></td>
							<td>${ 1}</td>
						</tr>
					</c:forEach>
			</table>
		</div>
		<div class="row right">
			<ul class="pagination">
				<li><a href="#">&laquo;</a></li>
				<%
					Integer pages = (Integer) request.getAttribute("pages");
					for (int temp = 1; temp <= pages; temp++) {
						if (temp == (Integer) request.getAttribute("pageindex")) {
							out.print("<li class='active'><a href='" + basePath + "pager.do?bid="
									+ (String) request.getAttribute("bid") + "&pageindex=" + temp + "'>" + temp + "</a></li>");
						} else {
							out.print("<li><a href='" + basePath + "pager.do?bid=" + (String) request.getAttribute("bid")
									+ "&pageindex=" + temp + "'>" + temp + "</a></li>");
						}
					}
				%>
				<li><a href="#">&raquo;</a></li>
			</ul>
		</div>
	</div>

	<!--
        	作者：offline
        	时间：2017-08-11
        	描述：页尾
        -->
	<nav class="nav navbar navbar-default  col-md-hide foot">
		<div class="container">

			<div class="row"></div>
			<br>
			<div class="row">
				关注我们:<a href="mailto:hewhlster@gmail.com">hewhlster@gmail.com</a>
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
