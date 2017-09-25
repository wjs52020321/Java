<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../header.jsp"></jsp:include>
<form action="<%=request.getContextPath()%>/UploadImageStruts" method="post" enctype="multipart/form-data">
头像：<input id="image" name="image" type="file" >
<br>
<input type="submit" value="上传">
</form>
<img alt="提示" src="<%=request.getContextPath()%>/UploadImages/<%=request.getSession().getAttribute("avatar")%>" style="border-radius: 50%;max-width:400px;">
<jsp:include page="../foot.jsp"></jsp:include>