<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>退出账号</title>
</head>
<body>
<% 
//清除会话
session.removeAttribute("username");
//跳转首页
response.sendRedirect(request.getContextPath()+"/index.jsp");
%>
</body>
</html>