<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BLOG | ShowPhotos</title>


<link rel="stylesheet" href="../css/main.css" />
<link rel="stylesheet" href="../css/design.css" />
<link rel="stylesheet" href="../css/uer_edit_blog_info.css" />
<link rel="stylesheet" href="../css/showphoto.css" />
<link rel="stylesheet"
	href="fckeditor/editor/skins/silver/fck_dialog.css" />

<!--[if IE 6]><link type="text/css" rel="stylesheet" href="css/ie6.css" media="all" /><![endif]-->

<script type="text/javascript">
	var GB_ROOT_DIR = "./greybox/"; //指向greybox所在目录;可以为http://xxx/ 格式
</script>

<script type="text/javascript" src="greybox/AJS.js"></script>
<script type="text/javascript" src="greybox/AJS_fx.js"></script>
<script type="text/javascript" src="greybox/gb_scripts.js"></script>
<link href="greybox/gb_styles.css" rel="stylesheet" type="text/css" />
</head>

<body>

	-
	<div class="head">
		<ul class="navlist">
			<li><a class="show_login" href="../login.jsp"><img
					src="../img/home.png" /></a> <a href="javascript:"><img
					src="../img/message.png" /></a> <a href="../showAllArticle.action"><img
					src="../img/bloginfo.png" /></a> <a href="showPhoto.action"><img
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
			<div class="blog_info_txt">${empty sessionScope.idiograph ? "My Signature":sessionScope.idiograph}</div>
		</div>
		<div class="tilte_picture">
			<img src="../img/logo.png" />
		</div>
		<div class="show_logo_flower_user">
			<img src="../img/lily.png">
		</div>
	</div>

	<div class="blog_content">
		<div class="photo_left_content">
			<div class="comments">
				<h2>上传图片</h2>
				<form name="form0" id="form0" action="photoUpload.action"
					method="post" >

					<input type="file" name="myFile" id="file0" multiple="multiple" /><br>
					
					<img src="" id="img0"><br>
					<input name="提交" type="submit" class="button" value="上传" /><br>
				</form>


				<!-- 		<form action="photoUpload.action" method="post"
					enctype="multipart/form-data">
					<div>
						<label>选择要上传的图片：</label> <input type="file" name="myFile" />
					</div>
					<div>
						<label></label>
						<div class="clear"></div>
					</div>
					<div class="button_wrapper">
						<input name="提交" type="submit" class="button" value="上传" />
					</div>
				</form> -->
			</div>
			<!-- <h1 style="text-align:center; font-size: 20px;font-family: '微软雅黑';color: #806AB3;">图片上传</h1>
				<div id="demo" class="demo"></div>
				<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';"></div> -->
		</div>
		<div class="photo_right_content">
			<h2>显示相册图片</h2>
			<div>
				<s:iterator value="#request.photoList" id="photo" status="stu">
					<a
						href='photo/${sessionScope.username}/<s:property value="photo"/>'
						title="我的相册" rel="gb_imageset[photos]"> <img class="mat"
						src='photo/${sessionScope.username}/<s:property value="photo"/>'
						width="90%" height="120px">
					</a>
					<s:if test="(#stu.index + 1) % 3 == 0">
					</s:if>
				</s:iterator>
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
<script type="text/javascript" src="../js/mootools.js"></script>
<script type="text/javascript" src="../js/site.js"></script>
<script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="../js/showphoto.js"></script>
</html>