<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>用户中心</title>
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
 //个人中心只有登录用户可以访问， 否则跳转到登录界面
	if (session.getAttribute("username") == null){	
	response.sendRedirect(request.getContextPath()+"/mobile/login.jsp");
}			
 %>
 <%
		request.setCharacterEncoding("UTF-8");//防止出现乱码
		//1.读取URL里面的Id参数		
		//int userid = (int) session.getAttribute("userid");		
		int id =Integer.parseInt( request.getParameter("id"));
		String name = null;
		String email = null;
		String mobile = null;		
		String address = null;
		String zipcode = null;
		ResultSet rs = null;
		Connection connection = null;
		try {
			//1.注册驱动
			Class.forName("com.mysql.jdbc.Driver");
			//2.URL数据库地址
			String url = "jdbc:mysql://localhost:3306/world?useSSL=false";
			String user = "root";
			String password = "123qwe";
			//3.获取链接
			connection = DriverManager.getConnection(url, user, password);
		
			String sql = "select * from OrderAddress where Id=?";
			//4.预处理sql
			PreparedStatement pstmt = connection.prepareStatement(sql);
			//获取session
			//String username = (String) session.getAttribute("username");
			// 5、参数（传参）-- 按照问号的顺序来传参
			pstmt.setInt(1, id);
			//6.执行查询
			rs = pstmt.executeQuery();
			if (rs.next())//有数据匹配成功 
			{
				//id=rs.getString("Id");
				name = rs.getString("Name");
				email = rs.getString("Email");
				mobile = rs.getString("Mobile");			
				address = rs.getString("Address");
				zipcode = rs.getString("ZIPCode");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//7.关闭
			if (rs != null) {
				rs.close();
				connection.close();
			}
			if (connection != null) {
				connection.close();
			}
		}
	%>
<div id="tbh5v0">
  <div class="login">      
     
        <header id="header">
      <div class="header_l header_return"> <a class="ico_10" href="javascript:history.go(-1)"> 返回 </a> </div>
      <h1> 收货人信息 </h1>
    </header>
      
      <script type="text/javascript" src="data/static/js/utils.js"></script><script type="text/javascript" src="data/static/js/region.js"></script><script type="text/javascript" src="data/static/js/shopping_flow.js"></script> 
      <script type="text/javascript">
		  region.isAdmin = false;
		  		  var consignee_not_null = "收货人姓名不能为空！";
		  		  var country_not_null = "请您选择收货人所在国家！";
		  		  var province_not_null = "请您选择收货人所在省份！";
		  		  var city_not_null = "请您选择收货人所在城市！";
		  		  var district_not_null = "请您选择收货人所在区域！";
		  		  var invalid_email = "您输入的邮件地址不是一个合法的邮件地址。";
		  		  var address_not_null = "收货人的详细地址不能为空！";
		  		  var tele_not_null = "电话不能为空！";
		  		  var shipping_not_null = "请您选择配送方式！";
		  		  var payment_not_null = "请您选择支付方式！";
		  		  var goodsattr_style = "1";
		  		  var tele_invaild = "电话号码不有效的号码";
		  		  var zip_not_num = "邮政编码只能填写数字";
		  		  var mobile_invaild = "手机号码不是合法号码";
		  		  
		  onload = function() {
			if (!document.all)
			{
			  document.forms['theForm'].reset();
			}
		  }
		  
	  </script>
    <section class="wrap">
      <section class="order_box padd1 radius10">
      <form action="UPAddadressed.jsp" method="post" name="theForm" onsubmit="return checkConsignee(this)">
        <table width="100%" border="0" cellpadding="5" cellspacing="0" class="ectouch_table">
          <tr>
          	<td width="70"></td>
            <td align="left" ><input id="id" name="id" placeholder="编号(必填)" type="hidden" class="inputBg_touch" value="<%=id %>" /> </td>
          </tr>
          <tr>
          <tr>
          	<td width="70">收货人</td>
            <td align="left" ><input id="name" name="name" placeholder="收货人姓名(必填)" type="text" class="inputBg_touch" value="<%=name %>" /> </td>
          </tr>
          <tr>
          	<td>联系电话</td>
            <td align="left" ><input placeholder="电话(必填)" name="mobile" id="mobile" type="text" class="inputBg_touch" value="<%=mobile %>" /></td>
          </tr>
          <tr>
          	<td>电子邮箱</td>
            <td align="left" ><input id="email" name="email" placeholder="电子邮件地址(必填)" type="text" class="inputBg_touch" value="<%=email %>" /></td>
          </tr>
          <tr>
          	<td>配送区域</td>
            <td align="left" >
               <!--<select name="country" onchange="region.changed(this, 1, 'selProvinces')">
                <option value="0">请选择</option>
                                <option value="1" >中国</option>
                              </select>-->
              <select id="province" name="province" id="selProvinces" onchange="region.changed(this, 2, 'selCities')">
                <option value="0">请选择</option>
                                <option value="2" >北京</option>
                                <option value="3" >安徽</option>
                                <option value="4" >福建</option>
                                <option value="5" >甘肃</option>
                                <option value="6" >广东</option>
                                <option value="7" >广西</option>
                                <option value="8" >贵州</option>
                                <option value="9" >海南</option>
                                <option value="10" >河北</option>
                                <option value="11" >河南</option>
                                <option value="12" >黑龙江</option>
                                <option value="13" >湖北</option>
                                <option value="14" >湖南</option>
                                <option value="15" >吉林</option>
                                <option value="16" >江苏</option>
                                <option value="17" >江西</option>
                                <option value="18" >辽宁</option>
                                <option value="19" >内蒙古</option>
                                <option value="20" >宁夏</option>
                                <option value="21" >青海</option>
                                <option value="22" >山东</option>
                                <option value="23" >山西</option>
                                <option value="24" >陕西</option>
                                <option value="25" >上海</option>
                                <option value="26" >四川</option>
                                <option value="27" >天津</option>
                                <option value="28" >西藏</option>
                                <option value="29" >新疆</option>
                                <option value="30" >云南</option>
                                <option value="31" >浙江</option>
                                <option value="32" >重庆</option>
                                <option value="33" >香港</option>
                                <option value="34" >澳门</option>
                                <option value="35" >台湾</option>
                              </select>
              <select id="city" name="city" id="selCities" onchange="region.changed(this, 3, 'selDistricts')">
                <option value="0">请选择</option>
                              </select>
              <select id="district" name="district" id="selDistricts" style="display:none">
                <option value="0">请选择</option>
                              </select></td>
          </tr>
          <tr>
          	<td>详细地址</td>
            <td align="left" ><input id="address" name="address" placeholder="详细地址(必填)" type="text" class="inputBg_touch" value="<%=address %>" /></td>
          </tr>
          <tr>
          	<td>邮政编码</td>
            <td align="left" ><input placeholder="邮政编码" id="zipcode" name="zipcode" type="text" class="inputBg_touch" value="<%=zipcode %>" /></td>
          </tr>
          <tr>
            <td align="center" colspan="2">              <input type="submit" name="submit"  class="c-btn3"  value="确认修改"/>
                            <input type="hidden" name="act" value="act_edit_address" />
              <input name="address_id" type="hidden" value="" /></td>
          </tr>
        </table>
      </form>
      </section>
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
</script> </div>
</div>
<div style="width:1px; height:1px; overflow:hidden"><a href="http://www.ecshop.com" target="_blank" style=" font-family:Verdana; font-size:11px;">Powered&nbsp;by&nbsp;<strong><span style="color: #3366FF">ECShop</span>&nbsp;<span style="color: #FF9966">v2.7.3</span></strong></a>&nbsp;</div>
</body>
<script type="text/javascript">
var msg_title_empty = "留言标题为空";
var msg_content_empty = "留言内容为空";
var msg_title_limit = "留言标题不能超过200个字";
</script>
</html>
