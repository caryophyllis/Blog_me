<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.fckeditor.net" prefix="FCK"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Blog User | ShowUserAllBlog</title>

<link type="text/css" rel="stylesheet" href="../css/main.css" />
<link type="text/css" rel="stylesheet" href="../css/design.css" />
<link type="text/css" rel="stylesheet"
	href="../css/uer_edit_blog_info.css" />

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
					src="../img/picture.png" /></a> <a href="javascript:"><img
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

		</div>
		<div class="tilte_picture">
			<img src="../img/logo.png" />
		</div>
		<div class="show_logo_flower_user">
			<img src="../img/lily.png">
		</div>
	</div>
	<div class="blog_content">
		<!-- 
			写一个自己的被浏览过的排行榜
			-->
		<div class="left_content"></div>
		<!--  <form class="editbloginfo_form" action="editBlogInfo.action"
				method="post">
				<div class="edit_tilte">个性化设置</div>
				<div>
					<label>博客标题:</label> <input type="text" name="blogtitle"
						placeholder="快试试！" />
				</div>
				<div>
					<label>个性标语:</label> <input type="text" name="idiograph"
						placeholder="字数不超过10个字哟" />
				</div>
				<div class="button_div">
					<a class="editbloginfo_submit" href="javascript:"><img
						src="../img/submit.png" /></a> <a class="editbloginfo_reset"
						href="javascript:"><img src="../img/submit.png" /></a>
				</div>
			</form>
		</div> -->
		<!--
            	显示自己写过的博文
           -->
		<!--
            	显示自己写过的博文
           -->
		<div class="center_content">
			<div class="post">
				<div class="meta">
					<a class="title" href="">我的全部文章</a>
					<div class="clear"></div>
					<br><br><br>
				</div>
				</div>
				<!-- 循环输出 -->
				<s:iterator value="#request.all" id="art" status="sta">
					<div class="comments">
						<div class="comment">
							<div class="meta">
								<span><a
									href="showArticle.action?username=<s:property value='#art.username'/>&id=<s:property value='#art.id'/>"><s:property
											value="#art.title" /></a> <small>:</small></span>
								<div class="clear"></div>
							</div>
						</div>
						<div class="comment alt">
							<div class="meta">
								<span class="datetime"> <!-- 发表时间 --> 发表于: <s:date
										name="#art.date" /> <!-- 评论与点击数 --> |评论(<s:property
										value="#request.critiqueCounts[#sta.index]" />)|点击(<s:property
										value="#art.hasread" />)
								</span>
								<div class="clear"></div>
							</div>
						</div>
					</div>
				</s:iterator>
				<div class="comment" align="center">
					当前第${page.currentPage}页，共${page.totalPage}页，每页显示${page.everyPage}条记录
					<s:if test="#request.page.hasPrePage">
						<a href="showUserAllArticle.action?currentPage=1">首页</a>
						<a
							href="showUserAllArticle.action?currentPage=${page.currentPage -1 }">上一页</a>
					</s:if>
					<s:else>
				首页
				上一页
			</s:else>

					<s:if test="#request.page.hasNextPage">
						<a
							href="showUserAllArticle.action?currentPage=${page.currentPage + 1 }">下一页</a>
						<a href="showUserAllArticle.action?currentPage=${page.totalPage }">尾页</a>
					</s:if>
					<s:else>
				下一页
				尾页
			</s:else>
			</div>
			</div>
			<div class="right_content">
				<div class="user_list">
					<div class="user_listtxt">
						<a href="login.jsp"><img src="../img/user_home.png" /></a>
					</div>
					<div class="user_listtxt">
						<a href="addArticle.jsp"> <img src="../img/user_blog.png" /></a>
					</div>
					<div class="user_listtxt">
						<a class="listlogin" href="showUserAllArticle.jsp"> <img
							src="../img/user_proiects.png" /></a>
					</div>
					<div class="user_listtxt">
						<a class="listregister" href="showphoto.jsp"> <img
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