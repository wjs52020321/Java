<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除地址</title>
</head>
<body>
<%
	//1.读取URL里面的Id参数
	String id=request.getParameter("id");
	try {
		//1.注册驱动
		Class.forName("com.mysql.jdbc.Driver");
		//2.URL数据库地址
		String url = "jdbc:mysql://localhost:3306/world?useSSL=false";
		String user = "root";
		String password = "123qwe";
		//3.获取链接
		Connection connection = DriverManager.getConnection(url, user, password);
		String sql = "delete from OrderAddress where Id=" + id;
		//4.预处理sql
		PreparedStatement pstmt = connection.prepareStatement(sql);
		//5.执行查询
		boolean rs = pstmt.execute();
		//6.关闭	
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