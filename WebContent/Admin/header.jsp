<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>后台管理</title>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Aircraft/lib/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/Aircraft/lib/font-awesome/css/font-awesome.css">

<script src="<%=request.getContextPath()%>/Aircraft/lib/jquery-1.11.1.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/Aircraft/lib/jQuery-Knob/js/jquery.knob.js" type="text/javascript"></script>

<script type="text/javascript">
	$(function() {
		$(".knob").knob();
	});
</script>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Aircraft/stylesheets/theme.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Aircraft/stylesheets/premium.css">

</head>
<body class=" theme-blue">
<%
	if (session.getAttribute("username") == null) {
		//管理后台只允许登录，如果用户没有登录，跳转到登录页面
		response.sendRedirect(request.getContextPath()+"/Admin/Account/login.jsp");
	}
%>

	<script type="text/javascript">
		$(function() {
			var match = document.cookie.match(new RegExp('color=([^;]+)'));
			if (match)
				var color = match[1];
			if (color) {
				$('body').removeClass(function(index, css) {
					return (css.match(/\btheme-\S+/g) || []).join(' ')
				})
				$('body').addClass('theme-' + color);
			}

			$('[data-popover="true"]').popover({
				html : true
			});

		});
	</script>
	<style type="text/css">
#line-chart {
	height: 300px;
	width: 800px;
	margin: 0px auto;
	margin-top: 1em;
}

.navbar-default .navbar-brand, .navbar-default .navbar-brand:hover {
	color: #fff;
}
</style>

	<script type="text/javascript">
		$(function() {
			var uls = $('.sidebar-nav > ul > *').clone();
			uls.addClass('visible-xs');
			$('#main-menu').append(uls.clone());
		});
	</script>

	<link rel="shortcut icon" href="../assets/ico/favicon.ico">
	<link rel="apple-touch-icon-precomposed" sizes="144x144"
		href="../assets/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114"
		href="../assets/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72"
		href="../assets/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed"
		href="../assets/ico/apple-touch-icon-57-precomposed.png">

	<div class="navbar navbar-default" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="" href="<%=request.getContextPath()%>/index.html"><span class="navbar-brand">
			<img alt="提示" src="<%=request.getContextPath()%>/UploadImages/<%=request.getSession().getAttribute("avatar")%>" style="border-radius: 50%;max-width:50px;">管理后台</span></a>
		</div>

		<div class="navbar-collapse collapse" style="height: 1px;">
			<ul id="main-menu" class="nav navbar-nav navbar-right">
				<li class="dropdown hidden-xs"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <span
						class="glyphicon glyphicon-user padding-right-small"
						style="position: relative; top: 3px;"></span><%=session.getAttribute("username")%><i
						class="fa fa-caret-down"></i>
				</a>

					<ul class="dropdown-menu"> 
						<li><a href="./">我的账号</a></li>
						<li class="divider"></li>						
						<li><a tabindex="-1" href="<%=request.getContextPath()%>/Admin/Account/logout.jsp">退出</a></li>
					</ul></li>
			</ul>

		</div>
	</div>
	<div class="sidebar-nav">
		<ul>
			<li><a href="#" data-target=".dashboard-menu" class="nav-header"
				data-toggle="collapse"><i class="fa fa-fw fa-dashboard"></i>
					控制面板<i class="fa fa-collapse"></i></a></li>
			<li><ul class="dashboard-menu nav nav-list collapse in">
					<li><a href="<%=request.getContextPath()%>/Admin/index.jsp"><span class="fa fa-caret-right"></span>
							主页</a></li>
				</ul></li>

			<li><a href="#" data-target=".news-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-fighter-jet"></i>新闻管理<i class="fa fa-collapse"></i></a></li>
			<li><ul class="news-menu nav nav-list collapse">
					<li><a href="<%=request.getContextPath()%>/Admin/New/newsIndex.jsp"><span class="fa fa-caret-right"></span>新闻列表</a></li>
					<li><a href="<%=request.getContextPath()%>/Admin/New/newsAdd.jsp"><span class="fa fa-caret-right"></span>发布新闻</a></li>
				</ul></li>
			
			<li><a href="#" data-target=".jobs-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-legal"></i>工作管理<i class="fa fa-collapse"></i></a></li>
			<li><ul class="jobs-menu nav nav-list collapse">
					<li><a href="<%=request.getContextPath()%>/Admin/Job/jobsIndex.jsp"><span class="fa fa-caret-right"></span>工作列表</a></li>
					<li><a href="<%=request.getContextPath()%>/Admin/Job/jobsAdd.jsp"><span class="fa fa-caret-right"></span>发布工作</a></li>
				</ul></li>
			
			<li><a href="#" data-target=".employees-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-male"></i>员工管理<i class="fa fa-collapse"></i></a></li>
			<li><ul class="employees-menu nav nav-list collapse">
					<li><a href="<%=request.getContextPath()%>/Admin/Emp/employeeIndex.jsp"><span class="fa fa-caret-right"></span>员工列表</a></li>
					<li><a href="<%=request.getContextPath()%>/Admin/Emp/employeeAdd.jsp"><span class="fa fa-caret-right"></span>新增员工</a></li>
				</ul></li>
			
			<li><a href="#" data-target=".accounts-menu" class="nav-header collapsed" data-toggle="collapse"><i class="fa fa-fw fa-briefcase"></i>账户管理<i class="fa fa-collapse"></i></a></li>
			<li><ul class="accounts-menu nav nav-list collapse">
			<li><a href="<%=request.getContextPath()%>/Admin/Profile/UploadImage.jsp"><span class="fa fa-caret-right"></span>头像设置</a></li>
					<li><a href="<%=request.getContextPath()%>/Admin/Account/login.jsp"><span class="fa fa-caret-right"></span>登录</a></li>
					<li><a href="<%=request.getContextPath()%>/Admin/Account/logout.jsp"><span class="fa fa-caret-right"></span>注销</a></li>
					<li><a href="<%=request.getContextPath()%>/Admin/Account/register.jsp"><span class="fa fa-caret-right"></span>注册</a></li>
				</ul></li>			

			<li><a href="help.html" class="nav-header"><i
					class="fa fa-fw fa-question-circle"></i> Help</a></li>
			<li><a href="faq.html" class="nav-header"><i
					class="fa fa-fw fa-comment"></i> Faq</a></li>
			<li><a href="http://portnine.com/bootstrap-themes/aircraft"
				class="nav-header" target="blank"><i class="fa fa-fw fa-heart"></i>
					Get Premium</a></li>
		</ul>
	</div>
	<div class="content">       
        <div class="main-content">