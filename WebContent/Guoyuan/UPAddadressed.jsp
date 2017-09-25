<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.util.Date"%>
<%@ page import="com.alibaba.tools.HashMD5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改地址</title>
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
		String username = (String) session.getAttribute("username");
	    int userid = (int) session.getAttribute("userid");
		//获取用户提交保存		
		String id=request.getParameter("id");
		String name = request.getParameter("name");
		String mobile = request.getParameter("mobile");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String zipcode = request.getParameter("zipcode");

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
			String sql = "UPDATE OrderAddress SET  Name=?,Mobile=?,Email=?,Address=?,ZIPCode=? WHERE Id= ?  ";
			//4.预处理sql
			PreparedStatement pstmt = connection.prepareStatement(sql);
			// 5、参数（传参）-- 按照问号的顺序来传参
			pstmt.setString(1, name);
			pstmt.setString(2, mobile);
			pstmt.setString(3, email);
			pstmt.setString(4, address);
			pstmt.setString(5, zipcode);		
			pstmt.setString(6, id);
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