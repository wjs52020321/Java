<%@ page language="java" contentType="text/html; charset=UTF-8;"
	pageEncoding="UTF-8"%>
	<html lang="en">
<head>
    <meta charset="utf-8">
    <title>后台管理-登录账号</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()+("/Aircraft/lib/bootstrap/css/bootstrap.css")%>">
    <link rel="stylesheet" href="<%=request.getContextPath()+("/Aircraft/lib/font-awesome/css/font-awesome.css")%>">
    <link href="<%=request.getContextPath()+("/Aircraft/stylesheets/theme.css")%>" rel="stylesheet" runat="server" />
   
    <link href="<%=request.getContextPath()+("/Aircraft/stylesheets/premium.css")%>" rel="stylesheet" runat="server"/>
    <script src="<%=request.getContextPath()+( "/Aircraft/lib/jquery-1.11.1.min.js")%>" type="text/javascript"></script>
    <script src="<%=request.getContextPath()+("/Aircraft/lib/jQuery-Knob/js/jquery.knob.js")%>" type="text/javascript"></script>
    <script type="text/javascript">
        $(function() {
            $(".knob").knob();
        });
    </script>


    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()+("/Aircraft/stylesheets/theme.css")%>">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()+("/Aircraft/stylesheets/premium.css")%>">

</head>
<body class=" theme-blue">
    <style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .navbar-default .navbar-brand, .navbar-default .navbar-brand:hover { 
            color: #fff;
        }
    </style>
     <div class="navbar navbar-default" role="navigation">
        <div class="navbar-header">
          <a class="" href="index.html"><span class="navbar-brand"><span class="fa fa-paper-plane"></span>后台管理</span></a></div>

        <div class="navbar-collapse collapse" style="height: 1px;">

        </div>
      </div>
    
      	<%
			//自动读取Cookie文件，用户名和密码 赋值给控件
			Cookie cookie = null;
			Cookie[] cookies = null;
			cookies = request.getCookies();
			if (cookies != null) {
				for (int i = 0; i < cookies.length; i++) {
					cookie = cookies[i];
					String name = cookie.getName();
					String value = cookie.getValue();
					request.setAttribute(name, value);
				}
			}
		%>
		   <div class="dialog">
    <div class="panel panel-default">
        <p class="panel-heading no-collapse">登录</p>
        <div class="panel-body">
           <form action="<%=request.getContextPath() %>/login" method="post">
                <div class="form-group">
                    <label>账号</label>
                    <input type="text" id="username" name="username"   class="form-control span12" value="<%=request.getAttribute("username") %>"/>
                </div>
                <div class="form-group">
                <label>Password</label>
                    <input type="password" id="password" name="password" class="form-control span12" value="<%=request.getAttribute("password") %>"/>
                </div>
                <input type="submit" value="登录" class=" btn btn-primary pull-right" />
                
                <label class="remember-me"><input type="checkbox">记住密码</label>
                <div class="clearfix"></div>
            </form>
        </div>
  

		
  <hr>
           
            <footer>
                <p>&copy; 2017 -18期Java & .NET 实战训练营</p>
            </footer>
     </div>

                
                   	

</body>
                
                           
                   