<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");//防止出现乱码
//1.读取URL里面的Id参数
String name=request.getParameter("txtName");
String title=request.getParameter("txtTitle");
String address=request.getParameter("txtAddress");
//2.调用三层代码 保存到数据库Mysql
try {
		//1.注册驱动
		Class.forName("com.mysql.jdbc.Driver");
		//2.URL数据库地址
		String url = "jdbc:mysql://localhost:3306/alibaba?useSSL=false";
		String user = "root";
		String password3 = "123qwe";
		//3.获取链接
		Connection connection = DriverManager.getConnection(url, user, password3);
		String sql = "INSERT INTO employee(Name,Title,Address)VALUES(?,?,?)";
		//4.预处理sql
		PreparedStatement pstmt = connection.prepareStatement(sql);
		// 5、参数（传参）-- 按照问号的顺序来传参
		pstmt.setString(1, name);
		pstmt.setString(2, title);
		pstmt.setString(3, address);
		//6.执行查询
		boolean rs = pstmt.execute();
		//7.关闭
		connection.close();
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	}
//3.跳转到首页
response.sendRedirect(request.getContextPath()+"/Employee/employeeIndex.jsp");
%>
</body>
</html>