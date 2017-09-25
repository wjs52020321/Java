<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<jsp:include page="../header.jsp"></jsp:include>
<div style="margin-top: 60px">
	<form action="newsAdded.jsp" method="post">
	          标题：<input type="text" id="txtTitle" name="txtTitle" value="" /><br />
		标签：<input type="text" id="txtTags" name="txtTags" value="" /><br />
		内容：<textarea id="txtContent" name="txtContent" style="width:200px;height:80px;"></textarea><br /> 
		<input type="submit" id="btnAdd" name="btnAdd" Value="发布" />
	</form>
</div>
<jsp:include page="../foot.jsp"></jsp:include>