<%@page import="com.alibaba.entity.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8;" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="com.alibaba.tools.HashMD5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>登录成功</title>
</head>
<body>

                  <%
                  if (session.getAttribute("username") != null)
                     { %>
                           
                      <ul class="nav navbar-nav navbar-right">
                          <li> <a>欢迎：<%=session.getAttribute("username")%> </a></li> 

                          <li> <a href="logout.jsp">注销 </a></li> 
                      </ul>
                          <% } else { %>
                     <ul class="nav navbar-nav navbar-right">
                                <li><a  href="register.jsp">注册</a></li>
                                <li><a  href="login.jsp">登录</a></li>
                            </ul>
                   
                        <%}%>   
                           
                   
           <%
           //这里声明全局变量
           Connection connection=null;
           ResultSet rs=null;
           response.setCharacterEncoding("UTF-8");
           String nameInput=request.getParameter("username");
           String PasswordInput=request.getParameter("password");
          
      //调用三层代码，保存到数据库MySQL
    try {     	          
       //1.注册驱动
     	Class.forName("com.mysql.jdbc.Driver");
     	//2.URL数据库地址
     	String url="jdbc:mysql://localhost:3306/alibaba?useUnicode=true& characterEncoding=UTF-8&useSSL=false";
        String user="root";
     	String password="1995";	 
     	//3.获取链接
         connection = DriverManager.getConnection(url, user, password);
        String sql="select * from users where `Name`=? and `Password`=?";
 		//4.预编译 
		PreparedStatement  statement=connection.prepareStatement(sql);
		//5.设置参数
	    statement.setString(1,nameInput);
		statement.setString(2,HashMD5.getMD5(PasswordInput));
		
	   rs=statement.executeQuery();
	  if(rs.next()) //
	  {
		//页面提交数据 ，session会话
	       String username= request.getParameter("username");
	       String Password= request.getParameter("password");
	       //保存到数据库中，Java验证用户密码
	       
	       //如果登录成功，保存到session中，显示登录名
	       session.setAttribute("username",username);
	       session.setAttribute("password",Password);
	       session.setAttribute("avatar",rs.getString("ImageURL"));
	       session.setAttribute("userid",rs.getInt("Id"));
	       //使用cookie记住密码
	       Cookie cookieName=new Cookie("username", username);
	       Cookie cookiePassword=new Cookie("password",Password);
	       response.addCookie(cookieName);
	       response.addCookie(cookiePassword);
	       //JSP 页面跳转  重新定向
	       response.sendRedirect(request.getContextPath()+"/Index.jsp");
	       //Request请求对象 ，包含用户请求的所有数据
	       //应答相应 数据对象  包含服务器   回传给客户端 浏览器的所有数据
	  }
	  else
	  {
		  response.sendRedirect(request.getContextPath()+"/Account/login.jsp");
	  }
		//6、处理结果集
	   
	   
         }
		 
		 
		 catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
 
    finally{
    	 //7.关闭
    	 if(rs!=null)
    	 {
    		 rs.close();
    	 }
    	 if(connection!=null)
    	 {
    		 connection.close();
    	 }
    }
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


%>                
                     
             

       

                
                   


	

</body>
</html>