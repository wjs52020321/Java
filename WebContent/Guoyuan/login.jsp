<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录界面</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="format-detection" content="telephone=no" />
<link href="themes/ocailong_com/images/touch-icon.png" rel="apple-touch-icon-precomposed" />
<link href="themes/ocailong_com/images/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link href="themes/ocailong_com/style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="data/static/js/common.js"></script><script type="text/javascript" src="data/static/js/user.js"></script><script type="text/javascript" src="themes/ocailong_com/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="data/static/js/utils.js"></script><script type="text/javascript">
/* *
 * 处理注册用户
 */
function register()
{
  var frm  = document.forms['formUser'];
  var username  = Utils.trim(frm.elements['username'].value);
  //var email  = frm.elements['email'].value;
  var password  = Utils.trim(frm.elements['password'].value);
  //var confirm_password = Utils.trim(frm.elements['confirm_password'].value);
  var checked_agreement = frm.elements['agreement'].checked;
  var msn = frm.elements['extend_field1'] ? Utils.trim(frm.elements['extend_field1'].value) : '';
  var qq = frm.elements['extend_field2'] ? Utils.trim(frm.elements['extend_field2'].value) : '';
  var home_phone = frm.elements['extend_field4'] ? Utils.trim(frm.elements['extend_field4'].value) : '';
  var office_phone = frm.elements['extend_field3'] ? Utils.trim(frm.elements['extend_field3'].value) : '';
  var mobile_phone = frm.elements['extend_field5'] ? Utils.trim(frm.elements['extend_field5'].value) : '';
  var passwd_answer = frm.elements['passwd_answer'] ? Utils.trim(frm.elements['passwd_answer'].value) : '';
  var sel_question =  frm.elements['sel_question'] ? Utils.trim(frm.elements['sel_question'].value) : '';


  var msg = "";
  // 检查输入
  var msg = '';
  if (username.length == 0)
  {
    msg += username_empty + '\n';
  }
  else if (username.match(/^\s*$|^c:\\con\\con$|[%,\'\*\"\s\t\<\>\&\\]/))
  {
    msg += username_invalid + '\n';
  }
  else if (username.length < 3)
  {
    //msg += username_shorter + '\n';
  }

  if (password.length == 0)
  {
    msg += password_empty + '\n';
  }
  else if (password.length < 6)
  {
    msg += password_shorter + '\n';
  }
  if (/ /.test(password) == true)
  {
	msg += passwd_balnk + '\n';
  }

  if(checked_agreement != true)
  {
    msg += agreement + '\n';
  }

  if (msn.length > 0 && (!Utils.isEmail(msn)))
  {
    msg += msn_invalid + '\n';
  }

  if (qq.length > 0 && (!Utils.isNumber(qq)))
  {
    msg += qq_invalid + '\n';
  }

  if (office_phone.length>0)
  {
    var reg = /^[\d|\-|\s]+$/;
    if (!reg.test(office_phone))
    {
      msg += office_phone_invalid + '\n';
    }
  }
  if (home_phone.length>0)
  {
    var reg = /^[\d|\-|\s]+$/;

    if (!reg.test(home_phone))
    {
      msg += home_phone_invalid + '\n';
    }
  }
  if (mobile_phone.length>0)
  {
    var reg = /^[\d|\-|\s]+$/;
    if (!reg.test(mobile_phone))
    {
      msg += mobile_phone_invalid + '\n';
    }
  }
  if (passwd_answer.length > 0 && sel_question == 0 || document.getElementById('passwd_quesetion') && passwd_answer.length == 0)
  {
    msg += no_select_question + '\n';
  }

  for (i = 4; i < frm.elements.length - 4; i++)	// 从第五项开始循环检查是否为必填项
  {
	needinput = document.getElementById(frm.elements[i].name + 'i') ? document.getElementById(frm.elements[i].name + 'i') : '';

	if (needinput != '' && frm.elements[i].value.length == 0)
	{
	  msg += '- ' + needinput.innerHTML + msg_blank + '\n';
	}
  }

  if (msg.length > 0)
  {
    alert(msg);
    return false;
  }
  else
  {
    return true;
  }
}
</script>


</head>
<body>
<div id="page">
  <header id="header">
    <div class="header_l"> <a class="ico_10" onClick="javascript:history.back();"> 返回 </a> </div>
    <h1> 登录/注册 </h1>
  </header>
</div>
<section class="wrap">
  <div id="leftTabBox" class="loginBox">
    <div class="hd"> <span>欢迎光临，登录后体验更多服务</span>
      <ul>
        <li class="on"><a href="javascript:void(0)">登录</a></li>
        <li><a href="javascript:void(0)">注册</a></li>
      </ul>
    </div>
    <div class="bd">
      <ul>
        <div class="table_box">
          <form name="formLogin" action="loginon.jsp" method="post" onSubmit="return userLogin()">
		  <dl>
              <dd>
               <label class="leftlabel"><select name="login_type"><option value="0">用户名</option><option value="3">会员卡</option></select></label>
              </dd>
            </dl>
            <dl>
              <dd>
                <input placeholder="用户名/手机/电子邮件地址" name="username" type="text"  class="inputBg" id="username" />
              </dd>
            </dl>
            <dl>
              <dd>
                <input placeholder="密码"  name="password" type="password" class="inputBg" />
              </dd>
            </dl>
            <dl style="display:none;">
              <dd>
                <input type="checkbox" checked="checked" value="1" name="remember" id="remember" style="vertical-align:middle; zoom:200%;" /><label for="remember"> 一个月内免登录</label>
              </dd>
            </dl>
            <dl>
              <dd>
                <input type="hidden" name="act" value="act_login" />
                <input type="hidden" name="back_act" value="user.php" />
                <input type="submit" name="submit"  value="立即登陆" class="c-btn3" />
              </dd>
            </dl>
          </form>
          <dl>
            <dd> <a href="user.php?act=get_password" class="f6">邮件找回密码</a> </dd>
          </dl>
          <div class="hezuo">
            <p class="t">使用合作账号登录</p>
            <p class="b"><a href="user.php?act=oath&type=qq"><img src="themes/ocailong_com/images/quicklogin/qq.png"></a> <a href="user.php?act=oath&type=weibo"><img src="themes/ocailong_com/images/quicklogin/weibo.png"></a> <a href="user.php?act=oath&type=alipay"><img src="themes/ocailong_com/images/quicklogin/zhifubao.png"></a> 
	    	    </p>
          </div>
        </div>
      </ul>
    </div>
    <div class="bd" style="display:none">
      <ul style="height:25rem">
        <form action="registered.jsp" method="post" name="formUser" onsubmit="return register();">
          <input type="hidden" name="flag" id="flag" value="register" />
          <div class="table_box">
            <dl>
              <dd>
                <input placeholder="请输入用户名" class="inputBg" name="username" id="username" type="text" />
              </dd>
            </dl>
            <dl>
              <dd>
                <input placeholder="请输入帐号密码" class="inputBg" name="password" id="password" type="password" />
              </dd>
            </dl>



        	<dl>
              <dd>
                <input placeholder="手机" class="inputBg" name="mobile" id="mobile" type="text" />
              </dd>
            </dl>

            <dl>
              <dd>
                <input id="agreement" name="agreement" type="checkbox" value="1" checked="checked" style="vertical-align:middle; zoom:200%;" /><label for="agreement"> 我已看过并同意《<a href="article.php?cat_id=-1">用户协议</a>》</label>
              </dd>
            </dl>
            <dl>
              <dd>
                <input name="act" type="hidden" value="act_register" />
                <input name="enabled_sms" type="hidden" value="1" />
                <input type="hidden" name="back_act" value="user.php" />
                <input name="Submit" type="submit" value="下一步" class="c-btn3" />
              </dd>
            </dl>
          </div>
        </form>
              </ul>
    </div>
  </div>
</section>
<script type="text/javascript">
jQuery(function($){
	$('.hd ul li').click(function(){
		var index = $('.hd ul li').index(this);
		$(this).addClass('on').siblings('li').removeClass('on');
		$('.loginBox .bd:eq('+index+')').show().siblings('.bd').hide();
	})
})
</script>
  
<script type="text/javascript" src="themes/ocailong_com/js/sms.js"></script>

<div style="width:1px; height:1px; overflow:hidden"><a href="http://www.ecshop.com" target="_blank" style=" font-family:Verdana; font-size:11px;">Powered&nbsp;by&nbsp;<strong><span style="color: #3366FF">ECShop</span>&nbsp;<span style="color: #FF9966">v2.7.3</span></strong></a>&nbsp;</div>
<script type="text/javascript">
var process_request = "正在处理您的请求...";
var username_empty = "用户名不能为空。";
var username_shorter = "用户名长度不能少于 3 个字符。";
var username_invalid = "用户名只能是由字母数字以及下划线组成。";
var password_empty = "登录密码不能为空。";
var password_shorter = "登录密码不能少于 6 个字符。";
var confirm_password_invalid = "两次输入密码不一致";
var email_empty = "Email 为空";
var email_invalid = "Email 不是合法的地址";
var agreement = "您没有接受协议";
var msn_invalid = "msn地址不是一个有效的邮件地址";
var qq_invalid = "QQ号码不是一个有效的号码";
var home_phone_invalid = "家庭电话不是一个有效号码";
var office_phone_invalid = "办公电话不是一个有效号码";
var mobile_phone_invalid = "手机号码不是一个有效号码";
var msg_un_blank = "* 用户名不能为空";
var msg_un_length = "* 用户名最长不得超过7个汉字";
var msg_un_format = "* 用户名含有非法字符";
var msg_un_registered = "* 用户名已经存在,请重新输入";
var msg_can_rg = "* 可以注册";
var msg_email_blank = "* 邮件地址不能为空";
var msg_email_registered = "* 邮箱已存在,请重新输入";
var msg_email_format = "* 邮件地址不合法";
var msg_blank = "不能为空";
var no_select_question = "您没有完成密码提示问题的操作";
var passwd_balnk = "密码中不能包含空格";
var username_exist = "用户名 %s 已经存在";
</script>

</body>
</html>