<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<jsp:include page="../header.jsp"></jsp:include>
<%
request.setCharacterEncoding("UTF-8");//防止出现乱码
	//1.读取URL里面的Id参数
	String id = request.getParameter("Id");
	String title = null;
	Connection connection = null;
	ResultSet rs = null;
	try {
		//1.注册驱动
		Class.forName("com.mysql.jdbc.Driver");
		//2.URL数据库地址
		String url = "jdbc:mysql://localhost:3306/alibaba?useSSL=false";
		String user = "root";
		String password = "123qwe";
		//3.获取链接
		connection = DriverManager.getConnection(url, user, password);
		String sql = "select * from news where Id=?";
		//4.预处理sql
		PreparedStatement pstmt = connection.prepareStatement(sql);
		// 5、参数（传参）-- 按照问号的顺序来传参
		pstmt.setString(1, id);
		//6.执行查询
		rs = pstmt.executeQuery();
		if (rs.next())//有数据匹配成功
		{
			title = rs.getString("Title");
		}
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		//7.关闭
		if (rs != null) {
			rs.close();
			connection.close();
		}
		if (connection != null) {
			connection.close();
		}
	}
%>
<div style="margin-top: 60px">
	<form action="newsEdited.jsp" method="post">
		<input type="hidden" id="txtId" name="txtId" value="<%=id%>" /><br />
		标题：<input type="text" id="txtTitle" name="txtTitle" value="<%=title%>" /><br />
		<input type="submit" id="btnSave" name="btnSave" Value="保存" />
	</form>
</div>
<jsp:include page="../foot.jsp"></jsp:include>