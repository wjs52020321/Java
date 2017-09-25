<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page import="com.alibaba.entity.Employee"%>
<%@ page import="com.alibaba.service.AlibabaService"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Date"%>
<jsp:include page="../header.jsp"></jsp:include>
<table class="table table-hover" style="margin-top: 60px">
	<thead>
		<tr>
			<th>编号</th>
			<th>姓名</th>
			<th>职位</th>
			<th>管理</th>
		</tr>
	</thead>
	<%
			//1.调用三层
			AlibabaService bll= new AlibabaService();
			List<Employee> listData= bll.getAllData();
			for(Employee e : listData )
			{
	            %>
	            <tr>
	             <td><%=e.getId() %></td>
	             <td><%=e.getName() %></td>
	             <td><%=e.getTitle() %></td>  
	            <%
	            out.print("<td>");
	            if (session.getAttribute("username") != null) {
	            out.print("<a href='employeeAdd.jsp'>新增</a>&nbsp");
	            out.print("<a href='employeeEdit.jsp?Id="+ e.getId() +"'>编辑</a>&nbsp");
	            out.print("<a href='employeeDelete.jsp?Id="+ e.getId() +"'>删除</a>");
	            }
	            out.print("</td>");     
	            out.println("</tr>");	
			} 
%>
	
</table>
<jsp:include page="../foot.jsp"></jsp:include>