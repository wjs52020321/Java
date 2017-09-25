<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.util.Date"%>

<!DOCTYPE html>
<html>
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta charset="utf-8" />
<title>个人中心</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="format-detection" content="telephone=no" />
<link href="themes/ocailong_com/images/touch-icon.png"
	rel="apple-touch-icon-precomposed" />
<link href="themes/ocailong_com/images/favicon.ico" rel="shortcut icon"
	type="image/x-icon" />
<link href="themes/ocailong_com/style.css" rel="stylesheet"
	type="text/css" />

<script type="text/javascript" src="data/static/js/transport.js"></script>
<script type="text/javascript" src="data/static/js/common.js"></script>
<script type="text/javascript" src="data/static/js/user.js"></script>
<script type="text/javascript"
	src="themes/ocailong_com/js/jquery-1.4.4.min.js"></script>

</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");//防止出现乱码
		//1.读取URL里面的Id参数
		String id = request.getParameter("Id");
		String qq = null;
		String email = null;
		String mobile = null;
		ResultSet rs = null;
		Connection connection = null;
		try {
			//1.注册驱动
			Class.forName("com.mysql.jdbc.Driver");
			//2.URL数据库地址
			String url = "jdbc:mysql://localhost:3306/world?useSSL=false";
			String user = "root";
			String password = "123qwe";
			//3.获取链接
			connection = DriverManager.getConnection(url, user, password);
			//获取session
			String username = (String) session.getAttribute("username");
			String sql = "select * from ecs_users where user_name=?";
			//4.预处理sql
			PreparedStatement pstmt = connection.prepareStatement(sql);

			// 5、参数（传参）-- 按照问号的顺序来传参
			pstmt.setString(1, username);
			//6.执行查询
			rs = pstmt.executeQuery();
			if (rs.next())//有数据匹配成功
			{
				qq = rs.getString("qq");
				email = rs.getString("email");
				mobile = rs.getString("mobile_phone");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//7.关闭
			if (rs != null) {
				rs.close();
				connection.close();
			}
			if (connection != null) {
				connection.close();
			}
		}
	%>
	
	<div id="tbh5v0">
		<div class="login">
			<script type="text/javascript" src="data/static/js/utils.js"></script>
			<script type="text/javascript">
				var bonus_sn_empty = "请输入您要添加的红包号码！";
				var bonus_sn_error = "您输入的红包号码格式不正确！";
				var email_empty = "请输入您的电子邮件地址！";
				var email_error = "您输入的电子邮件地址格式不正确！";
				var old_password_empty = "请输入您的原密码！";
				var new_password_empty = "请输入您的新密码！";
				var confirm_password_empty = "请输入您的确认密码！";
				var both_password_error = "您现两次输入的密码不一致！";
				var msg_blank = "不能为空";
				var no_select_question = "您没有完成密码提示问题的操作";
			</script>
			<header id="header">

				<div class="header_l header_return">
					<a class="ico_10" href="user.php"> 返回 </a>
				</div>
				<h1>个人资料</h1>
			</header>
			<div class="blank3"></div>
			<section class="wrap">
				<form name="formEdit" action="peopleed.jsp" method="post"
					onSubmit="return checkEdit()">
					<section class="order_box padd1 radius10"
						style="padding-top: 0; padding-bottom: 0;">
						<div class="table_box table_box2">
							<dl>
								<dd class="dd1">电子邮箱</dd>
								<input name="email" id="email" type="text" placeholder="输入电子邮箱"
									value="<%=email%>" class="dd2" />
							</dl>
							<dl>
								<dd class="dd1">QQ</dd>
								<input name="qq" id="qq" type="text" placeholder="输入qq"
									value="<%=qq%>" class="dd2" />
							</dl>
							<dl>
								<dd class="dd1" id="extend_field5i">手机</dd>
								<input name="mobile" id="mobile" type="text" placeholder="输入手机"
									class="dd2" value="<%=mobile%>" />
								<font style="color: #FF0000"> *</font>
							</dl>
							<dl>
								<dd class="dd1">性别</dd>
								<dd>
									<input style="width: 3%;" type="radio" name="sex" value="1"
										checked="checked"> 男<input type="radio"
										style="width: 3%;" name="sex" value="0"> 女
								</dd>
							</dl>
							<dl>
								<dd class="dd1">生日</dd>
								<dd>
									<input type="date" id="birthday" name="birthday"
										placeholder="1990-01-01" />
								</dd>
							</dl>
							<!--   <dl>
              <dd class="dd1"  id="extend_fieldsi">简介 </dd>
              <textarea name="introduction" id="introduction" placeholder="请输入个人简介"   class="dd2" >
              </textarea>
            </dl> -->



						</div>
					</section>
					<div class="blank3"></div>
					<input name="act" type="hidden" value="act_edit_profile" /> <input
						name="submit" type="submit" value="确认修改" class="c-btn3" />
				</form>
				<script type="text/javascript">
					function checkEdit() {
						//判断邮箱不为空
						var emailInput = document.getElementById("email");
						if (emailInput.value != null && emailInput.value == "") {
							alert("邮箱不能为空！");
							emailInput.focus();
							return false;
						}
						//判断qq不为空
						var qqInput = document.getElementById("email");
						if (qqInput.value != null && qqInput.value == "") {
							alert("邮箱不能为空！");
							qqInput.focus();
							return false;
						}
						//判断手机不为空
						var mobileInput = document.getElementById("手机");
						if (mobileInput.value != null
								&& mobileInput.value == "") {
							alert("shouji不能为空！");
							mobileInput.focus();
							return false;
						}
						//判断性别男女
						var sexInput = document.getElementById("性别");
						if (sexInput.value == 1	) {
							alert("性别伪男");
							
						
						}else if(sexInput.value==0){
							alert("性别为女");
							sexInput.focus();
							return false;
						}
						
						//输入正确 返回值
						return true;
					}
					function checkPassword() {
						//判断旧密码不为空
						var oldInput = document.getElementById("oldpassword");
						if (oldInput.value != null && oldInput.value == "") {
							alert("旧密码不能为空！");
							oldInput.focus();
							return false;
						}
						//判断密码不为空
						var pwd1Input = document.getElementById("password1");
						if (pwd1Input.value != null && pwd1Input.value == "") {
							alert("密码不能为空！");
							pwd1Input.focus();
							return false;
						}
						//判断密码不为空
						var pwd2Input = document.getElementById("password2");
						if (pwd2Input.value != null && pwd2Input.value == "") {
							alert("确认密码不能为空！");
							pwd2Input.focus();
							return false;
						}
						//判断两个密码是否相等 不相等重输
						if (pwd1Input.value != pwd2Input.value) {
							alert("两次输入密码不同，请重新输入！");
							pwd1Input.focus();
							return false;
						}
						//输入正确 返回值
						return true;
					}
					
				</script>
				<div class="blank3"></div>
				<form name="formPassword" action="xgpassword.jsp" method="post"
					onSubmit="return checkPassword()">
					<section class="order_box padd1 radius10"
						style="padding-top: 0; padding-bottom: 0;">
						<div class="table_box table_box2">
							<dl>
								<dd class="dd1">原密码</dd>
								<input placeholder="原密码" id="oldpassword" name="oldpassword"
									type="password" class="dd2" />
							</dl>
							<dl>
								<dd class="dd1">新密码</dd>
								<input placeholder="新密码" id="password1" name="password1"
									type="password" class="dd2" />
							</dl>
							<dl>
								<dd class="dd1">确认密码</dd>
								<input placeholder="确认密码" id="password2" name="password2"
									type="password" class="dd2" />
							</dl>
						</div>
					</section>
					<div class="blank3"></div>
					<input name="act" type="hidden" value="act_edit_password" /> <input
						name="submit" type="submit" class="c-btn3" value="确认修改" />
				</form>
			</section>

			<div id="content" class="footer mr-t20">
				<div class="in">
					<div class="search_box">
						<form method="post" action="search.php" name="searchForm"
							id="searchForm_id">
							<input name="keywords" type="text" id="keywordfoot" />
							<button class="ico_07" type="submit" value="搜索"
								onclick="return check('keywordfoot')"></button>
						</form>
					</div>
					<a href="./" class="homeBtn"> <span class="ico_05"> </span>
					</a> <a href="#top" class="gotop"> <span class="ico_06"> </span>
						<p>TOP</p>
					</a>
				</div>
				<p class="link region">
					<a href="./"> 返回首页 </a> <a href="flow.php"> 购物车 </a> <a
						href="user.php"> 会员中心 </a> <a href="ectouch.php?act=contact">
						联系我们 </a>
				</p>
				<p class="region">&copy; 2005-2017 商城演示站 版权所有，并保留所有权利。</p>
				<div class="favLink region">
					<a href="http://www.ocailong.com"> powered by O菜龙工作室 </a>
				</div>
			</div>


			<div class="global-nav">
				<div class="global-nav__nav-wrap">
					<div class="global-nav__nav-item">
						<a href="./" class="global-nav__nav-link"> <i
							class="global-nav__iconfont global-nav__icon-index">&#xf0001;</i>
							<span class="global-nav__nav-tit">首页</span>
						</a>
					</div>
					<div class="global-nav__nav-item">
						<a href="cat_all.php" class="global-nav__nav-link"> <i
							class="global-nav__iconfont global-nav__icon-category">&#xf0002;</i>
							<span class="global-nav__nav-tit">分类</span>
						</a>
					</div>
					<div class="global-nav__nav-item">
						<a href="javascript:get_search_box();"
							class="global-nav__nav-link"> <i
							class="global-nav__iconfont global-nav__icon-search">&#xf0003;</i>
							<span class="global-nav__nav-tit">搜索</span>
						</a>
					</div>
					<div class="global-nav__nav-item">
						<a href="flow.php?step=cart" class="global-nav__nav-link"> <i
							class="global-nav__iconfont global-nav__icon-shop-cart">&#xf0004;</i>
							<span class="global-nav__nav-tit">购物车</span> <span
							class="global-nav__nav-shop-cart-num" id="carId">0</span>
						</a>
					</div>
					<div class="global-nav__nav-item">
						<a href="user.php" class="global-nav__nav-link"> <i
							class="global-nav__iconfont global-nav__icon-my-yhd">&#xf0005;</i>
							<span class="global-nav__nav-tit">会员中心</span>
						</a>
					</div>
				</div>
				<div class="global-nav__operate-wrap">
					<span class="global-nav__yhd-logo"></span> <span
						class="global-nav__operate-cart-num" id="globalId">0</span>
				</div>
			</div>


			<div id="toTop" class="toTop">
				<img alt="" src="themes/ocailong_com/images/scropTop.png">
			</div>
			<script>
				$(function() {
					isIe6 = false;

					if ('undefined' == typeof (document.body.style.maxHeight)) {
						isIe6 = true;
					}

					var offset = $("#toTop").offset();
					var bottom = $("#toTop").css("bottom");
					$(window).scroll(function() {
						if ($(window).scrollTop() > 500) {
							$("#toTop").fadeIn(800);

							if (isIe6) {
								$("#toTop").css("position", "absolute")
								$("#toTop").css("bottom", bottom)
							}
						} else {
							$("#toTop").fadeOut(500);
						}

					});

					$("#toTop").click(function() {
						$('body,html').animate({
							scrollTop : 0
						}, 500);
						return false;
					});

				})
			</script>

			<script type="text/javascript"
				src="themes/ocailong_com/js/zepto.min.js"></script>
			<script type="text/javascript">
				Zepto(function($) {
					var $nav = $('.global-nav'), $btnLogo = $('.global-nav__operate-wrap');
					//点击箭头，显示隐藏导航
					$btnLogo.on('click', function() {
						if ($btnLogo.parent().hasClass('global-nav--current')) {
							navHide();
						} else {
							navShow();
						}
					});

					var navShow = function() {
						$nav.addClass('global-nav--current');
					}

					var navHide = function() {
						$nav.removeClass('global-nav--current');
					}

				})
				function get_search_box() {
					try {
						document.getElementById('get_search_box').click();
					} catch (err) {
						document.getElementById('keywordfoot').focus();
					}
				}
			</script>
		</div>
	</div>
	<div style="width: 1px; height: 1px; overflow: hidden">
		<a href="http://www.ecshop.com" target="_blank"
			style="font-family: Verdana; font-size: 11px;">Powered&nbsp;by&nbsp;<strong><span
				style="color: #3366FF">ECShop</span>&nbsp;<span
				style="color: #FF9966">v2.7.3</span></strong></a>&nbsp;
	</div>
</body>
<script type="text/javascript">
	var msg_title_empty = "留言标题为空";
	var msg_content_empty = "留言内容为空";
	var msg_title_limit = "留言标题不能超过200个字";
</script>
</html>
