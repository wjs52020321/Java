<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="com.alibaba.tools.HashMD5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改账户</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");//防止出现乱码
		if (request.getMethod().equals("POST")) {
			//做POST的处理
		} else if (request.getMethod().equals("GET")) {
			//GET
		}
	%>
	<%
		//获取session保存的
		String name = (String) session.getAttribute("username");
		//获取用户提交保存
		String email = request.getParameter("email");
		String qq = request.getParameter("qq");
		String mobile = request.getParameter("mobile");
		String birthday = request.getParameter("birthday");
		int sex = Integer.parseInt(request.getParameter("sex"));

		//访问数据库，Java验证用户名密码
		Connection connection = null;
		ResultSet isSet = null;
		try {
			//1.注册驱动
			Class.forName("com.mysql.jdbc.Driver");
			//2.URL数据库地址
			String url = "jdbc:mysql://localhost:3306/world?useSSL=false";
			String user = "root";
			String password3 = "123qwe";
			//3.获取链接
			connection = DriverManager.getConnection(url, user, password3);
			String sql = "UPDATE ecs_users SET email = ?,qq=?,mobile_phone=?,sex=?,birthday=?WHERE user_name = ?  ";
			//4.预处理sql
			PreparedStatement pstmt = connection.prepareStatement(sql);
			// 5、参数（传参）-- 按照问号的顺序来传参
			pstmt.setString(1, email);
			pstmt.setString(2, qq);
			pstmt.setString(3, mobile);
			pstmt.setInt(4, sex);
			pstmt.setString(5, birthday);
			pstmt.setString(6, name);
			//6.执行查询
			//boolean //isSet = 
			pstmt.execute();
			//7.关闭
			connection.close();
			//7.跳转到首页
			response.sendRedirect(request.getContextPath() + "/mobile/index.jsp");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	%>

</body>
</html>