<%@page import="com.alibaba.service.AlibabaService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page import="com.alibaba.entity.Employee"%>
<%@ page import="com.alibaba.service.AlibabaService"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Date"%>
<jsp:include page="../header.jsp"></jsp:include>
<%
	//1.读取URL里面的Id参数
	String id = request.getParameter("Id");
    int eid = Integer.parseInt(id);
    //1.调用三层
    AlibabaService bll = new AlibabaService();
	bll.delete(eid);
	//7.跳转到首页
	response.sendRedirect(request.getContextPath() + "/Employee/employeeIndex.jsp");
%>
<jsp:include page="../foot.jsp"></jsp:include>