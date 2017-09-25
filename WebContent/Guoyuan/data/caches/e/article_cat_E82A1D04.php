<?php exit;?>a:3:{s:8:"template";a:3:{i:0;s:49:"D:/PHP/mobile/themes/ocailong_com/article_cat.dwt";i:1;s:51:"D:/PHP/mobile/themes/ocailong_com/library/pages.lbi";i:2;s:57:"D:/PHP/mobile/themes/ocailong_com/library/page_footer.lbi";}s:7:"expires";i:1504602054;s:8:"maketime";i:1504598454;}<!DOCTYPE html>
<html>
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta charset="utf-8" />
<title>网店帮助分类_系统分类_ 触屏版</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="format-detection" content="telephone=no" />
<link href="themes/ocailong_com/images/touch-icon.png" rel="apple-touch-icon-precomposed" />
<link href="themes/ocailong_com/images/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link href="themes/ocailong_com/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<header id="header">
  <div class="header_l header_return"> <a class="ico_10" href="index.php"> 返回 </a> </div>
  <h1> 文章分类 </h1>
  <div class="header_r header_search"> <a class="ico_03"  onClick="showSearch()"> 搜索 </a> </div>
  <div id="search_box">
    <div class="search_box">
      <form action="" name="searchForm" id="searchForm_id" method="post">
        <input placeholder="请输入关键词" name="keywords" type="text" id="keywordBox" value="" />
        <input name="id" type="hidden" value="3" />
        <button class="ico_07" type="submit" onclick="return check('keywordBox')"> </button>
      </form>
    </div>
    <a class="ico_08" onClick="closeSearch()"></a> </div>
</header>
<div class="blank3"></div>
<section class="wrap">
  <div class="list_box padd1 radius10" style="padding-top:0;padding-bottom:0;"> 
     
     
     
  </div>
  <section class="list-pagination">
    <div class="pagenav-wrapper" id="J_PageNavWrap" style="">
      <div class="pagenav-content">
        <div class="pagenav" id="J_PageNav" style="display:flex; text-align:center;">
          <div class="p-prev p-gray"> 
                             <a  class="no">首页</a> 
                        </div>
          <div class="p-prev p-gray"> 
                            <a class="no">上一页</a>   
                          </div>
          <div class="pagenav-cur">
            <div class="pagenav-text"> <span>1/1</span> <i></i> </div>
            <select name="page" class="pagenav-select" onchange="window.location.href=this.options[this.selectedIndex].value" >
                            
              <option value="article_cat.php?id=3&amp;page=1">1</option>
                                    </select>
          </div>
          <div class="p-next p-gray" > 
          	              <a class="no">下一页</a> 
                        </div>
          <div class="p-end p-gray">
                      <a class="no">末页</a> 
                      </div>
        </div>
      </div>
    </div>
</section></section>
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
                <span class="global-nav__nav-shop-cart-num" id="carId">554fcae493e564ee0dc75bdf2ebf94cacart_info_number|a:1:{s:4:"name";s:16:"cart_info_number";}554fcae493e564ee0dc75bdf2ebf94ca</span>
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
        <span class="global-nav__operate-cart-num" id="globalId">554fcae493e564ee0dc75bdf2ebf94cacart_info_number|a:1:{s:4:"name";s:16:"cart_info_number";}554fcae493e564ee0dc75bdf2ebf94ca</span>
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
</script><script type="text/javascript">
/*头部搜索点击关闭或者弹出搜索框*/  
function showSearch( ){
	document.getElementById("search_box").style.display="block";
}
function closeSearch(){
	document.getElementById("search_box").style.display="none";
}
/* 搜索验证 */
function check(Id){
	var strings = document.getElementById(Id).value;
	if(strings.replace(/(^\s*)|(\s*$)/g, "").length == 0){
		return false;
	}
	return true;
}
</script>
</body>
</html>