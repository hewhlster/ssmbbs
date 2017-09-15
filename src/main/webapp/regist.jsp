<%@ page language="java" import="java.util.*,org.fjh.entity.*" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="css/bbs-comm.css" rel="stylesheet" type="text/css" />
		<!-- 引入jquery库 -->
		<script type="text/javascript" src="<%=basePath %>js/jquery-1.11.3.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/plus/jquery-validation-1.9.0/jquery.validate.js"></script>
        <style type="text/css">
            #head-table {
                border: #CCCCCC thin solid;
                border-collapse: collapse;
                border-spacing: 1px;
            } #head-table td {
                border: #CCCCCC thin solid;
            } #head-table td:hover {
                cursor: pointer;
                background-color: #FFFFCC;
            } .regist-txt {
                width: 250px;
            } #regist-content {
                height: 800px;
                width: 800px;
                background-color: #E3E3E3;
                margin-left: auto;
                margin-right: auto;
				border:#CCCCCC thin solid; 
				padding-left:80px;
				
            } #regist-ul {
                list-style: none;
                padding: 0px;
                margin: 0px 0px 0px 0px;
            } .regist-li {
                height: 32px;
                margin: 8px 8px 8px 8px;
            }
            
            .error{
            	color:red;
            	font-size:12px;
          	}
        </style>
        <title>注册</title>
    </head>
    <body>
        <div class="header">
			欢迎注册学员论坛
        </div>
        <div class="content" id="regist-content">
            <div style="margin-bottom:15px; margin-top:15px;">
                >>学员论坛>>注册 
            </div>
            <div >
				<script type="text/javascript">
/*					function validation(){
						var username_value = document.getElementById("regist-username").value;
						if( username_value.length==0 ||  username_value.length<4 || username_value.length>8){
							//校验不通
							var reg_username_info = document.getElementById("reg-username-info");
							reg_username_info.innerText="用户不能为空，且至少4个字符最多8个字符";
							return false;
						}
					}


					$(function(){
							function validate_uname(){
								var errormsg="";
								var u_v=$("#regist-username").val();//取到用户输入框中的信息
									//根据规则来进行校验
								if( u_v.length==0){
									errormsg="用户名不能为空.";
								} else if ( u_v.length<4 || u_v.length>8){
									errormsg="用户名至少4个字符，最多8个字符.";
								}
								if(errormsg.length==0){
									$("#reg-username-info").html("");
									$("#reg-username-info").addClass("spanok");
									return true;
								}	
								else {
									$("#reg-username-info").removeClass();
									$("#reg-username-info").addClass("spanerror");
									$("#reg-username-info").html(errormsg);
									return false;
								}
							}
							
							function validate_upass(){
								var errormsg="";
								var u_p=$("#regist-pass").val();//取到密码输入框中的信息
									//根据规则来进行校验
								if( u_p.length==0){
									errormsg="密码不能为空.";
								} else if ( u_p.length<6 || u_p.length>12){
									errormsg="密码至少6个字符，最多12个字符.";
								}
								if(errormsg.length==0){
									$("#reg-pass-info").html("");
									$("#reg-pass-info").addClass("spanok");
									return true;
								}	
								else {
									$("#reg-pass-info").removeClass();
									$("#reg-pass-info").addClass("spanerror");
									$("#reg-pass-info").html(errormsg);
									return false;
								}
							}
							
							
							function validate_cfnupass(){
								var errormsg="";
								var v=$("#regist-pass-cfn").val();//取到确认密码输入框中的信息
								var p=$("#regist-pass").val();//取到密码输入框中的信息
									//根据规则来进行校验
								if( v.length==0){
									errormsg="确认密码不能为空.";
								} else if ( v.length<6 || v.length>12){
									errormsg="确认密码至少6个字符，最多12个字符.";
								} else if( v!=p){
									//两次密码输入不相同
									errormsg="两次密码输入不相同.";
								}
								
								if(errormsg.length==0){
									$("#reg-confrim-info").html("");
									$("#reg-confrim-info").addClass("spanok");
									return true;
								}	
								else {
									$("#reg-confrim-info").removeClass();
									$("#reg-confrim-info").addClass("spanerror");
									$("#reg-confrim-info").html(errormsg);
									return false;
								}
							}
							
							
							$("#f100").submit(function(){
									var ret= true;//默认校验成功
									ret = validate_uname();//调用用户名的校验方法
									ret = validate_upass();
									ret = validate_cfnupass();
									return ret;
							});
					})	
*/

/*
				$(function(){
					$("#f100").validate({
						rules:{
							username:{
								remote:"<%=basePath%>checkuname.do"
							}
						},
						messages:{
							username:{
								remote:"用户以存在"
							}
						}
					});
				})	
*/					

$(function(){
	var msg = '${sessionScope.msg}';
	<c:remove var="msg" scope="session" />
	if( msg!=null && msg.length > 0){
		window.alert(msg);
	}
});	
				</script>
				<form action="<%=basePath %>regist.do" method="post" id="f100" enctype="multipart/form-data">
					<input type="hidden" name="uuid" value="<%= (int)(Math.random()*1000000) %>" />
                <ul id="regist-ul">
                    <li class="regist-li">
                        <label>
                            用户名
                        </label>
							<!-- required="required" -->
                        <input type="text" name="uname" class="txt regist-txt" id="regist-username" placeholder="至少4个字符最多8个字符" />
                    </li>
                    <li class="regist-li">
                        <label>
                            密&nbsp;&nbsp;&nbsp;码
                        </label>
                        <input type="password" name="upass" class="txt regist-txt" id="regist-pass" placeholder="密码不能过去简单" /><span id="reg-pass-info"></span>
                    </li>
                    <li class="regist-li">
                        <label>
                            确认密码
                        </label>
                        <input type="password" name="cfmpass" class="txt regist-txt" id="regist-pass-cfn" /><span id="reg-confrim-info"></span>
                    </li>
                    <li class="regist-li">
                        <label>
                            性&nbsp;&nbsp;&nbsp;别
                        </label>
                        <input type="radio" name="gender" value="0"  checked="checked"/>男<input type="radio" name="gender" value="1" />女
                    </li>
                    <li class="regist-li">
                        <label>
                            邮&nbsp;&nbsp;&nbsp;箱
                        </label>
                        <input type="text" name="uemail" class="txt  regist-txt" id="reg-email" /><span id="reg-email-info"></span>
                    </li>
                    <li class="regist-li">
                        <label>
                            Q&nbsp;Q
                        </label>
                        <input type="text" name="uqq" class="txt  regist-txt" id="reg-qq" /><span id="reg-qq-info"></span>
                    </li>
                    <li class="regist-li" style="height:250px">
                        <label>
                            选择头像
                        </label>
                        <input  type="file" name="smallhead" />
                        <!--  
                        <table id="head-table">
                            <tr>
                                <td>
                                    <img src="images/head/1.gif" />
                                </td>
                                <td>
                                    <img src="images/head/2.gif" />
                                </td>
                                <td>
                                    <img src="images/head/3.gif" />
                                </td>
                                <td>
                                    <img src="images/head/4.gif" />
                                </td>
                                <td>
                                    <img src="images/head/5.gif" />
                                </td>
                                <td>
                                    <img src="images/head/1.gif" />
                                </td>
                                <td>
                                    <img src="images/head/1.gif" />
                                </td>
                                <td>
                                    <img src="images/head/1.gif" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="images/head/6.gif" />
                                </td>
                                <td>
                                    <img src="images/head/7.gif" />
                                </td>
                                <td>
                                    <img src="images/head/8.gif" />
                                </td>
                                <td>
                                    <img src="images/head/9.gif" />
                                </td>
                                <td>
                                    <img src="images/head/10.gif" />
                                </td>
                                <td>
                                    <img src="images/head/1.gif" />
                                </td>
                                <td>
                                    <img src="images/head/1.gif" />
                                </td>
                                <td>
                                    <img src="images/head/1.gif" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="images/head/11.gif" />
                                </td>
                                <td>
                                    <img src="images/head/12.gif" />
                                </td>
                                <td>
                                    <img src="images/head/13.gif" />
                                </td>
                                <td>
                                    <img src="images/head/14.gif" />
                                </td>
                                <td>
                                    <img src="images/head/15.gif" />
                                </td>
                                <td>
                                    <img src="images/head/1.gif" />
                                </td>
                                <td>
                                    <img src="images/head/1.gif" />
                                </td>
                                <td>
                                    <img src="images/head/1.gif" />
                                </td>
                            </tr>
                        </table>
                        -->
                    </li>
                    <li class="regist-li" style="width:200px; height:120px;">
                        <label>
                            个人简介
                        </label>
                        <textarea id="regist-memo" cols="50" rows="4" name="umemo">
                            简介简介简介
                        </textarea>
                    </li>
                    <li class="regist-li">
                        <label>
                            验证码
                        </label>
                        <script type="text/javascript">
                        	$(function(){
                        		$("#c100").click(function(){
                        			$(this).attr("src","/bbs/checkcode.do?te="+Math.random());
                        		});
                        	})
                        </script>
                        <input type="text" name="checkcode" class="txt" id="regist-check-image" style="width:80px;"/>&nbsp;<img id="c100" src="/bbs/checkcode.do" title="验证码" alt="点击取得" style="width:80px; height:29px; line-height:29px; position:relative; top:7px;"/>
                    </li>
                    <li class="regist-li" style="line-height:29px;">
					<script type="text/javascript">
						$(function(){
							$("#auto-pro").click(function(){
								$("#s100").prop("disabled",!$(this).prop("checked"));
							});
						})
					</script>
                        <input type="checkbox" id="auto-pro" />我已完全阅读<a href="#" title="同意协议">协议</a>并同意
                    </li>
                    <li class="regist-li" style=" padding-left:70px;">
                        <input type="submit" value="注&nbsp;册" class="btn"  id="s100" />
                    </li>
                </ul>
				</form>
            </div>
        </div>
        <div class="footer">
            CopyRight® 2010-2014 Jack 联系站长:<a href="mailto:hewhlster@gmail.com">hewhlster@gmail.com																			</a>

        </div>
    </body>
</html>
