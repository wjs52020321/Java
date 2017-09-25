<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.util.Date"%>
<%@ page import="com.alibaba.tools.HashMD5"%>
<html>
<head>
<title>登录成功</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");//防止出现乱码
		//页面提交数据，Session会话
		String usernameInput = request.getParameter("username");
		String passwordInput = request.getParameter("password");
		//访问数据库，Java验证用户名密码
		Connection connection=null;
		ResultSet rs=null;
		try {
			//1.注册驱动
			Class.forName("com.mysql.jdbc.Driver");
			//2.URL数据库地址
			String url="jdbc:mysql://localhost:3306/alibaba?useUnicode=true& characterEncoding=UTF-8&useSSL=false";
		String user = "root";
		String password3 = "123qwe";

			//3.获取链接
			connection = DriverManager.getConnection(url, user, password3);
			String sql = "select * from users where Name=? and Password=?";
			//4.预处理sql
			PreparedStatement pstmt = connection.prepareStatement(sql);
			// 5、参数（传参）-- 按照问号的顺序来传参
			pstmt.setString(1, usernameInput);
			pstmt.setString(2, HashMD5.getMD5(passwordInput));
			//6.执行查询
			rs = pstmt.executeQuery();
			if (rs.next())//有数据匹配成功 保存session和cookie
			{
				//获取UserId
				int userId =rs.getInt("Id");
				//如果登录成功 保存到Session，显示登录用户
				session.setAttribute("username", usernameInput);
				session.setAttribute("userid", userId);
				session.setAttribute("userid", rs.getInt("Id"));
				session.setAttribute("avater", rs.getString("ImageURL"));
				//使用Cookie记住密码
				Cookie cookieName = new Cookie("username", usernameInput);
				Cookie cookiePassword = new Cookie("password", passwordInput);
				response.addCookie(cookieName);
				response.addCookie(cookiePassword);
				//JSP页面跳转
				response.sendRedirect(request.getContextPath()+"/Guoyuan/userIndex.jsp");
				//Request请求对象 包含用户请求的所以数据
				//response应答 相应 数据对象 包含服务器 回传给客户端浏览器的所以数据
			} else//失败 重新登录页面
			{
				response.sendRedirect(request.getContextPath()+"/Guoyuan/login.jsp");
			}			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}	
		finally{
			//7.关闭
			if(rs!=null){
				rs.close();
			connection.close();
			}
			if(connection!=null){
			connection.close();
			}
		}
	%>
</body>
</html>