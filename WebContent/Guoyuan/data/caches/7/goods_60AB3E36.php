<?php exit;?>a:3:{s:8:"template";a:3:{i:0;s:43:"D:/PHP/mobile/themes/ocailong_com/goods.dwt";i:1;s:54:"D:/PHP/mobile/themes/ocailong_com/library/comments.lbi";i:2;s:57:"D:/PHP/mobile/themes/ocailong_com/library/page_footer.lbi";}s:7:"expires";i:1504602490;s:8:"maketime";i:1504598890;}<!DOCTYPE html>
<html>
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<meta charset="utf-8" />
<title>新鲜水果甜蜜香脆单果约800克_根茎类_生鲜食品_ 触屏版</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="format-detection" content="telephone=no" />
<link href="themes/ocailong_com/images/touch-icon.png" rel="apple-touch-icon-precomposed" />
<link href="themes/ocailong_com/images/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link href="themes/ocailong_com/style.css" rel="stylesheet" type="text/css" />
 
<style>
.user_top_goods {
height: 5rem;
overflow: hidden; 
background:#ffbf6b;
position:relative
}
.user_top_goods dt {
float: left;
margin: 0.8rem 0.8rem 0;
text-align: center;
position: relative;
width: 3.7rem;
height: 3.7rem;
border-radius: 3.7rem;
padding:0.15rem; background:#FFFFFF
}
.user_top_goods dt img {
width: 3.7rem;
height:3.7rem;
border-radius: 3.7rem;
}
.guanzhu {
background-color: #ffbf6b;
}
.guanzhu {
color: #fff;
border: 0;
height: 2.5rem;
line-height: 2.5rem;
width: 100%;
-webkit-box-flex: 1;
display: block;
-webkit-user-select: none;
font-size: 0.9rem;
}
#cover2 {
    background-color: #333333;
    display: none;
    left: 0;
    opacity: 0.8;
    position: absolute;
    top: 0;
    z-index: 1000;
}
#share_weixin, #share_qq {
    right: 10px;
    top: 2px;
    width: 260px;
}
#share_weixin, #share_qq, #share_qr {
    display: none;
    position: fixed;
    z-index: 3000;
}
#share_weixin img, #share_qq img {
    height: 165px;
    width: 260px;
}
		.button_3 {
    background-color: #EEEEEE;
    border: 1px solid #666666;
    color: #666666;
    font-size: 16px;
    line-height: 20px;
    padding: 10px 0;
    text-align: center;
}
#share_weixin button, #share_qq button {
    margin-top: 25px;
    width: 100%;
}
</style>
 
<script type="text/javascript" src="js/magiczoom_plus.js" ></script>
<script type="text/javascript" src="js/common1.js">
</script>
<script type="text/javascript" src="data/static/js/jquery-1.9.1.min.js"></script><script type="text/javascript" src="themes/ocailong_com/js/jquery.json.js"></script>
<script type="text/javascript">
function changenum(diff) {
	var num = parseInt(document.getElementById('goods_number').value);
	var goods_number = num + Number(diff);
	if( goods_number >= 1){
		document.getElementById('goods_number').value = goods_number;//更新数量
		changePrice();
	}
}
</script>
<script language="javascript">
function shows_number(result)
{
     if(result.product_number !=undefined){
         document.getElementById('shows_number').innerHTML = result.product_number+'件';
     }else{
         document.getElementById('shows_number').innerHTML = '无库存';
     }
}
//默认就显示第一个属性库存
function changeKucun()
{
var frm=document.forms['ECS_FORMBUY'];
spec_arr = getSelectedAttributes(frm);
    if(spec_arr==''){
         document.getElementById('shows_number').innerHTML = '65535件';
    }else{
         Ajax.call('goods.php?act=get_products_info', 'id=' + spec_arr+ '&goods_id=' + goods_id, shows_number, 'GET', 'JSON');
    }
}
</script>
</head>
<body>
<header id="header">
  <div class="header_l header_return"> <a class="ico_10" href="cat_all.php"> 返回 </a> </div>
  <h1> 商品详情 </h1>
</header>
 
<script src="themes/ocailong_com/js/TouchSlide.js"></script>
<section class="goods_slider">
  <div id="slideBox" class="slideBox">
    <div class="scroller"> 
      <!--<div><a href="javascript:showPic()"><img src="images/201512/thumb_img/1_thumb_G_1449024889033.jpg"  alt="新鲜水果甜蜜香脆单果约800克" /></a></div>-->
      <ul>
         
         
              <li><a href="javascript:showPic()"><img style="width:auto;height:20rem;" src="http://192.168.199.163/images/201512/goods_img/1_P_1449024889287.jpg"/></a></li>
         
              <li><a href="javascript:showPic()"><img style="width:auto;height:20rem;" src="http://192.168.199.163/images/201512/goods_img/1_P_1449024889264.jpg"/></a></li>
         
              <li><a href="javascript:showPic()"><img style="width:auto;height:20rem;" src="http://192.168.199.163/images/201512/goods_img/1_P_1449024889889.jpg"/></a></li>
         
              <li><a href="javascript:showPic()"><img style="width:auto;height:20rem;" src="http://192.168.199.163/images/201512/goods_img/1_P_1449024889726.jpg"/></a></li>
         
              <li><a href="javascript:showPic()"><img style="width:auto;height:20rem;" src="http://192.168.199.163/images/201512/goods_img/1_P_1449024889018.jpg"/></a></li>
                      </ul>
    </div>
    <div class="icons">
      <ul>
        <i class="current"></i> 
         
         
        <i class="current"></i> 
         
        <i class="current"></i> 
         
        <i class="current"></i> 
         
        <i class="current"></i> 
         
        <i class="current"></i> 
         
              </ul>
    </div>
  </div>
</section>
<script type="text/javascript">
TouchSlide({ 
	slideCell:"#slideBox",
	titCell:".icons ul", //开启自动分页 autoPage:true ，此时设置 titCell 为导航元素包裹层
	mainCell:".scroller ul", 
	effect:"leftLoop", 
	autoPage:true,//自动分页
	autoPlay:true //自动播放wq
});
function showPic(){
	var data = document.getElementById("slideBox").className;
	var reCat = /ui-gallery/;
	//str1.indexOf(str2);
	if( reCat.test(data) ){
		document.getElementById("slideBox").className = 'slideBox';
	}else{
		document.getElementById("slideBox").className = 'slideBox ui-gallery';
		//document.getElementById("slideBox").style.position = 'fixed';
	}
}
</script> 
 
<section class="goodsInfo">
  <a class="collect" id="collect_box" href="javascript:collect(1)" style="display: inline;"></a>
  <div class="title">
    <h1> 新鲜水果甜蜜香脆单果约800克 </h1>
  </div>
    <div class="title">
    食用百香果可以增加胃部饱腹感，减少余热量的摄入，还可以吸附胆固醇和胆汁之类有机分子，抑制人体对脂肪的吸收。因此，长期食用有利于改善人体营养吸收结构，降低体内脂肪，塑造健康优美体态。 
  </div>
  <ul>
        <li>促销价：<b class="price">￥<span>156</span></b>　    <del>￥<span>232</span></del> 
    </li> 
     
	  </ul>
   
  <script type="text/javascript" src="data/static/js/lefttime.js"></script>  <ul>
    <li> <span class="time">时间剩余：<time class="countdown" id="leftTime">请稍等, 正在载入中...</time></span> </li>
  </ul>
      <ul>
    <li>
        本商品正在进行        <a href="group_buy.php" title="团购活动" class="rule c333">[团购活动]</a>
        <a href="group_buy.php?act=view&amp;id=6" title="团购活动 雷米高澳丽得成犬粮20kg的时间为2015-11-25到2022-11-29，赶快来抢吧！" class="rule c333">雷米高澳丽得成犬粮20kg</a><br />
        本商品正在进行        <a href="activity.php" title="优惠活动" class="rule c333">[优惠活动]</a>
        <a href="activity.php" title="优惠活动 购物金额满500元，省100元的时间为2015-11-20到2023-11-25，赶快来抢吧！" class="rule c333">购物金额满500元，省100元</a><br />
        </li>
  </ul>
    
  <ul>
    <li>月销量：1000件</li>
  </ul>
</section>
<div class="wrap">
  <section class="goodsBuy radius5">
    <input id="goodsBuy-open" type="checkbox">
    <label class="info" for="goodsBuy-open">
    <div>请选择<span>外观/款式/重量</span><i></i></div>
    <div class="selected"> </div>
    </label>
    <form action="javascript:addToCart(1)" method="post" name="ECS_FORMBUY" id="ECS_FORMBUY" >
     <div class="fields"   style="display: block;">	 
        <ul class="ul1">
          <li>商品总价：<font id="ECS_GOODS_AMOUNT" class="price"></font></li>
          <li></li>
        </ul>
        <ul class="ul2">
               
              		<li>
		<h2>外观：</h2>
                <div class="items"> 
                   
                   
                   
                  
                  <input type="hidden" name="spec_attr_type" value="214">
                  <ul class="ys_xuan" id="xuan_214">
                    <div class="catt" id="catt_214"> 
                       
                      <a href="javascript:" class="cattsel" onclick="show_attr_status(this,1);" name="4" id="xuan_a_4">
		      <p style="background:#FFCE6B; height:40px; width:40px" title="红色">
		      		                            <i></i>
                      </p>
                      <input style="display:none" id="spec_value_4" type="radio" name="spec_214" value="4" checked />
                      </a> 
                       
                      <a href="javascript:"  onclick="show_attr_status(this,1);" name="5" id="xuan_a_5">
		      <p style="background:#9661FF; height:40px; width:40px" title="蓝色">
		      		                            <i></i>
                      </p>
                      <input style="display:none" id="spec_value_5" type="radio" name="spec_214" value="5"  />
                      </a> 
                       
                      <a href="javascript:"  onclick="show_attr_status(this,1);" name="6" id="xuan_a_6">
		      <p style="background:#6B9621; height:40px; width:40px" title="绿色">
		      		                            <i></i>
                      </p>
                      <input style="display:none" id="spec_value_6" type="radio" name="spec_214" value="6"  />
                      </a> 
                       
                    </div>
                  </ul>
                  <input type="hidden" name="spec_list" value="2" />
                   
                   
                   
                </div>
              		<li>
		<h2>款式：</h2>
                <div class="items"> 
                   
                   
                   
                  
                  <input type="hidden" name="spec_attr_type" value="215">
                  <ul class="ys_xuan" id="xuan_215">
                    <div class="catt" id="catt_215"> 
                       
                      <a href="javascript:" class="cattsel" onclick="show_attr_status(this,1);" name="7" id="xuan_a_7">
		      <p class="padd" title="时尚款">
		      		      <img src="http://192.168.199.163/images/201512/thumb_img/1_thumb_G_1449025104251.jpg" width="40" height="40" alt="时尚款">
		                            <i></i>
                      </p>
                      <input style="display:none" id="spec_value_7" type="radio" name="spec_215" value="7" checked />
                      </a> 
                       
                      <a href="javascript:"  onclick="show_attr_status(this,1);" name="8" id="xuan_a_8">
		      <p class="padd" title="经典款">
		      		      <img src="http://192.168.199.163/images/201512/thumb_img/1_thumb_G_1449025115783.jpg" width="40" height="40" alt="经典款">
		                            <i></i>
                      </p>
                      <input style="display:none" id="spec_value_8" type="radio" name="spec_215" value="8"  />
                      </a> 
                       
                      <a href="javascript:"  onclick="show_attr_status(this,1);" name="9" id="xuan_a_9">
		      <p class="padd" title="出众款">
		      		      <img src="http://192.168.199.163/images/201512/thumb_img/1_thumb_G_1449025126133.jpg" width="40" height="40" alt="出众款">
		                            <i></i>
                      </p>
                      <input style="display:none" id="spec_value_9" type="radio" name="spec_215" value="9"  />
                      </a> 
                       
                    </div>
                  </ul>
                  <input type="hidden" name="spec_list" value="2" />
                   
                   
                   
                </div>
              		<li>
		<h2>重量：</h2>
                <div class="items"> 
                   
                   
                   
                  
                  <input type="hidden" name="spec_attr_type" value="211">
                  <ul class="ys_xuan" id="xuan_211">
                    <div class="catt" id="catt_211"> 
                       
                      <a href="javascript:" class="cattsel" onclick="show_attr_status(this,1);" name="1" id="xuan_a_1">
		      <p style="padding:6px 10px;" title="500克">
		                            <em>500克</em>
                                            <i></i>
                      </p>
                      <input style="display:none" id="spec_value_1" type="radio" name="spec_211" value="1" checked />
                      </a> 
                       
                      <a href="javascript:"  onclick="show_attr_status(this,1);" name="3" id="xuan_a_3">
		      <p style="padding:6px 10px;" title="2000克">
		                            <em>2000克</em>
                                            <i></i>
                      </p>
                      <input style="display:none" id="spec_value_3" type="radio" name="spec_211" value="3"  />
                      </a> 
                       
                      <a href="javascript:"  onclick="show_attr_status(this,1);" name="2" id="xuan_a_2">
		      <p style="padding:6px 10px;" title="1000克">
		                            <em>1000克</em>
                                            <i></i>
                      </p>
                      <input style="display:none" id="spec_value_2" type="radio" name="spec_211" value="2"  />
                      </a> 
                       
                    </div>
                  </ul>
                  <input type="hidden" name="spec_list" value="2" />
                   
                   
                   
                </div>
               
               
              <script type="text/javascript">
var myString=new Array();
myString[0]="|1|4|7|";
myString[1]="|1|4|8|";
myString[2]="|1|4|9|";
myString[3]="|1|5|7|";
myString[4]="|1|5|8|";
myString[5]="|1|5|9|";
myString[6]="|1|6|7|";
myString[7]="|1|6|8|";
myString[8]="|1|6|9|";
myString[9]="|2|4|7|";
myString[10]="|2|4|8|";
myString[11]="|2|4|9|";
myString[12]="|2|5|7|";
myString[13]="|2|5|8|";
myString[14]="|2|5|9|";
myString[15]="|2|6|7|";
myString[16]="|2|6|8|";
myString[17]="|2|6|9|";
myString[18]="|3|4|7|";
myString[19]="|3|4|8|";
myString[20]="|3|4|9|";
myString[21]="|3|5|7|";
myString[22]="|3|5|8|";
myString[23]="|3|5|9|";
myString[24]="|3|6|7|";
myString[25]="|3|6|8|";
myString[26]="|3|6|9|";
</script> 
               
              
        </ul>
        <ul class="quantity">
          <h2>数量：</h2>
          <div class="items"> 
	   <span class="ui-number radius5" style="float:left;"> 
                        <button type="button" class="decrease radius5" onclick="changenum(- 1)">-</button>
            <input class="num" name="number" id="goods_number" autocomplete="off" value="1" min="1" max="65535" type="text" />
            <button type="button" class="increase radius5" onclick="changenum(1)">+</button>
             
           </span>
           <p style="float:left;heigth:2.3rem;line-height:2.3rem;margin-left:1rem;">
	       
                     
                    库存：
                    <font id="shows_number">载入中···</font>
                     
	                 </p>
	  </div>
        </ul>
      </div>
      <div class="option" > 
        <script type="text/javascript">
            function showDiv(){
                document.getElementById('popDiv').style.display = 'block';
				document.getElementById('hidDiv').style.display = 'block';
				document.getElementById('cartNum').innerHTML = document.getElementById('goods_number').value;
				document.getElementById('cartPrice').innerHTML = document.getElementById('ECS_GOODS_AMOUNT').innerHTML;
            }
            function closeDiv(){
                document.getElementById('popDiv').style.display = 'none';
				document.getElementById('hidDiv').style.display = 'none';
            }
     </script>
	 <!--
        <button type="button" class="btn buy radius5" onClick="addToCart_quick(1)">立即购买</button>
        <button type="button" class="btn cart radius5" onclick="addToCart(1);">
        <div class="ico_01"></div>
        加入购物车</button>-->
        
        <div class="tipMask" id="hidDiv" style="display:none" ></div>
        <div class="popGeneral" id="popDiv" >
          <div class="tit">
            <h4>商品加入购物车</h4>
            <span class="ico_08" onclick="closeDiv()"><a href="javascript:"></a></span> </div>
          <div id="main">
            <div id="left"> <img width="115" height="115" src="http://192.168.199.163/images/201512/source_img/1_G_1449024889141.jpg"> </div>
            <div id="right">
              <p>新鲜水果甜蜜香脆单果约800克</p>
              <span> 加入数量： <b id="cartNum"></b></span> <span> 总计金额： <b id="cartPrice"></b></span> 
            </div>
          </div>
          <div class="popbtn"> <a class="bnt1 flex_in radius5" onclick="closeDiv()" href="javascript:void(0);">继续购物</a> <a class="bnt2 flex_in radius5" href="flow.php">去结算</a> </div>
        </div>
         
      </div>
    </form>
  </section>
  <div class="guarantee">微信支付商家,正品保证,假一罚三,七天无条件退换货。</div>
</div>
<script type="text/javascript">
//介绍 评价 咨询切换
var tab_now = 1;
function tab(id){
	document.getElementById('tabs' + tab_now).className = document.getElementById('tabs' + tab_now).className.replace('current', '');
	document.getElementById('tabs' + id).className = document.getElementById('tabs' + id).className.replace('', 'current');
	tab_now = id;
	if (id == 1) {
		document.getElementById('tab1').className = '';
		document.getElementById('tab2').className = 'hidden';
		document.getElementById('tab3').className = 'hidden';
	}else if (id == 2) {
		document.getElementById('tab1').className = 'hidden';
		document.getElementById('tab2').className = '';
		document.getElementById('tab3').className = 'hidden';
	}else if (id == 3) {
		document.getElementById('tab1').className = 'hidden';
		document.getElementById('tab2').className = 'hidden';
		document.getElementById('tab3').className = '';
	}
}
</script> 
<section class="s-detail">
  <header>
    <ul style="position: static;" id="detail_nav">
      <li id="tabs1" onClick="tab(1)" class="current"> 详情 </li>
      <li id="tabs2" onClick="tab(2)" class=""> 评价 <span class="review-count">(1)</span> </li>
      <li id="tabs3" onClick="tab(3)" class=""> 热销 </li>
    </ul>
  </header>
  <div id="tab1" class="">
<div class="spxq_main">
<style>
.spxq_main table {
    width: 100%;
}
.spxq_main table td {
    border: 1px solid #e5e5e5;
    padding: 5px 10px;
    background-color: #fff;
}
.spxq_main table td.th {
    background-color: #f5f5f5;
    font-weight: bold;
    text-align: right;
    width: 70px;
}
.spxq_main table td strong {
    font-weight: 400;
}
.spxq_main table td div, .spxq_main table td span {
    display: block;
    margin-bottom: 4px;
}
</style>
  <table>
    <tbody>
      <tr>
        <td width="25%" class="th">
          产品名称 :
        </td>
        <td width="75%">
          新鲜水果甜蜜香脆单果约800克        </td>
      </tr>
                </tbody>
  </table>
</div>
    <div class="desc wrap">
      <div class="blank2"></div>
	  
	  		<p><img width="790" height="441" src="http://192.168.199.163/images/upload/Image/1(1).jpg" alt="" /><br />
<img width="790" height="595" src="http://192.168.199.163/images/upload/Image/2.jpg" alt="" /><br />
<img width="790" height="602" src="http://192.168.199.163/images/upload/Image/3.jpg" alt="" /></p>	      </div>
  </div>
  <div id="tab2" class="hidden">
    <div class="wrap">
      <div class="blank2"></div>
      <script type="text/javascript" src="data/static/js/transportjq.js"></script><script type="text/javascript" src="data/static/js/utils.js"></script><div id="ECS_COMMENT"> 554fcae493e564ee0dc75bdf2ebf94cacomments|a:3:{s:4:"name";s:8:"comments";s:4:"type";i:0;s:2:"id";i:1;}554fcae493e564ee0dc75bdf2ebf94ca</div>
 </div>
  </div>
  <div id="tab3" class="hidden">
    <div class="wrap">
      <ul class="m-recommend ">
        <div class="blank2"></div>
         
        <li class="flex_in  "    > <a href="goods.php?id=2">
        <div class="summary radius5"> <img src="http://192.168.199.163/images/201512/thumb_img/2_thumb_G_1448945810147.jpg" alt=""/>
          <div class="price"> 
            
             
            ￥<span>88</span> 
             
            
          </div>
        </div>
         
        </a>
        </li>
         
        <li class="flex_in  "    style="float:right"  > <a href="goods.php?id=4">
        <div class="summary radius5"> <img src="http://192.168.199.163/images/201512/thumb_img/4_thumb_G_1448945381841.jpg" alt=""/>
          <div class="price"> 
            
             
            ￥<span>75</span> 
             
            
          </div>
        </div>
         
        </a>
        </li>
         
        <li class="flex_in  "    > <a href="goods.php?id=6">
        <div class="summary radius5"> <img src="http://192.168.199.163/images/201512/thumb_img/6_thumb_G_1448945167914.jpg" alt=""/>
          <div class="price"> 
            
             
            ￥<span>199</span> 
             
            
          </div>
        </div>
         
        </a>
        </li>
              </ul>
    </div>
  </div>
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
</script> 
 
<script type="text/javascript">
var goods_id = 1;
var goodsattr_style = 1;
var gmt_end_time = 1637740800;
var day = "天";
var hour = "小时";
var minute = "分钟";
var second = "秒";
var end = "结束";
var goodsId = 1;
var now_time = 1504570090;
onload = function(){
  changePrice();
  changeKucun();//这里是添加的
  fixpng();
  try {onload_leftTime();}
  catch (e) {}
}
/**
 * 点选可选属性或改变数量时修改商品价格的函数
 */
function changePrice()
{
  var attr = getSelectedAttributes(document.forms['ECS_FORMBUY']);
  var qty = document.forms['ECS_FORMBUY'].elements['number'].value;
  Ajax.call('goods.php', 'act=price&id=' + goodsId + '&attr=' + attr + '&number=' + qty, changePriceResponse, 'GET', 'JSON');
}
/**
 * 接收返回的信息
 */
function changePriceResponse(res)
{
  if (res.err_msg.length > 0)
  {
    alert(res.err_msg);
  }
  else
  {
    document.forms['ECS_FORMBUY'].elements['number'].value = res.qty;
    if (document.getElementById('ECS_GOODS_AMOUNT'))
      document.getElementById('ECS_GOODS_AMOUNT').innerHTML = res.result;
  }
}
</script>
<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script>
  wx.config({
    debug: false,
    appId: '',
    timestamp: 1504598890,
    nonceStr: '25naYnPJdkmZyqCQ',
    signature: 'c941a42ba904aadd50250dd91f4aa26ae414aad3',
    jsApiList: [
        'onMenuShareTimeline',
        'onMenuShareAppMessage' 
    ]
  });
 wx.ready(function () {
	//模板之家监听“分享给朋友”
    wx.onMenuShareAppMessage({
      title: '新鲜水果甜蜜香脆单果约800克',
      desc: '新鲜水果甜蜜香脆单果约800克',
      link: '',
      imgUrl: 'http://192.168.199.163/images/201512/source_img/1_G_1449024889141.jpg',
      trigger: function (res) {
		
				alert('糟糕，需要分销商登录才能获得提成哦！');
				
      },
      success: function (res) {
		      },
      cancel: function (res) {
        alert('很遗憾，您已取消分享');
      },
      fail: function (res) {
        alert(JSON.stringify(res));
      }
    });
	//分享到朋友圈模板之家
    wx.onMenuShareTimeline({
      title: '新鲜水果甜蜜香脆单果约800克',
      link: '',
      imgUrl: 'http://192.168.199.163/images/201512/source_img/1_G_1449024889141.jpg',
      trigger: function (res) {
			
        			alert('糟糕，需要分销商登录才能获得提成哦！');
		      },
      success: function (res) {
       	      },
      cancel: function (res) {
         alert('很遗憾，您已取消分享');
      },
      fail: function (res) {
        alert(JSON.stringify(res));
      }
    });
});
</script>
<section id="s-action" class="s-action float">
    <button class="buy" type="button" onclick="addToCart_quick(1)">立刻购买</button>
    <button class="cart" type="button" onclick="addToCart(1);">加入购物车</button>
    <div class="countdown"> <span class="label"></span><span class="time"></span></div>
    <a href="flow.php?step=cart" class="cart-link" title="购物车"></a>
</section>
</body>
</html>