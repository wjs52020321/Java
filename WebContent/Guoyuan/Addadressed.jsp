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
<title>新增地址</title>
</head>
<body>
 <%
 //个人中心只有登录用户可以访问，否则跳转到登录界面
	if (session.getAttribute("username") == null){	
	response.sendRedirect(request.getContextPath()+"/mobile/login.jsp");
}			
 %>
<%

request.setCharacterEncoding("UTF-8");//防止出现乱码
//1.读取URL里面的Id参数
String username = (String) session.getAttribute("username");
int userid = (int) session.getAttribute("userid");
String name=request.getParameter("name");
String mobile=request.getParameter("mobile");
String email=request.getParameter("email");
String address=request.getParameter("address");
int city=Integer.parseInt(request.getParameter("city"));
int district=Integer.parseInt(request.getParameter("district"));
int province=Integer.parseInt(request.getParameter("province"));
String zipcode=request.getParameter("zipcode");
//2.调用三层代码 保存到数据库Mysql
try {
		//1.注册驱动
		Class.forName("com.mysql.jdbc.Driver");
		//2.URL数据库地址
		String url = "jdbc:mysql://localhost:3306/world?useSSL=false";
		String user = "root";
		String password3 = "123qwe";
		//3.获取链接
		Connection connection = DriverManager.getConnection(url, user, password3);
		String sql = "INSERT INTO OrderAddress(UserId,Name,Mobile,Email,ProvinceId,CityId,DistrictId,Address,ZIPCode)VALUES(?,?,?,?,?,?,?,?,?)";
		//4.预处理sql
		PreparedStatement pstmt = connection.prepareStatement(sql);
		// 5、参数（传参）-- 按照问号的顺序来传参
		pstmt.setInt(1, userid);
		pstmt.setString(2, name);
		pstmt.setString(3, mobile);
		pstmt.setString(4, email);
		pstmt.setInt(5, province);
		pstmt.setInt(6, city);
		pstmt.setInt(7, district);
		pstmt.setString(8, address);
		pstmt.setString(9, zipcode);
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
response.sendRedirect(request.getContextPath()+"/mobile/userIndex.jsp");
%>
</body>
</html>