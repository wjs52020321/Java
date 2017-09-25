<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.util.Date"%>
<jsp:include page="../header.jsp"></jsp:include>
<%
//1.读取URL里面的Id参数
String id=request.getParameter("Id");
	try {
		//1.注册驱动
		Class.forName("com.mysql.jdbc.Driver");
		//2.URL数据库地址
		String url = "jdbc:mysql://localhost:3306/alibaba?useSSL=false";
		String user = "root";
		String password = "123qwe";
		//3.获取链接
		Connection connection = DriverManager.getConnection(url, user, password);
		String sql = "delete from news where Id="+id;
		//4.预处理sql
		PreparedStatement pstmt = connection.prepareStatement(sql);
		//5.执行查询
		boolean rs = pstmt.execute();
		//6.关闭
		connection.close();
		//7.跳转到首页
		response.sendRedirect(request.getContextPath()+"/News/newsIndex.jsp");
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	}
%>
<jsp:include page="../foot.jsp"></jsp:include>