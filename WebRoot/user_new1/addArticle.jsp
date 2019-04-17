<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Blog User | EditBlogInfo</title>

<link type="text/css" rel="stylesheet" href="../css/main.css"
	media="all" />
<link type="text/css" rel="stylesheet" href="../css/design.css"
	media="all" />
<link type="text/css" rel="stylesheet"
	href="../css/uer_edit_blog_info.css" media="all" />
<!--[if IE 6]><link type="text/css" rel="stylesheet" href="css/ie6.css" media="all" /><![endif]-->
<script type="text/javascript" src="../js/mootools.js"></script>
<script type="text/javascript" src="../js/site.js"></script>
<script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="../js/editbloginfo.js"></script>
</head>

<body>
	<div class="head">
		<ul class="navlist">
			<li><a class="show_login" href="../login.jsp"><img
					src="../img/home.png" /></a> <a href="javascript:"><img
					src="../img/message.png" /></a> <a href="../showAllArticle.action"><img
					src="../img/bloginfo.png" /></a> <a href=""><img
					src="../img/picture.png" /></a> <a href="showPhoto.action"><img
					src="../img/music.png" /></a> <a class="settingmenu"
				href="javascript:"><img src="../img/setting.png" /></a></li>
		</ul>
		<div class="searchbox">
			<div class="searchinput">
				<input type="text" placeholder="搜点什么呢？" />
			</div>
			<div class="searchbutton">
				<a href="http://cn.bing.com/"><img src="../img/searcbutton.png" /></a>
			</div>
		</div>
	</div>

	<div class="logo_user">
		<div class="show_user_Bolg_tilte">
			<div class="blog_title_txt">${empty sessionScope.blogtitle ? "Blog System":sessionScope.blogtitle}
			</div>
			<div class="blog_info_txt">${empty sessionScope.idiograph ? "My Signature":sessionScope.idiograph}
			</div>
			<!--<div class="show_edit_info_div"><a href="javascript:">编辑个签</a></div>-->
		</div>
		<div class="tilte_picture">
			<img src="../img/logo.png" />
		</div>
		<div class="show_logo_flower_user">
			<img src="../img/lily.png">
		</div>
	</div>

	<div class="blog_content">
	<div class="left_content"></div>

		<div class="center_content">

			<h2>添加文章</h2>
			<form class="h" action="addArticle.action" method="post">
				<div>
					<label>标题：</label> <input type="text" name="title" />
				</div>
				<div>
					<label>内容：</label>
					<FCK:editor instanceName="content" basePath="/user/fckeditor"
						toolbarSet="myToolbar" height="400"></FCK:editor>
				</div>
				<div>
					<label></label>
					<div class="clear"></div>
				</div>
				<div class="button_wrapper">
					<input name="提交" type="submit" class="button" value="提交" />
				</div>
			</form>
		</div>
	



	<div class="right_content">
		<div class="user_list">
			<div class="user_listtxt">
				<a href="login.jsp"><img src="../img/user_home.png" /></a>
			</div>
			<div class="user_listtxt">
				<a href="showUserAllArticle.jsp"> <img
					src="../img/user_blog.png" /></a>
			</div>
			<div class="user_listtxt">
				<a class="listlogin" href="javascript:"> <img
					src="../img/user_proiects.png" /></a>
			</div>
			<div class="user_listtxt">
				<a class="listregister" href="showPhoto.action"> <img
					src="../img/user_contact.png" />
				</a>
			</div>
			<div class="user_listtxt">
				<a href="##"> <img src="../img/user_about.png" /></a>
			</div>
		</div>
	</div>
	</div>
	</div>
	<div class="foot_user">
		<div class="about_me">
			<div>
				<a><img src="../img/linkedin.png" /></a>
			</div>
			<div>
				<a><img src="../img/twitter.png" /></a>
			</div>
			<div>
				<a><img src="../img/googleplus.png" /></a>
			</div>
			<div>
				<a><img src="../img/rss.png" /></a>
			</div>
			<div class="describe">(c) Copyright 2017 wuxia. All Rights
				Reserved. | www.LilyBlog.com</div>
		</div>

	</div>
</body>

</html>