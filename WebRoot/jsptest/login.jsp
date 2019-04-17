<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
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
	<script type="text/javascript">
		$(function() {
			$(".close a").click(function() {

				$(".login").hide(1000);
				$(".toplist").css("display", "block");

			});
			$(".register_a").click(function() {
				$(".register").css("display", "block");
				$(".login").hide();

			});
			$(".closeregister a").click(function() {
				$(".register").hide(1000);
				$(".toplist").css("display", "block");
			});
			$(".registertilte a").click(function() {
				$(".register").hide();
				$(".login").show();

			});
		});
	</script>

	<body>
		<!--
        	begin:上面的悬浮框
        -->
		<div class="head">
			<ul class="navlist">
				<li>
					<a class="show_login" href="login.jsp"><img src="img/home.png" /></a>
					<!-- <a href="javascript:"><img src="img/message.png" /></a> -->
					<a href="showAllArticle.action"><img src="img/picture.png" /></a>
					<a href="javascript:"><img src="img/music.png" /></a>
					<a href="javascript:"><img src="img/setting.png" /></a>
				</li>
			</ul>
			<div class="searchbox">
				<input class="searchbox" type="text" placeholder="搜点什么呢？" />
				<a class="searchbutton" href="http://cn.bing.com/"><img src="img/searcbutton.png" /></a>
			</div>
		</div>
		<!--
        	begin:页面主要内容
        -->

		<div class="content">
			<div class="logo">
				<div class="tilte">
					<img src="img/logo4.png" />
				</div>
			</div>

			<div class="login">
				<div class="close">
					<a href="javascprit:">X</a>
				</div>
				<ul class="login_ul">
					<li>
						<a class="submit" href="javascript:">  &nbsp;&nbsp;登录 |&nbsp;&nbsp;</a>
						<a class="register_a" href="javascript:">  |&nbsp;&nbsp;注册</a>
					</li>
					<li class="input">
						<input type="text"    name="username" placeholder="用户名" />
					</li>
					<li class="input">
						<input type="password"  name="password" placeholder="密码" />
					</li>
					<li class="input">
						<a href="login.action"><img src="img/yes1.png" /></a>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="javascript:"><img src="img/reset1.png" /></a>
					</li>
				</ul>

			</div>
			<!--注册div设计-->
			<div class="register">
				<div class="registertilte">注册 |
					<a href="javascprit:">登录</a>
				</div>
				<div class="closeregister"><a href="javascprit:">X</a></div>
				<div>
					<input type="text" name="username" placeholder="账号" />*
					<s:fielderror>
						<s:param>username</s:param>
					</s:fielderror>
				</div>
				<div>
					<input type="password" name="password" placeholder="密码" />*
					<s:fielderror>
						<s:param>password</s:param>
					</s:fielderror>
				</div>
				<div>
					<input type="password" name="repassword" placeholder="确认密码" />*
					<s:fielderror>
						<s:param>repassword</s:param>
					</s:fielderror>
				</div>
				<div>
					<input type="text" name="nickname" placeholder="昵称" />*
					<s:fielderror>
						<s:param>nickname</s:param>
					</s:fielderror>
				</div>
				<div>
					<input type="text" name="question" placeholder="密码保护问题" />*
					<s:fielderror>
						<s:param>question</s:param>
					</s:fielderror>
				</div>
				<div>
					<input type="text" name="answer" placeholder="密码保护的答案" />*
					<s:fielderror>
						<s:param>answer</s:param>
					</s:fielderror>
				</div>

				<div class="registerbutton">
					<a id="registersubmit" href="register.action"><img src="img/yes1.png" /></a>
					<a id="registerreset" href="##"><img src="img/reset1.png" /></a>
				</div>
				<!--<div class="closeRegister">
					<a href="javascprit:">X</a>
				</div>
				<div class="dline">
					<input id="rusername" type="text" placeholder="手机/邮箱/用户名" />
				</div>
				<div class="dline">
					<input id="rpassword" type="password" placeholder="请输入密码" />
				</div>
				<div class="dline">
					<input id="repassword" type="password" placeholder="请输入确认密码" />
				</div>
				<div class="dline">
					<input id="email" type="text" placeholder="请输入注册邮箱" />
				</div>
				<div class="dline">
					<input id="qq" type="text" placeholder="请输入注册QQ号码" />
				</div>

				<div class="dline">
					<a id="registersubmit" href="##"><img src="img/yes1.png" /></a>
					<a id="registersubmit" href="##"><img src="img/reset1.png" /></a>
				</div>-->
			</div>
			<div class="toplist">
				<div class="list">
					<ul>
						<li class="listtxt">
							<a href="##">
								<span> 关于计算机 </span>
							</a>
						</li>

						<li class="listtxt">
							<a href="##">
								<span> 关于宇宙 </span>
							</a>
						</li>
						<li class="listtxt">
							<a href="##">
								<span> 关于未来</span>
							</a>
						</li>

						<li class="listtxt">
							<a href="##">
								<span> 关于互联网 </span>
							</a>
						</li>
						<li class="listtxt">
							<a href="##">
								<span> 关于生活 </span>
							</a>
						</li>

					</ul>
				</div>

				<!-- 显示微博的主要内容-->
				<div class="show_bloginfo">
					<s:iterator value="#request.all" id="art" status="sta">
						<div class="comments">
							<div class="comment">
								<div class="meta">
									<span>
										<a href="user/showArticle.action?username=<s:property 								value='#art.username'/>&id=<s:property value='#art.id'/>">
										<s:property value="#art.title"/>
										</a> 
										<small>:</small>
									</span>
									<div class="clear"> </div>
								</div>
							</div>
							<div class="comment alt">
								<div class="meta">
									<span class="datetime">
              	<!-- 发表时间 -->
														发表于:
														<s:date name="#art.date"/>
														<!-- 评论与点击数 -->
														|评论(
														<s:property value="#request.critiqueCounts[#sta.index]"/>
														)|点击(
														<s:property value="#art.hasread"/>
														)|作者:
														<s:property value="#art.username"/>
             						 </span>
									<div class="clear"> </div>
								</div>
							</div>
						</div>
					</s:iterator>
					<div class="comment"  align="center">
						当前第${page.currentPage}页，共${page.totalPage}页，每页显示${page.everyPage}条记录
						<s:if test="#request.page.hasPrePage">
							<a href="showAllArticle.action?currentPage=1">首页</a>
							<a href="showAllArticle.action?currentPage=${page.currentPage -1 }">上一页</a>
						</s:if>
						<s:else>
							首页 上一页
						</s:else>

						<s:if test="#request.page.hasNextPage">
							<a href="showAllArticle.action?currentPage=${page.currentPage + 1 }">下一页</a>
							<a href="showAllArticle.action?currentPage=${page.totalPage }">尾页</a>
						</s:if>
						<s:else>
							下一页 尾页
						</s:else>
					</div>
				</div>
			</div>
		</div>
	
		<!--
        	end:登录主要输入框
        -->
		<div class="foot">
			<div class="describe">(c) Copyright 2017 wuxia. All Rights Reserved. | www.LilyBlog.com</div>
		</div>
	</body>

<!-- <script type="text/javascript">
window.onload=photoMove();
</script>
</head>
<body   >
<div id="wrapper">
  <div id="container">
    <div id="scene"> <img  id="imgs"   src="images/scene.jpg" />
      <h1>Lily  Blog System</h1>
      <div id="scale_area">
        <div id="scale_knob">&raquo; Font Size &laquo;</div>
      </div>
      <div id="menu">
        <div class="holder"> <a href="showAllArticle.action">博客首页</a> </div>
        <div class="holder"> <a href="register.jsp">新博客注册</a> </div>
        <div class="holder"> <a href="login.jsp">博客登录</a> </div>
      </div>
    </div>
    <div id="content">
      <div id="col_left">
        <div class="post">
          <div class="meta"></div>
          <div class="comments"><div class="comment"></div>
            <h2>博客登录</h2>
            <form class="h" action="login.action" method="post">
              <div>
                <label>用户名:</label>
                <input type="text" name="username" />
              </div>
              <div>
                <label>密码:</label>
                <input type="password" name="password" />
              </div>
              <div>
                <label></label>
                <div class="clear"> </div>
              </div>
              <div class="button_wrapper">
                <input name="提交" type="submit" class="button" value="登录" />
              </div>
            </form>
          </div>
        </div>
      </div>
      <div id="col_right">
        <div id="search_box">
          <form action="http://cn.bing.com/"  method="post">
            <div>
              <input type="text" name="search" />
            </div>
            <div class="button_wrapper">
              <input type="submit" value="Search" class="button" />
            </div>
            <div class="clear"> </div>
          </form>
        </div>
         下面你需要修改为一个显示最近浏览的相关的排行榜的热度排行表
        <div id="sidebar">
          <h2>页面导航</h2>
          <ul>
            <li><a href="showAllArticle.action">博客首页</a></li>
            <li><a href="register.jsp">新博客注册</a></li>
            <li><a href="login.jsp">博客登录</a></li>
          </ul>
        </div>
      </div>
      <div class="clear"> </div>
    </div>
    <div id="footer">
      <div class="clear"> </div>
      <hr />
      <p class="credit">Lily Blog System</p>
    </div>
  </div>
</div>
</body> -->
</html>
