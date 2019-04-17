<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Blog | Login</title>

<link type="text/css" rel="stylesheet" href="css/design.css" media="all" />
<link rel="stylesheet" href="css/ie6.css" />
<link rel="stylesheet" href="css/main.css" />

</head>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/layer/layer.js"></script>
<script type="text/javascript" src="js/login_register.js"></script>
<body>
	<!--
        	begin:上面的悬浮框
        -->
	<div class="head">
		<ul class="navlist">
			<li><a class="show_login" href="login.jsp"><img
					src="img/home.png" /></a> <!-- <a href="javascript:"><img src="img/message.png" /></a>  -->
				<a href="showAllArticle.action"><img src="img/bloginfo.png" /></a>
				<a href=""><img src="img/picture.png" /></a> <!-- <a href="javascript:"><img src="img/music.png" /></a> -->
				<a href="javascript:"><img src="img/setting.png" /></a></li>
		</ul>
		<div class="searchbox">
			<div class="searchinput">
				<input type="text" placeholder="搜点什么呢？" />
			</div>
			<div class="searchbutton">
				<a href="http://cn.bing.com/"><img src="img/searcbutton.png" /></a>
			</div>
		</div>
	</div>
	<div class="show_logo_flower">
		<img src="img/lily.png">
	</div>
	<!--
        	begin:页面主要内容
        -->
	<form class="login_form" action="login.action" method="post">
		<div class="login">
			<div class="close">
				<a href="showAllArticle.action">X</a>
			</div>
			<ul class="login_ul">
				<li><a class="submit" href="javascript:"> &nbsp;&nbsp;登录
						|&nbsp;&nbsp;</a> <a class="register_a" href="javascript:">
						|&nbsp;&nbsp;注册</a></li>
				<li class="input"><input type="text" name="username"
					class="username" placeholder="用户名" /></li>
				<li class="input"><input type="password" name="password"
					class="password" placeholder="密码" /></li>
				<li class="input"><a class="login_submit_a"><img
						src="img/yes1.png" /></a> &nbsp;&nbsp;&nbsp;&nbsp; <a
					href="javascript:"><img src="img/reset1.png" /></a></li>
			</ul>

		</div>
	</form>
	<form class="register_form" action="register.action" method="post">
		<div class="register">
			<div class="registertilte">
				注册 | <a href="javascprit:">登录</a>
			</div>
			<div class="closeregister">
				<a href="showAllArticle.action">X</a>
			</div>
			<div>
				<input type="text" name="username" class="rusername"
					placeholder="账号" />*
				<s:fielderror>
					<s:param>username</s:param>
				</s:fielderror>
			</div>
			<div>
				<input type="password" name="password" class="rpassword"
					placeholder="密码" />*
				<s:fielderror>
					<s:param>password</s:param>
				</s:fielderror>
			</div>
			<div>
				<input type="password" name="repassword" class="rrepassword"
					placeholder="确认密码" />*
				<s:fielderror>
					<s:param>repassword</s:param>
				</s:fielderror>
			</div>
			<div>
				<input type="text" name="nickname" class="rnickname"
					placeholder="昵称" />*
				<s:fielderror>
					<s:param>nickname</s:param>
				</s:fielderror>
			</div>
			<div>
				<input type="text" name="question" class="rquestion"
					placeholder="密码保护问题" />*
				<s:fielderror>
					<s:param>question</s:param>
				</s:fielderror>
			</div>
			<div>
				<input type="text" name="answer" class="ranswer"
					placeholder="密码保护的答案" />*
				<s:fielderror>
					<s:param>answer</s:param>
				</s:fielderror>
			</div>

			<div class="registerbutton">
				<a class="registersubmit" href="javascript:"><img
					src="img/yes1.png" /></a> <a class="registerreset" href="javascript:"><img
					src="img/reset1.png" /></a>
			</div>
		</div>
	</form>
	<div class="list">
		<ul>
			<li class="listtxt"><a href="##"> <img
					src="img/computer.png" />
			</a></li>

			<li class="listtxt"><a href="javascript:"> <img
					src="img/cosmos.png" />
			</a></li>
			<li class="listtxt"><a class="listlogin" href="javascript:">
					<img src="img/login.png" />
			</a></li>

			<li class="listtxt"><a class="listregister" href="javascript:">
					<img src="img/register.png" />
			</a></li>
			<li class="listtxt"><a href="##"> <img src="img/aboutme.png" /></a></li>

		</ul>
	</div>
	<div class="content">
		<div class="logo">
			<div class="tilte">
				<img src="img/logo.png" />
			</div>
		</div>
		<div class="content_full"></div>
	</div>
	<div class="foot">
		<div class="describe">(c) Copyright 2017 wuxia. All Rights
			Reserved. | www.LilyBlog.com</div>
	</div>
</body>
</html>
