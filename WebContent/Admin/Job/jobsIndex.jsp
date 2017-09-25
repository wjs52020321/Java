<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page import="com.alibaba.entity.Jobs"%>
<%@ page import="com.alibaba.service.JobsService"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Date"%>
<jsp:include page="../header.jsp"></jsp:include>
<table class="table table-hover" style="margin-top: 60px">
	<thead>
		<tr>
			<th>编号</th>
			<th>标题</th>
			<th>标签</th>
			<th>管理</th>
		</tr>
	</thead>
	<%
		//调用三层
		JobsService bll = new JobsService();
		List<Jobs> listData = bll.getAllData();
		for (Jobs j : listData) {
			out.print("<tr>");

			out.print("<td>");
			out.print(j.getId());
			out.print("</td>");

			out.print("<td>");
			if (j.getTitle() != null) {
				if (j.getTitle().length() > 10) {
					out.print(j.getTitle().substring(0, 10) + "...");
				} else {
					out.print(j.getTitle());
				}
			} else {
				out.print(j.getTitle());
			}
			out.print("</td>");

			out.print("<td>");
			if (j.getTags() != null) {
				if (j.getTags().length() > 10) {
					out.print(j.getTags().substring(0, 10) + "...");
				} else {
					out.print(j.getTags());
				}
			} else {
				out.print(j.getTags());
			}
			out.print("</td>");

			out.print("<td>");
			if (session.getAttribute("username") != null) {
				out.print("<a href='jobsAdd.jsp?'>发布</a>&nbsp");
				out.print("<a href='jobsEdit.jsp?Id=" + j.getId() + "'>编辑</a>&nbsp");
				out.print("<a href='jobsDelete.jsp?Id=" + j.getId() + "'>删除</a>");
			}
			out.print("</td>");

			out.println("</tr>");
		}
	%>
</table>
<jsp:include page="../foot.jsp"></jsp:include>