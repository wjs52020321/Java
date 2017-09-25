<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <!DOCTYPE html>
<html>
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta charset="utf-8" />
<title>个人中心</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="format-detection" content="telephone=no" />
<link href="themes/ocailong_com/images/touch-icon.png" rel="apple-touch-icon-precomposed" />
<link href="themes/ocailong_com/images/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link href="themes/ocailong_com/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="data/static/js/transport.js"></script><script type="text/javascript" src="data/static/js/common.js"></script><script type="text/javascript" src="data/static/js/user.js"></script><script type="text/javascript" src="themes/ocailong_com/js/jquery-1.4.4.min.js"></script>
</head>
<body>
 <%
 //个人中心只有登录用户可以访问，否则跳转到登录界面
	if (session.getAttribute("username") == null){	
	response.sendRedirect(request.getContextPath()+"/mobile/login.jsp");
}			
 %>
<header id="header">
  <div class="header_l header_return"> <a class="ico_10" href="./"> 返回 </a> </div>
  <h1> 会员中心 </h1>
</header>
<dl class="user_top">
  <dt> <img alt="提示" src="<%=request.getContextPath()%>/UploadImages/<%=request.getSession().getAttribute("avatar")%>" style="border-radius: 50%;max-width:400px;"> </dt>
  <dd>
    <p><%=session.getAttribute("username")%></p>
    <p><span>掌柜：是</span></p>
  </dd>
  <div class="user_top_list">
    <ul>
      <li> <a href="user.php?act=order_list"> <strong>0</strong> <img  src="themes/ocailong_com/images/ico_user_01.png"> <span>30天订单</span> </a> </li>
      <li> <a href="user.php?act=point"> <strong>0</strong> <img  src="themes/ocailong_com/images/ico_user_02.png"> <span>积分</span> </a> </li>
      <li> <a href="user.php?act=account_detail"> <strong>0.00</strong> <img  src="themes/ocailong_com/images/ico_user_03.png"> <span>余额</span> </a> </li>
      <li> <a class="fragment" href="user.php?act=bonus"> <strong>0</strong> <img  src="themes/ocailong_com/images/ico_user_04.png"> <span>红包</span> </a> </li>
    </ul>
  </div>
  <div class="quan1"></div>
  <div class="quan2"></div>
  <div class="quan3"></div>
</dl>
<div class="blank3"></div>
<section class="wrap">
<!--
  <div class="list_box padd1 radius10" style="padding-top:0;padding-bottom:0;">
   <a href="index.php?u=187" class="clearfix"> <span>我的店铺</span><i></i> </a>
   <a href="user.php?act=dianpu" class="clearfix"> <span>修改店铺名</span><i></i> </a>  
    <a href="user.php?act=fenxiao1" class="clearfix"> <span>我的直销</span><i></i> </a>
 <a href="user.php?act=fenxiao2" class="clearfix"> <span>二级分销</span><i></i> </a>
  <a href="user.php?act=fenxiao3" class="clearfix"> <span>三级分销</span><i></i> </a>
  <a href="user.php?act=fenxiao4" class="clearfix"> <span>四级分销</span><i></i> </a>
	</div>
	-->
	<div class="list_box padd1 radius10" style="padding-top:0;padding-bottom:0;">
	 <a  href="fenxiao.jsp" class="clearfix"> <span>分销中心</span><i></i> </a>
	</div>
	  <div class="blank3"></div>
	  
  <div class="list_box padd1 radius10" style="padding-top:0;padding-bottom:0;"> 
  <a  href="tel:" class="clearfix"> <span>呼叫客服</span><i></i> </a><a href="people.jsp" class="clearfix"> <span>用户信息</span><i></i> </a>
  <a href="UploadImage.jsp" class="clearfix"> <span>头像管理</span><i></i> </a> <a href="people.jsp" class="clearfix"> <span>我的订单</span><i></i> </a> <a href="user.php?act=back_list" class="clearfix"> <span>退款/退货/维修</span><i></i> </a> <a href="adress.jsp"  class="clearfix"> <span>收货地址</span><i></i> </a> <a href="user.php?act=collection_list"  class="clearfix"> <span>我的收藏</span><i></i> </a> </div>
  <div class="blank3"></div>
  <div class="list_box padd1 radius10" style="padding-top:0;padding-bottom:0;"> <a href="user.php?act=message_list" class="clearfix"> <span>我的留言</span><i></i> </a>  <a href="user.php?act=comment_list"  class="clearfix"> <span>我的评论</span><i></i> </a>
	<a href="user.php?act=user_card"  class="clearfix"> <span>会员卡</span><i></i> </a>
  </div>
  <div class="blank3"></div>
  <div class="list_box padd1 radius10" style="padding-top:0;padding-bottom:0;"> 
    <a href="logout.jsp" class="clearfix"> <span>退出登录</span><i></i> </a> </div>
</section>
<div id="content" class="footer mr-t20">
  <div class="in">
    <div class="search_box">
      <form method="post" action="search.php" name="searchForm" id="searchForm_id">
        <input name="keywords" type="text" id="keywordfoot" />
        <button class="ico_07" type="submit" value="搜索" onclick="return check('keywordfoot')"> </button>
      </form>
    </div>
    <a href="./" class="homeBtn"> <span class="ico_05"> </span> </a> <a href="#top" class="gotop"> <span class="ico_06"> </span> <p> TOP </p>
    </a>
  </div>
  <p class="link region"> <a href="./"> 返回首页 </a> <a href="flow.php"> 购物车 </a> <a href="user.php"> 会员中心 </a> <a href="ectouch.php?act=contact"> 联系我们 </a> </p>
  <p class="region"> 
     
    &copy; 2005-2017 商城演示站 版权所有，并保留所有权利。 </p>
  <div class="favLink region"> <a href="http://www.ocailong.com"> powered by O菜龙工作室 </a> </div>
</div>


<div class="global-nav">
    <div class="global-nav__nav-wrap">
        <div class="global-nav__nav-item">
            <a href="./" class="global-nav__nav-link">
                <i class="global-nav__iconfont global-nav__icon-index">&#xf0001;</i>
                <span class="global-nav__nav-tit">首页</span>
            </a>
        </div>
        <div class="global-nav__nav-item">
            <a href="cat_all.php" class="global-nav__nav-link">
                <i class="global-nav__iconfont global-nav__icon-category">&#xf0002;</i>
                <span class="global-nav__nav-tit">分类</span>
            </a>
        </div>
        <div class="global-nav__nav-item">
            <a href="javascript:get_search_box();" class="global-nav__nav-link">
                <i class="global-nav__iconfont global-nav__icon-search">&#xf0003;</i>
                <span class="global-nav__nav-tit">搜索</span>
            </a>
        </div>
        <div class="global-nav__nav-item">
            <a href="flow.php?step=cart" class="global-nav__nav-link">
                <i class="global-nav__iconfont global-nav__icon-shop-cart">&#xf0004;</i>
                <span class="global-nav__nav-tit">购物车</span>
                <span class="global-nav__nav-shop-cart-num" id="carId">0</span>
            </a>
        </div>
        <div class="global-nav__nav-item">
            <a href="user.php" class="global-nav__nav-link">
                <i class="global-nav__iconfont global-nav__icon-my-yhd">&#xf0005;</i>
                <span class="global-nav__nav-tit">会员中心</span>
            </a>
        </div>
    </div>
    <div class="global-nav__operate-wrap">
        <span class="global-nav__yhd-logo"></span>
        <span class="global-nav__operate-cart-num" id="globalId">0</span>
    </div>
</div>


<div id="toTop" class="toTop">
  <img alt="" src="themes/ocailong_com/images/scropTop.png">
</div>
<script>
$(function(){
	isIe6 = false;
	
	if ('undefined' == typeof(document.body.style.maxHeight)) {
		isIe6 = true;
	}

	var offset = $("#toTop").offset();		
	var bottom = $("#toTop").css("bottom");		
	$(window).scroll(function(){
		if ($(window).scrollTop() > 500){
			$("#toTop").fadeIn(800);
			
			if(isIe6)
			{			
				$("#toTop").css("position","absolute")	
				$("#toTop").css("bottom",bottom)
			}
		}
		else
		{
			$("#toTop").fadeOut(500);
		}
		
	});
	
	$("#toTop").click(function(){
		$('body,html').animate({scrollTop:0},500);
		return false;
	});

})
</script>

<script type="text/javascript" src="themes/ocailong_com/js/zepto.min.js"></script>
<script type="text/javascript">
Zepto(function($){
   var $nav = $('.global-nav'), $btnLogo = $('.global-nav__operate-wrap');
   //点击箭头，显示隐藏导航
   $btnLogo.on('click',function(){
     if($btnLogo.parent().hasClass('global-nav--current')){
       navHide();
     }else{
       navShow();
     }
   });

   var navShow = function(){
     $nav.addClass('global-nav--current');
   }

   var navHide = function(){
     $nav.removeClass('global-nav--current');
   }
   
})
function get_search_box(){
	try{
		document.getElementById('get_search_box').click();
	}catch(err){
		document.getElementById('keywordfoot').focus();
 	}
}
</script><div style="width:1px; height:1px; overflow:hidden"><a href="http://www.ecshop.com" target="_blank" style=" font-family:Verdana; font-size:11px;">Powered&nbsp;by&nbsp;<strong><span style="color: #3366FF">ECShop</span>&nbsp;<span style="color: #FF9966">v2.7.3</span></strong></a>&nbsp;</div>
</body>
<script type="text/javascript">
var msg_title_empty = "留言标题为空";
var msg_content_empty = "留言内容为空";
var msg_title_limit = "留言标题不能超过200个字";
</script>
</html>
    