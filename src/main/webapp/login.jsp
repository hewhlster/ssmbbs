<%@ page language="java" isELIgnored="false" import="java.util.*,org.fjh.entity.*" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
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
		<title>导航条</title>
		<link rel="stylesheet" href="./bt/css/bootstrap.css" />
		<link rel="stylesheet" href="./css/style.css"    />
	</head>
	<body>
		<nav class="nav navbar navbar-default navbar-fixed-top hidden-sm hidden-xs bg-info">
			<div class="container">
				<div class="navbar-header">
					<div class="navbar-brand">
						<img src="./img/ydlogo.jpg" />
					</div>
				</div>
			</div>
		</nav>
		
		<style type="text/css">
			.loginbox{
				border: #FFA500 solid 1px;
			}
			
			#loginbox-left{
			}
			
			#loginbox-right{
			}
			
			.row{
				margin: 0px;;
			}
			body{
				font-family: "宋体";
				
			}

		</style>
		
		<div  class="container" style="margin: 69px auto;">
			<div class="row">
				<div id="loginbox-left" class="col-lg-8 col-md-12 carousel hidden-md hidden-sm hidden-xs">
				<ol class="carousel-indicators">
					<li data-target="#loginbox-left" data-slide-to="0" class="active"></li>
					<li data-target="#loginbox-left" data-slide-to="1"></li>
					<li data-target="#loginbox-left" data-slide-to="2"></li>
					<li data-target="#loginbox-left" data-slide-to="3"></li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img src="./img/1.jpg" alt="" />
						<div class="carousel-caption">
							<h3>夏天</h3>
							<p>Hello Jack</p>
						</div>
					</div>
					
					<div class="item ">
						<img src="./img/2.jpg" alt="" />
					</div>
					
					<div class="item">
						<img src="./img/3.jpg" alt="" />
						<div class="carousel-caption">
							<h3>秋天</h3>
							<span>满林的枫叶，红透了半山</span>
						</div>
					</div>
					
					<div class="item">
						<img src="./img/4.jpg" alt="" />
					</div>
				</div>
				<a href="#loginbox-left"  class="carousel-control left" data-slide="prev" d>&lt;</a>
				<a href="#loginbox-left"  class="carousel-control right" data-slide="next">&gt;</a>
			</div>
			
			<!--
				右侧登录区域
			-->
			<div class="row col-lg-4 col-md-12" style="background-color:#F8EFC0;border: #F0AD4E solid 1px; height: 450px;border-radius: 5px; margin-left;10px">
				<div class="row" style="background-color: #F0AD4E;text-align: center; margin-left: -15px; margin-right: -15px;">
					<h1>登录</h1>
				</div>
				<br  />
				<div class="row input-group input-group-lg">
					<span class="input-group-addon">
						<span class="glyphicon glyphicon-user">用户名</span>
					</span>
					<input type="text" class="form-control" id="t100"/>
				</div>
				<br  />
				<div class="row input-group input-group-lg">
					<span class="input-group-addon">
						<span class="glyphicon glyphicon-lock" >密  码</span>
					</span>
					<input type="text" class="form-control" id="t101"/>
				</div>
				<br  />
				<div class="row input-group input-group-lg">
					<span class="input-group-addon">验证码</span>
					<input type="text" class="form-control fom" style="width:150px;" id="t102"/>
					<img id="300" name="checkcode" src="<%=basePath%>checkcode.do" style="padding-left:5px;width:100px;height:45px" alt="点击更换一张" />
				</div>
				<br  /><br  />
				<div class="row input-group " style="margin: 0 auto;">
					<button class="btn btn-default btn-lg btn-success" style="width: 120px;" id="b100">登录</button>
					&nbsp;&nbsp;<button class="btn btn-default btn-lg btn-info" style="width: 120px;" id="b200">注册新用户</button>
				</div>
			</div>
		
		</div>



<!--
	作者：offline
	时间：2017-08-11
	描述：页尾
-->
		<nav class="nav navbar navbar-default navbar-fixed-bottom col-md-hide foot">
			<div class="container">

			<div class="row">
				
			</div>
			<br >
			<div class="row">关注我们:<a href="mailto:hewhlster@gmail.com">hewhlster@gmail.com</a></div>
			<div class="row">©1997-2017 Jack版权所有</div>
			</div>
		</nav>
	</body>
	
	<script type="text/javascript" src="./js/jquery.js"></script>
	<script type="text/javascript" src="./bt/js/bootstrap.js"></script>
	<script type="text/javascript">
		$(function(){
			
			var errormsg = '${sessionScope.errormsg}';
			<% session.removeAttribute("errormsg");%>
			if(errormsg.length>0){
				window.alert(errormsg);
			}
			
			//验证码
			$("#300").click(function(){
				$(this).attr("src","<%=basePath%>checkcode.do?param="+Math.random());
			});
			
			//注册
			$("#b200").click(function(){
				window.location="<%=basePath%>regist.jsp";
			});
		//登录
		$("#b100").click(function(){
			var $uname= $("#t100").val();
		    var $upass= $("#t101").val()
		    var $checkcode =$("#t103").val();
		    
		    var url="<%=basePath%>login.do?uname="+$uname+"&upass="+$upass;
		    window.location = url;
			
		});
		
		});//end jquery
		</script>
	</script>
</html>
