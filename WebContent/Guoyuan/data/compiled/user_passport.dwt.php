<!DOCTYPE html>
<html>
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta charset="utf-8" />
<title><?php echo $this->_var['page_title']; ?> 触屏版</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="format-detection" content="telephone=no" />
<link href="<?php echo $this->_var['ectouch_themes']; ?>/images/touch-icon.png" rel="apple-touch-icon-precomposed" />
<link href="<?php echo $this->_var['ectouch_themes']; ?>/images/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link href="<?php echo $this->_var['ectouch_css']; ?>" rel="stylesheet" type="text/css" />

<?php echo $this->smarty_insert_scripts(array('files'=>'common.js,user.js')); ?>
<script type="text/javascript" src="<?php echo $this->_var['ectouch_themes']; ?>/js/jquery-1.4.4.min.js"></script>
<?php echo $this->smarty_insert_scripts(array('files'=>'utils.js')); ?>
<script type="text/javascript">
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

 
<?php if ($this->_var['action'] == 'login' || $this->_var['action'] == 'register'): ?>
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
        <li<?php if ($this->_var['action'] == 'login'): ?> class="on"<?php endif; ?>><a href="javascript:void(0)">登录</a></li>
        <li<?php if ($this->_var['action'] == 'register'): ?> class="on"<?php endif; ?>><a href="javascript:void(0)">注册</a></li>
      </ul>
    </div>
    <div class="bd"<?php if ($this->_var['action'] == 'register'): ?> style="display:none"<?php endif; ?>>
      <ul>
        <div class="table_box">
          <form name="formLogin" action="user.php" method="post" onSubmit="return userLogin()">
		  <dl>
              <dd>
               <label class="leftlabel"><select name="login_type"><option value="0">用户名</option><option value="3">会员卡</option></select></label>
              </dd>
            </dl>
            <dl>
              <dd>
                <input placeholder="<?php echo $this->_var['lang']['username']; ?>/<?php echo $this->_var['lang']['mobile']; ?>/<?php echo $this->_var['lang']['email']; ?>" name="username" type="text"  class="inputBg" id="username" />
              </dd>
            </dl>
            <dl>
              <dd>
                <input placeholder="<?php echo $this->_var['lang']['label_password']; ?>"  name="password" type="password" class="inputBg" />
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
                <input type="hidden" name="back_act" value="<?php echo $this->_var['back_act']; ?>" />
                <input type="submit" name="submit"  value="立即登陆" class="c-btn3" />
              </dd>
            </dl>
          </form>
          <dl>
            <dd> <a href="user.php?act=get_password" class="f6">邮件找回密码</a> <?php if ($this->_var['_CFG'] [ 'ecsdxt_mobile_pwd' ] == '1'): ?><a href="user.php?act=mpassword_name" class="f6">短信找回密码</a><?php endif; ?></dd>
          </dl>
          <div class="hezuo">
            <p class="t">使用合作账号登录</p>
            <p class="b"><a href="user.php?act=oath&type=qq"><img src="<?php echo $this->_var['ectouch_themes']; ?>/images/quicklogin/qq.png"></a> <a href="user.php?act=oath&type=weibo"><img src="<?php echo $this->_var['ectouch_themes']; ?>/images/quicklogin/weibo.png"></a> <a href="user.php?act=oath&type=alipay"><img src="<?php echo $this->_var['ectouch_themes']; ?>/images/quicklogin/zhifubao.png"></a> 
	    <?php if ($this->_var['is_wechat_browser']): ?><a href="user.php?act=oath&type=weixin"><img src="<?php echo $this->_var['ectouch_themes']; ?>/images/quicklogin/weixin.png"></a><?php endif; ?>
	    </p>
          </div>
        </div>
      </ul>
    </div>
    <div class="bd"<?php if ($this->_var['action'] == 'login'): ?> style="display:none"<?php endif; ?>>
      <ul style="height:25rem">
        <form action="user.php" method="post" name="formUser" onsubmit="return register();">
          <input type="hidden" name="flag" id="flag" value="register" />
          <div class="table_box">
            <dl>
              <dd>
                <input placeholder="请输入用户名" class="inputBg" name="username" id="username" type="text" />
              </dd>
            </dl>
            <dl>
              <dd>
                <input placeholder="请输入帐号密码" class="inputBg" name="password" id="mobile_pwd" type="password" />
              </dd>
            </dl>



        <?php $_from = $this->_var['extend_info_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'field');if (count($_from)):
    foreach ($_from AS $this->_var['field']):
?>
	<?php if ($this->_var['field']['reg_field_name'] == '手机'): ?>
		<?php if ($this->_var['_CFG'] [ 'ecsdxt_mobile_reg' ] == '1'): ?>
        	<script>var ztime=<?php echo $this->_var['ztime']; ?>;</script>
			<?php echo $this->smarty_insert_scripts(array('files'=>'global.js')); ?>
			<?php echo $this->smarty_insert_scripts(array('files'=>'transport.js')); ?>
			<?php echo $this->smarty_insert_scripts(array('files'=>'sms.js')); ?>
            <dl>
              <dd>
                <input placeholder="请输入手机号码" class="inputBg" name="extend_field<?php echo $this->_var['field']['id']; ?>" id="extend_field<?php echo $this->_var['field']['id']; ?>" type="text" />
              </dd>
            </dl>
            <dl>
              <dd>
                <input placeholder="请输入验证码" class="inputBg" name="extend_field<?php echo $this->_var['field']['id+1']; ?>" id="extend_field<?php echo $this->_var['field']['id']; ?>" type="text" />
              </dd>
              <dd>
              <input id="zphone" name="sendsms" type="button" value="获取验证码" onclick="getverifycode1('extend_field<?php echo $this->_var['field']['id']; ?>', '<?php echo $this->_var['field']['reg_field_name']; ?>');" class="c-btn3" />
              </dd>
            </dl>			
		<?php else: ?>
            <dl>
              <dd>
                <input placeholder="<?php echo $this->_var['field']['reg_field_name']; ?>" class="inputBg" name="extend_field<?php echo $this->_var['field']['id']; ?>" id="extend_field<?php echo $this->_var['field']['id']; ?>" type="text" />
              </dd>
            </dl>
		<?php endif; ?>
	<?php else: ?>
		<?php if ($this->_var['field']['id'] == 6): ?>
		    <dl>
		      <dd>
			  <select name='sel_question' class="inputBg">
			  <option value='0'><?php echo $this->_var['lang']['sel_question']; ?></option>
			  <?php echo $this->html_options(array('options'=>$this->_var['passwd_questions'])); ?>
			  </select>
		      </dd>
		    </dl>
		    <dl>
		      <dd <?php if ($this->_var['field']['is_need']): ?>id="passwd_quesetion"<?php endif; ?>>
			  <input placeholder="<?php echo $this->_var['lang']['passwd_answer']; ?>" name="passwd_answer" type="text" class="inputBg" />
		      </dd>
		    </dl>
		<?php else: ?>
		    <dl>
		      <dd>
			<input placeholder="<?php echo $this->_var['field']['reg_field_name']; ?>" class="inputBg" name="extend_field<?php echo $this->_var['field']['id']; ?>" id="extend_field<?php echo $this->_var['field']['id']; ?>" type="text" />
		      </dd>
		    </dl>
		<?php endif; ?>
	<?php endif; ?>
	<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>







            <dl>
              <dd>
                <input id="agreement" name="agreement" type="checkbox" value="1" checked="checked" style="vertical-align:middle; zoom:200%;" /><label for="agreement"> 我已看过并同意《<a href="article.php?cat_id=-1">用户协议</a>》</label>
              </dd>
            </dl>
            <dl>
              <dd>
                <input name="act" type="hidden" value="act_register" />
                <input name="enabled_sms" type="hidden" value="1" />
                <input type="hidden" name="back_act" value="<?php echo $this->_var['back_act']; ?>" />
                <input name="Submit" type="submit" value="下一步" class="c-btn3" />
              </dd>
            </dl>
          </div>
        </form>
        <?php if ($this->_var['need_rechoose_gift']): ?>
        <?php echo $this->_var['lang']['gift_remainder']; ?>
        <?php endif; ?>
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
<?php endif; ?> 
 

 
<?php if ($this->_var['action'] == 'get_password'): ?> 
<?php echo $this->smarty_insert_scripts(array('files'=>'utils.js')); ?> 
<script type="text/javascript">
    <?php $_from = $this->_var['lang']['password_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
      var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    </script>
<div id="page">
  <header id="header">
    <div class="header_l"> <a class="ico_10" onClick="javascript:history.back();"> 返回 </a> </div>
    <h1> 找回密码 </h1>
  </header>
</div>
<section class="wrap">
  <div id="leftTabBox" class="loginBox">
    <div class="hd"> <span>您可通过<?php if ($this->_var['enabled_sms_signin'] == 1): ?>手机号码<?php else: ?>电子邮件<?php endif; ?>重置密码</span>
    </div>
    <div id="tabBox1-bd">
      <ul>
      	<?php if ($this->_var['enabled_sms_signin'] == 1): ?>
      	<form  action="user.php" method="post" name="getPassword" onSubmit="return submitForget();">
          <input type="hidden" name="flag" id="flag" value="forget" />
          <div class="table_box">
            <dl>
              <dd>
                <input placeholder="请输入手机号码" class="inputBg" name="mobile" id="mobile_phone" type="text" />
              </dd>
            </dl>
            <dl>
              <dd>
                <input placeholder="请输入验证码" class="inputBg" name="mobile_code" id="mobile_code" type="text" />
              </dd>
              <dd>
              <input id="zphone" name="sendsms" type="button" value="获取手机验证码" onClick="sendSms();" class="c-btn3" />
              </dd>
            </dl>
            <dl>
              <dd>
                <input name="act" type="hidden" value="send_pwd_sms" />
                <input name="Submit" type="submit" value="<?php echo $this->_var['lang']['submit']; ?>" class="c-btn3" />
              </dd>
            </dl>
          </div>
        </form>
        <?php else: ?>
        <form action="user.php" method="post" name="getPassword" onsubmit="return submitPwdInfo();">
          <div class="table_box">
            <dl>
              <dd>
                <input placeholder="<?php echo $this->_var['lang']['username']; ?>" class="inputBg" name="user_name" type="text" />
              </dd>
            </dl>
            <dl>
              <dd>
                <input placeholder="<?php echo $this->_var['lang']['email']; ?>" class="inputBg" name="email" type="text" />
              </dd>
            </dl>
            <dl>
              <dd>
                <input name="act" type="hidden" value="send_pwd_email" />
                <input name="Submit" type="submit" value="<?php echo $this->_var['lang']['submit']; ?>" class="c-btn3" />
              </dd>
            </dl>
          </div>
        <br />
      </form>
        <?php endif; ?>
      </ul>
    </div>
  </div>
</section>
<?php endif; ?> 


 
<?php if ($this->_var['action'] == 'reset_password'): ?> 
<script type="text/javascript">
    <?php $_from = $this->_var['lang']['password_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
      var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    </script>
<div id="page">
  <header id="header">
    <div class="header_l"> <a class="ico_10" onClick="javascript:history.back();"> 返回 </a> </div>
    <h1> 重置密码 </h1>
  </header>
</div>
<section class="wrap">
  <div id="leftTabBox" class="loginBox">
    <div>
      <ul>
        <form action="user.php" method="post" name="getPassword2" onSubmit="return submitPwd()">
          <div class="table_box">
            <dl>
              <dd>
                <input placeholder="<?php echo $this->_var['lang']['new_password']; ?>" class="inputBg" name="new_password" type="password" />
              </dd>
            </dl>
            <dl>
              <dd>
                <input placeholder="<?php echo $this->_var['lang']['confirm_password']; ?>" class="inputBg" name="confirm_password" type="password" />
              </dd>
            </dl>
            <dl>
              <dd>
                <input type="hidden" name="act" value="act_edit_password" />
		<input type="hidden" name="uid" value="<?php echo $this->_var['uid']; ?>" />
		<input type="hidden" name="code" value="<?php echo $this->_var['code']; ?>" />
                <input name="Submit" type="submit" value="<?php echo $this->_var['lang']['confirm_submit']; ?>" class="c-btn3" />
              </dd>
            </dl>
          </div>
        <br />
      </form>
      </ul>
    </div>
  </div>
</section>
<?php endif; ?> 
 


    <?php if ($this->_var['action'] == 'mpassword_name'): ?>
    <?php echo $this->smarty_insert_scripts(array('files'=>'utils.js')); ?>
    <script type="text/javascript">
    <?php $_from = $this->_var['lang']['password_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
      var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    </script>
<div id="page">
  <header id="header">
    <div class="header_l"> <a class="ico_10" onClick="javascript:history.back();"> 返回 </a> </div>
    <h1> 找回密码 </h1>
  </header>
</div>
<section class="wrap">
  <div id="leftTabBox" class="loginBox">
    <div class="hd"> <span>您可通过手机号码重置密码</span>
    </div>
    <div id="tabBox1-bd">
      <ul>
      	<form action="user.php" method="post" name="getPasswordByMobile" onsubmit="return submitPwdMobileInfo();">
          <div class="table_box">
            <dl>
              <dd>
                <input placeholder="<?php echo $this->_var['lang']['username']; ?>" class="inputBg" name="user_name" id="user_name" type="text" />
              </dd>
            </dl>
            <dl>
              <dd>
		<input placeholder="请输入手机号码" name="mobile" type="text" size="30" class="inputBg" maxlength="12" />
              </dd>
            </dl>
            <dl>
              <dd>
                <input type="hidden" name="act" value="send_pwd_mobile" />
		<input type="submit" name="submit" value="<?php echo $this->_var['lang']['submit']; ?>" class="c-btn3" style="border:none;" />
              </dd>
            </dl>
          </div>
        </form>
      </ul>
    </div>
  </div>
</section>
<?php endif; ?>

<script type="text/javascript" src="<?php echo $this->_var['ectouch_themes']; ?>/js/sms.js"></script>

<div style="width:1px; height:1px; overflow:hidden"><?php $_from = $this->_var['lang']['p_y']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'pv');if (count($_from)):
    foreach ($_from AS $this->_var['pv']):
?><?php echo $this->_var['pv']; ?><?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?></div>
<script type="text/javascript">
var process_request = "<?php echo $this->_var['lang']['process_request']; ?>";
<?php $_from = $this->_var['lang']['passport_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
var username_exist = "<?php echo $this->_var['lang']['username_exist']; ?>";
</script>
</body>
</html>
