<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP实战</title>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="../" class="navbar-brand">阿里巴巴</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="<%=request.getContextPath()%>/index.jsp">主页</a></li>
					<li><a href="<%=request.getContextPath()%>/Emp/employeeIndex.jsp">员工三层</a></li>
					<li><a href="<%=request.getContextPath()%>/News/newsIndex.jsp">新闻三层</a></li>
					<li><a href="<%=request.getContextPath()%>/Job/jobsIndex.jsp">工作三层</a></li>
					<li><a href="<%=request.getContextPath()%>/about.jsp">关于</a></li>
					<li><a href="<%=request.getContextPath()%>/UploadImage.jsp" target="_blank">头像</a></li>
					<li><a href="<%=request.getContextPath()%>/contact.jsp">联系方式 </a></li>
				</ul>
				<%
					if (session.getAttribute("username") != null) {
				%>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="<%=request.getContextPath()%>/index.jsp">欢迎：<%=session.getAttribute("username")%></a></li>
					<li><a href="<%=request.getContextPath()%>/Account/logout.jsp">注销</a></li>
				</ul>
				<%
					} else {
				%>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="<%=request.getContextPath()%>/Account/register.jsp">注册</a></li>
					<li><a href="<%=request.getContextPath()%>/Account/login.jsp">登录</a></li>
				</ul>
				<%
					}
				%>
			</div>
		</div>
	</div>
	<div class="container body-content">