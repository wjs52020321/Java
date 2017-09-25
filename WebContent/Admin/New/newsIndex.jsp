<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page import="com.alibaba.entity.News"%>
<%@ page import="com.alibaba.service.NewsService"%>
<%@ page import="java.util.List"%>
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
	//从URL里面解析页面index
	String sIndex =request.getParameter("index");
			//1.调用三层
			NewsService bll= new NewsService();
	int pageIndex=1;
	if(sIndex!=null && sIndex!=""){
		pageIndex =Integer.parseInt(sIndex);//类型转换
	}
	int pageSize=20;
	int totalCount=bll.GetAllCount();
			List<News> listData= bll.GetAllDataPaging(pageIndex, pageSize);
			for(News n : listData )
			{
	            %>
	            <tr>
	             <td><%=n.getId() %></td>
	             <td><%=n.getTitle() %></td>
	             <td><%=n.getTags() %></td>  
	            <%
	            out.print("<td>");
	            if (session.getAttribute("username") != null) {
	            out.print("<a href='newsAdd.jsp'>新增</a>&nbsp");
	            out.print("<a href='newsEdit.jsp?Id="+ n.getId() +"'>编辑</a>&nbsp");
	            out.print("<a href='newsDelete.jsp?Id="+ n.getId() +"'>删除</a>");
	            }
	            out.print("</td>");     
	            out.println("</tr>");	
			} 
%>
</table>
<jsp:include page="../foot.jsp"></jsp:include>