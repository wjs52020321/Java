<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商场首页</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="format-detection" content="telephone=no" />
<link href="themes/ocailong_com/images/touch-icon.png" rel="apple-touch-icon-precomposed" />
<link href="themes/ocailong_com/images/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link href="themes/ocailong_com/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="themes/ocailong_com/js/TouchSlide.js"></script>
<script type="text/javascript" src="themes/ocailong_com/js/jquery.min.js"></script>
<script type="text/javascript" src="themes/ocailong_com/js/jquery.mmenu.js"></script>
<script type="text/javascript" src="themes/ocailong_com/js/ectouch.js"></script>
<script type="text/javascript">
  function getLocalTime(nS) {
    return new Date(parseInt(nS) * 1000).toLocaleString().replace(/:\d{1,2}$/, ' ');
  }
  function limitCount() {
    var a = limitCount.doms = limitCount.doms || $("#JS_limit_table div.JS_leaveTime");
    a.each(function() {
      var c = $(this);
      var b = c[0]._timeline = c[0]._timeline || c.data("timeline");
      c.html(limitFormatTime(b - limitCount.unixTime));
    });
  }
  function limitFormatTime(e) {
    if (e < 0) {
      e = 0;
    }
    var NowTime = new Date();
    var t = e * 1000 - NowTime.getTime();
    /*var d=Math.floor(t/1000/60/60/24);
        t-=d*(1000*60*60*24);
        var h=Math.floor(t/1000/60/60);
        t-=h*60*60*1000;
        var m=Math.floor(t/1000/60);
        t-=m*60*1000;
        var s=Math.floor(t/1000);*/
    var d = Math.floor(t / 1000 / 60 / 60 / 24);
    if (d<10){
       d = '0' + d;
    }
    var h = Math.floor(t / 1000 / 60 / 60 % 24);
    if (h<10){
       h = '0' + h;
    }
    var m = Math.floor(t / 1000 / 60 % 60);
    if (m<10){
       m = '0' + m;
    }
    var s = Math.floor(t / 1000 % 60);
    if (s<10){
       s = '0' + s;
    }
    if (t < 0) {
    return "活动结束";
    }
    return '<em>'+ d + '</em>天' + '<em>' + h + '</em>时<em>' + m + '</em>分<em>' + s + '</em>秒';
  }
  function _COMMON_UNIX_TIME() {
    limitCount.unixTime = 0;
    setInterval(limitCount, 1000);
  }
  _COMMON_UNIX_TIME();
</script>
 
<style>
*{outline:0;-webkit-tap-highlight-color:transparent;-webkit-box-sizing:border-box;box-sizing:border-box}
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
 
</head>
<body>
<div id="page">
  <header id="header" >
    <div class="header_l"> <a class="ico_02" href="#menu"> 菜单栏 </a> </div>
    <h1> 商城演示站 </h1>
    <div class="header_r"> <a class="ico_01" href="flow.php"> 购物车 </a> </div>
  </header>
</div>
 
<div id="focus" class="focus region">
  <div class="hd">
    <ul>
    </ul>
  </div>
  <div class="bd">
    
<ul>
  <li><a href='affiche.php?ad_id=2&amp;uri='

                target='_blank'><img src='data/afficheimg/1457813006192951719.jpg' width='360' height='168'

                border='0' /></a></li>
  <li><a href='affiche.php?ad_id=4&amp;uri='

                target='_blank'><img src='data/afficheimg/1457813020818820425.jpg' width='360' height='168'

                border='0' /></a></li>
  <li><a href='affiche.php?ad_id=1&amp;uri='

                target='_blank'><img src='data/afficheimg/1457812991560083075.jpg' width='360' height='168'

                border='0' /></a></li>
</ul>
  </div>
</div>
<script type="text/javascript">
TouchSlide({ 
	slideCell:"#focus",
	titCell:".hd ul", //开启自动分页 autoPage:true ，此时设置 titCell 为导航元素包裹层
	mainCell:".bd ul", 
	effect:"leftLoop", 
	autoPlay:true,//自动播放
	autoPage:true //自动分页
});
</script>
<div id=content class="wrap">
  
  <header class=region>
    <div class=content>
      <div id=fake-search>
        <div class="fakeInput radius15">
          <button class="text" id="get_search_box" style="color:silver;">搜本站商品</button>
          <div class="search ico_03"> </div>
        </div>
      </div>
    </div>
</head>
<body>
 <div class="region row row_category">
    <ul class="flex flex-f-row">
            <li class="flex_in"> <a href="cat_all.php" title="全部分类"> <div class="CarouselImg"><img src="data/item_pic/1443584338752549142.png" /></div> </a>
        <p> 全部分类 </p>
      </li>
                  <li class="flex_in"> <a href="help.jsp" title="帮助中心"> <div class="CarouselImg"><img src="data/item_pic/1448075935109557161.png" /></div> </a>
        <p> 帮助中心 </p>
      </li>
                  <li class="flex_in">
                  	<%
					if (session.getAttribute("username") == null) {
				%>
				 <a href="login.jsp" title="个人中心">
				<%
					} else {
				%>
				<a href="userIndex.jsp" title="个人中心">
				<%
					}
				%> <div class="CarouselImg"><img src="data/item_pic/1443584373727011961.png" /></div> </a>
        <p> 个人中心 </p>
      </li>
                  <li class="flex_in"> <a href="fenxiao.jsp" title="分销中心"> <div class="CarouselImg"><img src="data/item_pic/1443586488909704319.png" /></div> </a>
        <p> 分销中心 </p>
      </li>
            </ul><ul class="flex flex-f-row">
                  <li class="flex_in"> <a href="lianxi.jsp" title="联系我们"> <div class="CarouselImg"><img src="data/item_pic/1443586300343329180.png" /></div> </a>
        <p> 联系我们 </p>
      </li>
                  <li class="flex_in"> <a href="tuangou.jsp" title="团购"> <div class="CarouselImg"><img src="data/item_pic/1443585779204202237.png" /></div> </a>
        <p> 团购 </p>
      </li>
                  <li class="flex_in"> <a href="jifen.jsp" title="积分商城"> <div class="CarouselImg"><img src="data/item_pic/1443586061863736586.png" /></div> </a>
        <p> 积分商城 </p>
      </li>
                  <li class="flex_in"> <a href="gouwuc.jsp" title="购物车"> <div class="CarouselImg"><img src="data/item_pic/1443584408064043342.png" /></div> </a>
        <p> 购物车 </p>
      </li>
                </ul>
  </div>
  
  
<div class="blank2"></div>
<div class="mainCon">
  <dl class="wholeTime">
     <dt class="wholePoint surper clearfix">
        <span class="san fl"><i></i>特色市场</span>
     </dt>
     <dd>
     <div class="superBan clearfix">
       <div class="featurBan1 fl">
         
<a href='affiche.php?ad_id=5&amp;uri='

                target='_blank'><img src='data/afficheimg/1449014605524349143.jpg' width='360' height='140'

                border='0' /></a><a href='affiche.php?ad_id=6&amp;uri='

                target='_blank'><img src='data/afficheimg/1449014633204150477.jpg' width='360' height='140'

                border='0' /></a>
       </div>
       <div class="featurBan2 fl">
         
<a href='affiche.php?ad_id=7&amp;uri='

                target='_blank'><img src='data/afficheimg/1457813429601574062.jpg' width='258' height='280'

                border='0' /></a>
       </div>
     </div>        
     </dd>
  </dl>
</div>
<div class="blank2"></div>
<div class="mainCon">
  <dl class="wholeTime">
    <dt class="wholePoint surper clearfix">
      <span class="san fl">
        <i>
        </i>
        热门市场
      </span>
    </dt>
    <dd>
      <div class="superBan brandWallBan clearfix">
         
<a href='affiche.php?ad_id=9&amp;uri='

                target='_blank'><img src='data/afficheimg/1449017715707894167.jpg' width='345' height='372'

                border='0' /></a><a href='affiche.php?ad_id=10&amp;uri='

                target='_blank'><img src='data/afficheimg/1449017725192980023.jpg' width='345' height='372'

                border='0' /></a><a href='affiche.php?ad_id=12&amp;uri='

                target='_blank'><img src='data/afficheimg/1449017744088348985.jpg' width='345' height='372'

                border='0' /></a><a href='affiche.php?ad_id=13&amp;uri='

                target='_blank'><img src='data/afficheimg/1449017754317369153.jpg' width='345' height='372'

                border='0' /></a><a href='affiche.php?ad_id=8&amp;uri='

                target='_blank'><img src='data/afficheimg/1449017705247505261.jpg' width='345' height='372'

                border='0' /></a><a href='affiche.php?ad_id=15&amp;uri='

                target='_blank'><img src='data/afficheimg/1449017772357575701.jpg' width='345' height='372'

                border='0' /></a><a href='affiche.php?ad_id=16&amp;uri='

                target='_blank'><img src='data/afficheimg/1449017780762813247.jpg' width='345' height='372'

                border='0' /></a><a href='affiche.php?ad_id=14&amp;uri='

                target='_blank'><img src='data/afficheimg/1449017763165246328.jpg' width='345' height='372'

                border='0' /></a><a href='affiche.php?ad_id=11&amp;uri='

                target='_blank'><img src='data/afficheimg/1449017734025885281.jpg' width='345' height='372'

                border='0' /></a>
      </div>
    </dd>
  </dl>
</div>
<div class="blank2"></div>
<section class="item_show_box1 box1 region">
    <h3>
      <a target="_top" href="search.php?intro=best">
        <span class="titico"></span>精品推荐<span class="titmore"><i class="ico_16"></i></span>
      </a>
    </h3>
    <div class="flex flex-f-row">
                <div class="goodsItem flex_in">
            <a href="goods.php?id=49">
                <img src="http://192.168.199.163/images/201511/thumb_img/49_thumb_G_1448162819357.jpg" alt="1分钱支付测试商品" />
            </a>
            <div style="text-align:center">
             
            <span class="price_s"> ￥<span>0</span> </span> 
                        <br>1分钱支付测试商品            </div>
        </div>
                         <div class="goodsItem flex_in">
            <a href="goods.php?id=16">
                <img src="http://192.168.199.163/images/201512/thumb_img/16_thumb_G_1448947194349.jpg" alt="52度茅台集团国隆双喜酒500mlx6" />
            </a>
            <div style="text-align:center">
             
            <span class="price_s"> ￥<span>19</span> </span> 
                        <br>52度茅台集团国隆双喜酒...            </div>
        </div>
                         <div class="goodsItem flex_in">
            <a href="goods.php?id=30">
                <img src="http://192.168.199.163/images/201512/thumb_img/30_thumb_G_1448948662661.jpg" alt="泰国菠萝蜜16-18斤 1个装" />
            </a>
            <div style="text-align:center">
             
            <span class="price_s"> ￥<span>9</span> </span> 
                        <br>泰国菠萝蜜16-18斤 ...            </div>
        </div>
         </div><div class="flex flex-f-row">            </div>
</section>
<div class="blank2"></div>
<section class="item_show_box1 box1 region">
    <h3>
      <a target="_top" href="category.php?id=2">
        <span class="titico"></span>生鲜食品<span class="titmore"><i class="ico_16"></i></span>
      </a>
    </h3>
    <div class="flex flex-f-row">
                <div class="goodsItem flex_in">
            <a href="goods.php?id=48">
                <img src="http://192.168.199.163/images/201512/thumb_img/48_thumb_G_1448943988607.jpg" alt="新疆巴尔鲁克生鲜牛排眼肉牛扒1200g" />
            </a>
            <div style="text-align:center">
             
            <span class="price_s"> ￥<span>88</span> </span> 
                        <br>新疆巴尔鲁克生鲜牛排眼肉...            </div>
        </div>
                         <div class="goodsItem flex_in">
            <a href="goods.php?id=47">
                <img src="http://192.168.199.163/images/201512/thumb_img/47_thumb_G_1448946213633.jpg" alt="日本蒜蓉粉丝扇贝270克6只装" />
            </a>
            <div style="text-align:center">
             
            <span class="price_s"> ￥<span>108</span> </span> 
                        <br>日本蒜蓉粉丝扇贝270克...            </div>
        </div>
                         <div class="goodsItem flex_in">
            <a href="goods.php?id=11">
                <img src="http://192.168.199.163/images/201512/thumb_img/11_thumb_G_1448944388914.jpg" alt="澳洲进口120天谷饲牛仔骨4份原味生鲜" />
            </a>
            <div style="text-align:center">
             
            <span class="price_s"> ￥<span>26</span> </span> 
                        <br>澳洲进口120天谷饲牛仔...            </div>
        </div>
         </div><div class="flex flex-f-row">                <div class="goodsItem flex_in">
            <a href="goods.php?id=10">
                <img src="http://192.168.199.163/images/201512/thumb_img/10_thumb_G_1448944572962.jpg" alt="内蒙新鲜牛肉1斤清真生鲜牛肉火锅食材" />
            </a>
            <div style="text-align:center">
             
            <span class="price_s"> ￥<span>88</span> </span> 
                        <br>内蒙新鲜牛肉1斤清真生鲜...            </div>
        </div>
                         <div class="goodsItem flex_in">
            <a href="goods.php?id=9">
                <img src="http://192.168.199.163/images/201512/thumb_img/9_thumb_G_1448944791708.jpg" alt="爱食派内蒙古呼伦贝尔冷冻生鲜牛腱子肉1000g" />
            </a>
            <div style="text-align:center">
             
            <span class="price_s"> ￥<span>168</span> </span> 
                        <br>爱食派内蒙古呼伦贝尔冷冻...            </div>
        </div>
                         <div class="goodsItem flex_in">
            <a href="goods.php?id=8">
                <img src="http://192.168.199.163/images/201512/thumb_img/8_thumb_G_1448945032585.jpg" alt="五星眼肉牛排套餐8片装原味原切生鲜牛肉" />
            </a>
            <div style="text-align:center">
             
            <span class="price_s"> ￥<span>125</span> </span> 
                        <br>五星眼肉牛排套餐8片装原...            </div>
        </div>
         </div><div class="flex flex-f-row">            </div>
    <div class="item_tags clearfix">
                        <A href="category.php?id=15">
            精品肉类        </A>
                <A href="category.php?id=16">
            海鲜水产        </A>
                <A href="category.php?id=17">
            蛋制品        </A>
                <A href="category.php?id=18">
            叶菜类        </A>
                <A href="category.php?id=19">
            根茎类        </A>
                <A href="category.php?id=20">
            茄果类        </A>
                <A href="category.php?id=21">
            菌菇类        </A>
                <A href="category.php?id=22">
            进口生鲜        </A>
                    </div>
</section>
<div class="blank2"></div>
<section class="item_show_box1 box1 region">
    <h3>
      <a target="_top" href="category.php?id=1">
        <span class="titico"></span>酒水饮料<span class="titmore"><i class="ico_16"></i></span>
      </a>
    </h3>
    <div class="flex flex-f-row">
                <div class="goodsItem flex_in">
            <a href="goods.php?id=51">
                <img src="http://192.168.199.163/images/201512/thumb_img/51_thumb_G_1448946466261.jpg" alt="人头马CLUB特优香槟干邑350ml" />
            </a>
            <div style="text-align:center">
             
            <span class="price_s"> ￥<span>26</span> </span> 
                        <br>人头马CLUB特优香槟干...            </div>
        </div>
                         <div class="goodsItem flex_in">
            <a href="goods.php?id=50">
                <img src="http://192.168.199.163/images/201512/thumb_img/50_thumb_G_1448946542088.jpg" alt="Johnnie Walker尊尼获加黑牌威士忌" />
            </a>
            <div style="text-align:center">
             
            <span class="price_s"> ￥<span>20</span> </span> 
                        <br>Johnnie Walk...            </div>
        </div>
                         <div class="goodsItem flex_in">
            <a href="goods.php?id=46">
                <img src="http://192.168.199.163/images/201512/thumb_img/46_thumb_G_1448946598227.jpg" alt="双响炮洋酒JimBeam whiskey美国白占边" />
            </a>
            <div style="text-align:center">
             
            <span class="price_s"> ￥<span>28</span> </span> 
                        <br>双响炮洋酒JimBeam...            </div>
        </div>
         </div><div class="flex flex-f-row">                <div class="goodsItem flex_in">
            <a href="goods.php?id=45">
                <img src="http://192.168.199.163/images/201512/thumb_img/45_thumb_G_1448946661697.jpg" alt="深蓝伏特加巴维兰利口酒送预调酒" />
            </a>
            <div style="text-align:center">
             
            <span class="price_s"> ￥<span>18</span> </span> 
                        <br>深蓝伏特加巴维兰利口酒送...            </div>
        </div>
                         <div class="goodsItem flex_in">
            <a href="goods.php?id=22">
                <img src="http://192.168.199.163/images/201512/thumb_img/22_thumb_G_1448946729918.jpg" alt="芝华士12年 苏格兰威士忌700ml" />
            </a>
            <div style="text-align:center">
             
            <span class="price_s"> ￥<span>59</span> </span> 
                        <br>芝华士12年 苏格兰威士...            </div>
        </div>
                         <div class="goodsItem flex_in">
            <a href="goods.php?id=21">
                <img src="http://192.168.199.163/images/201512/thumb_img/21_thumb_G_1448946793103.jpg" alt="西夫拉姆进口洋酒小酒版" />
            </a>
            <div style="text-align:center">
             
            <span class="price_s"> ￥<span>46</span> </span> 
                        <br>西夫拉姆进口洋酒小酒版            </div>
        </div>
         </div><div class="flex flex-f-row">            </div>
    <div class="item_tags clearfix">
                        <A href="category.php?id=23">
            白酒        </A>
                <A href="category.php?id=24">
            葡萄酒        </A>
                <A href="category.php?id=25">
            洋酒        </A>
                <A href="category.php?id=26">
            啤酒        </A>
                <A href="category.php?id=27">
            其他酒品        </A>
                <A href="category.php?id=28">
            饮料/水        </A>
                <A href="category.php?id=29">
            红酒        </A>
                    </div>
</section>
<div class="blank2"></div>
<section class="item_show_box1 box1 region">
    <h3>
      <a target="_top" href="category.php?id=5">
        <span class="titico"></span>粮油副食<span class="titmore"><i class="ico_16"></i></span>
      </a>
    </h3>
    <div class="flex flex-f-row">
                <div class="goodsItem flex_in">
            <a href="goods.php?id=29">
                <img src="http://192.168.199.163/images/201512/thumb_img/29_thumb_G_1448947631664.jpg" alt="融氏纯玉米胚芽油5l桶" />
            </a>
            <div style="text-align:center">
             
            <span class="price_s"> ￥<span>12</span> </span> 
                        <br>融氏纯玉米胚芽油5l桶            </div>
        </div>
                         <div class="goodsItem flex_in">
            <a href="goods.php?id=28">
                <img src="http://192.168.199.163/images/201512/thumb_img/28_thumb_G_1448947699187.jpg" alt="橄榄玉米油5L*2桶" />
            </a>
            <div style="text-align:center">
             
            <span class="price_s"> ￥<span>26</span> </span> 
                        <br>橄榄玉米油5L*2桶            </div>
        </div>
                         <div class="goodsItem flex_in">
            <a href="goods.php?id=27">
                <img src="http://192.168.199.163/images/201512/thumb_img/27_thumb_G_1448947771206.jpg" alt="维纳斯橄榄菜籽油5L/桶" />
            </a>
            <div style="text-align:center">
             
            <span class="price_s"> ￥<span>156</span> </span> 
                        <br>维纳斯橄榄菜籽油5L/桶            </div>
        </div>
         </div><div class="flex flex-f-row">                <div class="goodsItem flex_in">
            <a href="goods.php?id=26">
                <img src="http://192.168.199.163/images/201512/thumb_img/26_thumb_G_1448947825794.jpg" alt="精炼一级大豆油5L色拉油粮油食用油" />
            </a>
            <div style="text-align:center">
             
            <span class="price_s"> ￥<span>45</span> </span> 
                        <br>精炼一级大豆油5L色拉油...            </div>
        </div>
                         <div class="goodsItem flex_in">
            <a href="goods.php?id=25">
                <img src="http://192.168.199.163/images/201512/thumb_img/25_thumb_G_1448947875633.jpg" alt="稻园牌稻米油粮油米糠油绿色植物油" />
            </a>
            <div style="text-align:center">
             
            <span class="price_s"> ￥<span>12</span> </span> 
                        <br>稻园牌稻米油粮油米糠油绿...            </div>
        </div>
                         <div class="goodsItem flex_in">
            <a href="goods.php?id=24">
                <img src="http://192.168.199.163/images/201512/thumb_img/24_thumb_G_1448948023508.jpg" alt="山西黑米 农家黑米4斤" />
            </a>
            <div style="text-align:center">
             
            <span class="price_s"> ￥<span>9</span> </span> 
                        <br>山西黑米 农家黑米4斤            </div>
        </div>
         </div><div class="flex flex-f-row">            </div>
    <div class="item_tags clearfix">
                        <A href="category.php?id=30">
            食用油        </A>
                <A href="category.php?id=31">
            米面杂粮        </A>
                <A href="category.php?id=32">
            厨房调料        </A>
                <A href="category.php?id=33">
            南北干货        </A>
                <A href="category.php?id=34">
            方便速食        </A>
                <A href="category.php?id=35">
            调味品        </A>
                    </div>
</section>
</div>
 
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
</script> 
<nav id="menu" style="display:None">
  <ul>
        <li> <a href="category.php?id=2"> 生鲜食品 </a>
      <ul>
                <li> <a href="category.php?id=15"> 精品肉类 </a>
          <ul>
                        <li> <a href="category.php?id=64"> 羊肉 </a> </li>
                        <li> <a href="category.php?id=65"> 禽类 </a> </li>
                        <li> <a href="category.php?id=66"> 猪肉 </a> </li>
                        <li> <a href="category.php?id=67"> 牛肉 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=16"> 海鲜水产 </a>
          <ul>
                        <li> <a href="category.php?id=68"> 参鲍 </a> </li>
                        <li> <a href="category.php?id=69"> 鱼 </a> </li>
                        <li> <a href="category.php?id=70"> 虾 </a> </li>
                        <li> <a href="category.php?id=71"> 蟹/贝 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=17"> 蛋制品 </a>
          <ul>
                        <li> <a href="category.php?id=72"> 松花蛋/咸鸭蛋 </a> </li>
                        <li> <a href="category.php?id=73"> 鸡蛋 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=18"> 叶菜类 </a>
          <ul>
                        <li> <a href="category.php?id=74"> 生菜 </a> </li>
                        <li> <a href="category.php?id=75"> 菠菜 </a> </li>
                        <li> <a href="category.php?id=76"> 圆椒 </a> </li>
                        <li> <a href="category.php?id=77"> 西兰花 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=19"> 根茎类 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=20"> 茄果类 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=21"> 菌菇类 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=22"> 进口生鲜 </a>
          <ul>
                      </ul>
        </li>
              </ul>
    </li>
        <li> <a href="category.php?id=1"> 酒水饮料 </a>
      <ul>
                <li> <a href="category.php?id=23"> 白酒 </a>
          <ul>
                        <li> <a href="category.php?id=83"> 五粮液 </a> </li>
                        <li> <a href="category.php?id=84"> 泸州老窖 </a> </li>
                        <li> <a href="category.php?id=85"> 茅台 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=24"> 葡萄酒 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=25"> 洋酒 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=26"> 啤酒 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=27"> 其他酒品 </a>
          <ul>
                        <li> <a href="category.php?id=78"> 其他品牌 </a> </li>
                        <li> <a href="category.php?id=79"> 黄酒 </a> </li>
                        <li> <a href="category.php?id=80"> 养生酒 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=28"> 饮料/水 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=29"> 红酒 </a>
          <ul>
                        <li> <a href="category.php?id=81"> 白兰地 </a> </li>
                        <li> <a href="category.php?id=82"> 威士忌 </a> </li>
                      </ul>
        </li>
              </ul>
    </li>
        <li> <a href="category.php?id=5"> 粮油副食 </a>
      <ul>
                <li> <a href="category.php?id=30"> 食用油 </a>
          <ul>
                        <li> <a href="category.php?id=86"> 其他食用油 </a> </li>
                        <li> <a href="category.php?id=87"> 菜仔油 </a> </li>
                        <li> <a href="category.php?id=88"> 花生油 </a> </li>
                        <li> <a href="category.php?id=89"> 橄榄油 </a> </li>
                        <li> <a href="category.php?id=90"> 礼盒 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=31"> 米面杂粮 </a>
          <ul>
                        <li> <a href="category.php?id=91"> 面粉/面条 </a> </li>
                        <li> <a href="category.php?id=92"> 大米 </a> </li>
                        <li> <a href="category.php?id=93"> 意大利面 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=32"> 厨房调料 </a>
          <ul>
                        <li> <a href="category.php?id=94"> 调味油/汁 </a> </li>
                        <li> <a href="category.php?id=95"> 酱油/醋 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=33"> 南北干货 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=34"> 方便速食 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=35"> 调味品 </a>
          <ul>
                      </ul>
        </li>
              </ul>
    </li>
        <li> <a href="category.php?id=11"> 蔬菜水果 </a>
      <ul>
                <li> <a href="category.php?id=41"> 有机蔬菜 </a>
          <ul>
                        <li> <a href="category.php?id=96"> 西红柿 </a> </li>
                        <li> <a href="category.php?id=97"> 韭菜 </a> </li>
                        <li> <a href="category.php?id=98"> 青菜 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=42"> 精选蔬菜 </a>
          <ul>
                        <li> <a href="category.php?id=99"> 甘蓝 </a> </li>
                        <li> <a href="category.php?id=100"> 胡萝卜 </a> </li>
                        <li> <a href="category.php?id=101"> 黄瓜 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=43"> 进口水果 </a>
          <ul>
                        <li> <a href="category.php?id=102"> 火龙果 </a> </li>
                        <li> <a href="category.php?id=103"> 菠萝蜜 </a> </li>
                        <li> <a href="category.php?id=104"> 奇异果 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=44"> 国产水果 </a>
          <ul>
                        <li> <a href="category.php?id=105"> 水果礼盒 </a> </li>
                        <li> <a href="category.php?id=106"> 苹果 </a> </li>
                        <li> <a href="category.php?id=107"> 雪梨 </a> </li>
                      </ul>
        </li>
              </ul>
    </li>
        <li> <a href="category.php?id=9"> 休闲食品 </a>
      <ul>
                <li> <a href="category.php?id=36"> 休闲零食 </a>
          <ul>
                        <li> <a href="category.php?id=108"> 果冻 </a> </li>
                        <li> <a href="category.php?id=109"> 枣类 </a> </li>
                        <li> <a href="category.php?id=110"> 蜜饯 </a> </li>
                        <li> <a href="category.php?id=111"> 肉类零食 </a> </li>
                        <li> <a href="category.php?id=112"> 坚果炒货 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=37"> 糖果 </a>
          <ul>
                        <li> <a href="category.php?id=113"> 创意喜糖 </a> </li>
                        <li> <a href="category.php?id=114"> 口香糖 </a> </li>
                        <li> <a href="category.php?id=115"> 软糖 </a> </li>
                        <li> <a href="category.php?id=116"> 棒棒糖 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=38"> 巧克力 </a>
          <ul>
                        <li> <a href="category.php?id=117"> 夹心巧克力 </a> </li>
                        <li> <a href="category.php?id=118"> 白巧克力 </a> </li>
                        <li> <a href="category.php?id=119"> 松露巧克力 </a> </li>
                        <li> <a href="category.php?id=120"> 黑巧克力 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=39"> 肉干肉脯/豆干 </a>
          <ul>
                        <li> <a href="category.php?id=121"> 牛肉干 </a> </li>
                        <li> <a href="category.php?id=122"> 猪肉脯 </a> </li>
                        <li> <a href="category.php?id=123"> 牛肉粒 </a> </li>
                        <li> <a href="category.php?id=124"> 猪肉干 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=40"> 鱿鱼丝/鱼干 </a>
          <ul>
                        <li> <a href="category.php?id=125"> 鱿鱼足 </a> </li>
                        <li> <a href="category.php?id=126"> 鱿鱼丝 </a> </li>
                        <li> <a href="category.php?id=127"> 墨鱼/乌贼 </a> </li>
                        <li> <a href="category.php?id=128"> 鱿鱼仔 </a> </li>
                        <li> <a href="category.php?id=129"> 鱿鱼片 </a> </li>
                      </ul>
        </li>
              </ul>
    </li>
        <li> <a href="category.php?id=12"> 奶类食品 </a>
      <ul>
                <li> <a href="category.php?id=45"> 进口奶品 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=46"> 国产奶品 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=47"> 奶粉 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=48"> 有机奶 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=49"> 原料奶 </a>
          <ul>
                      </ul>
        </li>
              </ul>
    </li>
        <li> <a href="category.php?id=6"> 天然干货 </a>
      <ul>
                <li> <a href="category.php?id=53"> 菌菇类 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=54"> 腌干海产 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=55"> 汤料 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=56"> 豆类 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=57"> 干菜/菜干 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=58"> 干果/果干 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=59"> 豆制品 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=60"> 腊味 </a>
          <ul>
                      </ul>
        </li>
              </ul>
    </li>
        <li> <a href="category.php?id=7"> 精选茗茶 </a>
      <ul>
                <li> <a href="category.php?id=61"> 白茶 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=62"> 红茶 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=63"> 绿茶 </a>
          <ul>
                      </ul>
        </li>
              </ul>
    </li>
      </ul>
</nav>
<div id="main-search" class="main-search">
<div class="hd"> <span class="ico_08 close"> 关闭 </span> </div>
<div class="bd">
  <div class="search_box">
    <form action="search.php" method="post" id="searchForm" name="searchForm">
      <div class="content">
        <input class="text" type="search" name="keywords" id="keywordBox" autofocus />
        <button class="ico_07" type="submit" value="搜 索" onclick="return check('keywordBox')"></button>
      </div>
    </form>
  </div>
</div>
</div>
<script type="text/javascript">
window.onload = function(){
  $('#menu').css('display','');
}
$(function() {
	$('nav#menu').mmenu();
	$('#get_search_box').click(function(){
		$(".mm-page").children('div').hide();
		$("#main-search").css('position','fixed').css('top','0px').css('width','100%').css('z-index','999').show();
		//$('#keywordBox').focus();
	})
	$("#main-search .close").click(function(){
		$(".mm-page").children('div').show();
		$("#main-search").hide();
	})
});
</script>
<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script>
  wx.config({
    debug: false,
    appId: '',
    timestamp: 1504603982,
    nonceStr: 'jJZyxdEvtUPxF2i6',
    signature: 'aed7c74e3045abb7062e65fc123181914b67e13d',
    jsApiList: [
        'onMenuShareTimeline',
        'onMenuShareAppMessage' 
    ]
  });
 wx.ready(function () {
	//模板之家监听“分享给朋友”
    wx.onMenuShareAppMessage({
      title: '',
      desc: '',
      link: '',
      imgUrl: '',
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
      title: '',
      link: '',
      imgUrl: '',
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
</body>
</html>