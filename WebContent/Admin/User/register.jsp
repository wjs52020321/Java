<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>后台管理</title>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Aircraft/lib/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/Aircraft/lib/font-awesome/css/font-awesome.css">

<script src="<%=request.getContextPath()%>/Aircraft/lib/jquery-1.11.1.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/Aircraft/lib/jQuery-Knob/js/jquery.knob.js" type="text/javascript"></script>

<script type="text/javascript">
	$(function() {
		$(".knob").knob();
	});
</script>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Aircraft/stylesheets/theme.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Aircraft/stylesheets/premium.css">

<script type="text/javascript">
        $(function() {
            var match = document.cookie.match(new RegExp('color=([^;]+)'));
            if(match) var color = match[1];
            if(color) {
                $('body').removeClass(function (index, css) {
                    return (css.match (/\btheme-\S+/g) || []).join(' ')
                })
                $('body').addClass('theme-' + color);
            }

            $('[data-popover="true"]').popover({html: true});
            
        });
    </script>
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

    <script type="text/javascript">
        $(function() {
            var uls = $('.sidebar-nav > ul > *').clone();
            uls.addClass('visible-xs');
            $('#main-menu').append(uls.clone());
        });
    </script>

</head>
<body class=" theme-blue">
    <div class="navbar navbar-default" role="navigation">
        <div class="navbar-header">
          <a class="" href="index.html"><span class="navbar-brand"><span class="fa fa-paper-plane"></span>管理后台</span></a></div>
        <div class="navbar-collapse collapse" style="height: 1px;">
        </div>
      </div>

<div class="dialog">
	<div class="panel panel-default">
		<p class="panel-heading no-collapse">注册</p>
		<div class="panel-body">
			<form action="<%=request.getContextPath()%>/Admin/Account/registered.jsp" method="post" accept-charset="utf-8">
				<div class="form-group">
					<label for="username">账号</label>
						<input id="username" name="username" class="form-control span12"
							type="text" value="" />
				</div>
				<div class="form-group">
					<label for="email">邮箱</label>
						<input id="email" name="email" class="form-control span12" type="email"
							value="" />
				</div>
				<div class="form-group">
					<label for="password">密码</label>
						<input id="password" name="password" class="form-control span12"
							type="password" value="" />
				</div>
				<div class="form-group">
					<label for="password2">确认密码</label>
						<input id="password2" name="password2" class="form-control span12"
							type="password" value="" />				
				</div>
				<div class="form-group">
						<input type="submit" onclick="return checkValue()" value="注冊"
							class="btn btn-primary pull-right" />
				</div>
			</form>
		</div>
	</div>
</div>

<hr />
<footer>
	<p>&copy; 2017 - 我的Java JSP 应用程序</p>
</footer>
<script type="text/javascript">
	function checkValue() {
		//判断用户名不为空
		var nameInput = document.getElementById("username");
		if (nameInput.value != null && nameInput.value == "") {
			alert("账号不能为空！");
			nameInput.focus();
			return false;
		}
		//判断邮箱不为空
		var emailInput = document.getElementById("email");
		if (emailInput.value != null && emailInput.value == "") {
			alert("邮箱不能为空！");
			emailInput.focus();
			return false;
		}
		//判断密码不为空
		var pwdInput = document.getElementById("password");
		if (pwdInput.value != null && pwdInput.value == "") {
			alert("密码不能为空！");
			pwdInput.focus();
			return false;
		}
		//判断密码不为空
		var pwd2Input = document.getElementById("password2");
		if (pwd2Input.value != null && pwd2Input.value == "") {
			alert("确认密码不能为空！");
			pwd2Input.focus();
			return false;
		}
		//判断两个密码是否相等 不相等重输
		if (pwdInput.value != pwd2Input.value) {
			alert("两次输入密码不同，请重新输入！");
			pwdInput.focus();
			return false;
		}
		//输入正确 返回值
		return true;
	}
</script>
</body>
</html>