<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<jsp:include page="../header.jsp"></jsp:include>
<div style="margin-top: 60px">
	<form action="employeeAdded.jsp" method="post">
		姓名：<input type="text" id="txtName" name="txtName" value="" /><br />
		职位：<input type="text" id="txtTitle" name="txtTitle" value="" /><br />
		地址：
		<textarea id="txtAddress" name="txtAddress"
			style="width: 200px; height: 80px;"></textarea>
		<br /> <input type="submit" id="btnAdd" name="btnAdd" Value="录入" />
	</form>
</div>
<jsp:include page="../foot.jsp"></jsp:include>