<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lt IE 7 ]> <html class="ie6"> <![endif]-->
<!--[if IE 7 ]>    <html class="ie7"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie8"> <![endif]-->
<!--[if IE 9 ]>    <html class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--><html class="" lang="zh"><!--<![endif]-->
<head>
	<title>个人中心</title>
	<meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">


	<!-- Standard Favicon -->
	<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath }/views/template/images/hotel.png" />
	
	<!-- For iPhone 4 Retina display: -->
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath }/views/template/images//apple-touch-icon-114x114-precomposed.png">
	
	<!-- For iPad: -->
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath }/views/template/images//apple-touch-icon-72x72-precomposed.png">
	
	<!-- For iPhone: -->
	<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath }/views/template/images//apple-touch-icon-57x57-precomposed.png">

	<!-- Library - Google Font Familys -->	
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<link href="https://fonts.googleapis.com/css?family=Vollkorn:400,400i,700,700i" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/views/template/revolution/css/settings.css">
 
	<!-- RS5.0 Layers and Navigation Styles -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/views/template/revolution/css/layers.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/views/template/revolution/css/navigation.css">
	
	<!-- Library - Bootstrap v3.3.5 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/views/template/libraries/lib.css">
	
	<!-- Custom - Common CSS -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/views/template/css/plugins.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/views/template/css/navigation-menu.css">	
	
	<!-- Custom - Theme CSS -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/views/template/style.css">
	
	<!--[if lt IE 9]>
		<script src="js/html5/respond.min.js"></script>
    <![endif]-->
	
</head>

<body data-offset="200" data-spy="scroll" data-target=".ow-navigation">
	<!-- Loader -->
	<!--div id="site-loader" class="load-complete">
		<div class="loader">
			<div class="loader-inner ball-clip-rotate">
				<div></div>
			</div>
		</div>
	</div--><!-- Loader /- -->
	
	<!-- Header -->
	<header class="header-section container-fluid no-padding">
		<!-- Top Header -->
		<div class="top-header container-fluid no-padding">
			<!-- Container -->
			<div class="container">
				<!-- Social -->
				<div class="col-md-7 col-sm-6 col-xs-12 info">
					<p><i class="icon icon-Pointer"></i>松山湖大学路1号, 东莞, 广东</p>
					<p><i class="icon icon-Phone2"></i><a href="tel:(+01)1234567890" title="Phone" class="phone">(+01) 123 456 7890</a></p>
				</div><div>
					<ol>
					</ol>
				</div>
				<div id="top_list" class="col-md-5 col-sm-6 col-xs-12 header-social"> 
					<a href="${pageContext.request.contextPath }/user/">个人中心</a>
					<a href="${pageContext.request.contextPath }/user/signin">登录</a>
					<a  href="${pageContext.request.contextPath }/user/signup">注册</a>
				</div><!-- Social /- -->
			</div><!-- Container /- -->
		</div><!-- Top Header /- -->
		
		<!-- Menu Block -->
		<div class="menu-block container-fluid">
			<!-- Container -->
			<div class="container">
				<!-- Navigation -->
				<nav class="navbar ow-navigation">
					<div class="navbar-header">
						<button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a title="Logo1" href="index.html" class="navbar-brand"><img src="${pageContext.request.contextPath }/views/template/images/logo.png"></a>
					</div>
					<div class="navbar-collapse collapse" id="navbar">
						<ul class="nav navbar-nav">
							<li class="dropdown ">
								<a href="${pageContext.request.contextPath }/" title="Pages" class="dropdown-toggle" role="button" aria-haspopup="true" aria-expanded="false">首页</a>
								<i class="ddl-switch fa fa-angle-down"></i>
							
							</li>
							<li class="dropdown ">
								<a href="gallery.html" title="Gallery" class="dropdown-toggle" role="button" aria-haspopup="true" aria-expanded="false">酒店</a>
								<i class="ddl-switch fa fa-angle-down"></i>
	
							</li>
							<li><a title="Rooms " href="rooms.html">房间</a></li>
							<li><a title="Services" href="services.html">服务</a></li>
							
							
							<li><a title="About Us" href="about.html">关于我们</a></li>

							<li><a title="Contact" href="contact-us.html">联系我们</a></li>
						</ul>						
					</div>
				</nav><!-- Navigation -->
			</div>
		</div><!-- Menu Block /- -->
	</header><!-- Header /- -->
		<!-- Page Banner -->
		<div class="page-banner gallery-banner container-fluid no-padding">
			<div class="banner-content">
				<ol class="breadcrumb">
				<h3>个人中心</h3>

					<li><a href="${pageContext.request.contextPath }/" title="入住时间">home</a></li>							
					<li><a href="${pageContext.request.contextPath }/user/" title="退房时间">个人中心</a></li>							
				</ol>
			</div>
		</div><!-- Page Banner /- -->
	<main>
		
		
		
		
	
		<!-- Offer Section -->
		<div style="margin-bottom: -10px;" class="offer-section container-fluid">
				<div class="container">
				<!-- Section Header -->
				<div class="section-header section-header-2">
				<h3>我的个人信息</h3>
					
				</div><!-- Section Header /- -->
				<div align="center" style=" width: 300px; margin:0 auto; height: 350px;" class="col-md-12 col-sm-12 col-xs-12">
						<div class="offer-box">
							
							<div style="width: 200px; height: 300px; float: right" class="offer-content">
								<i style="margin-top: -80px; margin-right: 15px; float: right"><img  width="100px" height="100px;" style="border-radius:50%; height: 100px"  src="${pageContext.request.contextPath }/views/template/images/testi-1.jpg" alt="offer"></i><br>
								<h5>威廉.斯密斯</h5>
								<p>挪威集团CEO</p>
								<p>13433693480</p>
								<span></span>
								<a class="zoom" href="${pageContext.request.contextPath }/views/template/images/offer-1.jpg" title="offer"><i class="fa fa-plus"></i></a>
								<!-- <p id="claa">我要改变这句话</p> -->
								<a id='nopay' style="display: block;width: 140px; padding:10px 26px;"  onclick="pay()" title="Book Now" class="book-now">修改个人信息</a>
							</div>
							
						</div>
					</div>
					
					
					
				</div>

			<!-- Container -->
			<div class="container">
				<!-- Section Header -->
				<div class="section-header section-header-2">
				<h3>我预订过的房间</h3>
					
				</div><!-- Section Header /- -->
				<div style="height: 350px;" class="col-md-12 col-sm-12 col-xs-12">
						<div class="offer-box">
							<i><img src="${pageContext.request.contextPath }/views/template/images/offer-2.jpg" alt="offer"></i>
							<div style="width: 750px; height: 315px; float: right" class="offer-content">
								<h5>豪华双人房</h5>
								<p>舒适的大床、精致的装修、美味的食物<br>落地窗与独立卫浴</p>
								<p>入住时间：2019-6-30 &nbsp &nbsp退房时间：2019-6-31&nbsp&nbsp共1晚</p>
								<span>500￥ /晚</span>
								<a class="zoom" href="images/offer-1.jpg" title="offer"><i class="fa fa-plus"></i></a>
								<!-- <p id="claa">我要改变这句话</p> -->
								<a id='nopay' style="display: block;width: 108px; padding:10px 26px;"  onclick="pay()" title="Book Now" class="book-now">去评价</a>
							</div>
						</div>
					</div>
					
					
					
				</div>
		</div><!-- Offer Section /- -->
		
	</main>
	
	<!-- Footer Main -->
	<footer id="footer-main" class="footer-main container-fluid no-padding">
		<!-- Top Footer -->
		<div class="top-footer">
			<!-- Container -->
			<div class="container">
				<!-- Widget About -->
				<aside class="col-md-3 col-sm-6 col-xs-6 ftr-widget widget_about">
					<h3 class="widget-title">关于我们 <span></span></h3>
					<p>做最好的酒店公寓在线预订平台</p>
					<ul>
						<li><a href="#" title="Facebook"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#" title="Twitter"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#" title="Google"><i class="fa fa-google-plus"></i></a></li>
						<li><a href="#" title="linkedin"><i class="fa fa-linkedin"></i></a></li>
					</ul>
				</aside><!-- Widget About /- -->
				<!-- Widget Links -->
				<aside class="col-md-2 col-sm-6 col-xs-6 ftr-widget widget_links">
					<h3 class="widget-title">相关 <span>链接</span></h3>
					<ul>
						<li><a href="#" title="About Us">关于我们</a></li>
						<li><a href="${pageContext.request.contextPath }/" title="Our Packages">首页</a></li>
						<li><a href="#" title="Popular Destination">热门景点</a></li>
						<li><a href="#" title="Top Destination">顶级景点</a></li>
						<li><a href="#" title="Latest News">最新新闻</a></li>
					</ul>
				</aside><!-- Widget Links -->
				<!-- Widget Hours -->
				<aside class="col-md-3 col-sm-6 col-xs-6 ftr-widget widget_hours">
					<h3 class="widget-title">开放 <span>时间</span></h3>
					<p>周一 <span>-</span> 9:00AM to 6:00PM</p>
					<p>周二 <span>-</span> 9:00AM to 6:00PM</p>
					<p>周三 <span>-</span> 9:00AM to 6:00PM</p>
					<p>周四 <span>-</span> 9:00AM to 6:00PM</p>
					<p>周五 <span>-</span> 9:00AM to 6:00PM</p>
					<p>周六 <span>-</span> 9:00AM to 6:00PM</p>
				</aside><!-- Widget Hours /- -->
				<!-- Widget Destination -->
				<aside class="col-md-4 col-sm-6 col-xs-6 ftr-widget widget_destination">
					<h3 class="widget-title">热门<span>景点</span></h3>
					<ul>
						<li><a href="#" title=""><img src="${pageContext.request.contextPath }/views/template/images/desti-1.jpg" alt="desti"></a></li>
						<li><a href="#" title=""><img src="${pageContext.request.contextPath }/views/template/images/desti-2.jpg" alt="desti"></a></li>
						<li><a href="#" title=""><img src="${pageContext.request.contextPath }/views/template/images/desti-3.jpg" alt="desti"></a></li>
						<li><a href="#" title=""><img src="${pageContext.request.contextPath }/views/template/images/desti-4.jpg" alt="desti"></a></li>
					</ul>
				</aside><!-- Widget Destination /- -->
			</div><!-- Container /- -->
		</div><!-- Top Footer /- -->
		
		<div class="bottom-footer container-fluid">
			<!-- Container -->
			<div class="container">
				<div class="col-md-3 col-sm-12 col-xs-12 coyright-content">
					
				</div>
				<div class="col-md-9 col-sm-12 col-xs-12">
					<!-- nav -->
					<nav class="navbar navbar-default ow-navigation">
						<div class="navbar-header">
							<button aria-controls="ftr-navbar" aria-expanded="false" data-target="#ftr-navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="navbar-collapse collapse" id="ftr-navbar">
							<ul class="nav navbar-nav">
								<li class="active"><a href="${pageContext.request.contextPath }/" title="Home">首页</a></li>
								<li><a href="rooms.html" title="Rooms">房间</a></li>
								<li><a href="services.html" title="Services">服务</a></li>
								<li><a href="gallery.html" title="Gallery">酒店</a></li>
								<li><a href="about.html" title="About Us">关于我们</a></li>
								
								<li><a href="contact-us.html" title="Contact">联系我们</a></li>
							</ul>
						</div><!--/.nav-collapse -->
					</nav><!-- nav /- -->
				</div>
			</div><!-- Container -->
		</div>
	</footer><!-- Footer Main /- -->

	<!-- JQuery v1.11.3 -->
	<script>
		function pay(){
			x = document.getElementById("claa");
			y = document.getElementById("pay");
			z = document.getElementById("nopay");
        // x.innerHTML = "我去，终于能改变这句话了";
			y.style.display="block";
			z.style.display="none";
		}

	</script>
	<script src="js/jquery.min.js"></script>

	<!-- Library - Js -->
	<script src="libraries/lib.js"></script><!-- Bootstrap JS File v3.3.5 -->
	
	<!-- RS5.0 Core JS Files -->
	<script type="text/javascript" src="${pageContext.request.contextPath }/views/template/revolution/js/jquery.themepunch.tools.min.js?rev=5.0"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/views/template/revolution/js/jquery.themepunch.revolution.min.js?rev=5.0"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/views/template/revolution/js/extensions/revolution.extension.video.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/views/template/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/views/template/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/views/template/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/views/template/revolution/js/extensions/revolution.extension.actions.min.js"></script>

	<!-- Library - Google Map API -->
	<!---<script src="http://ditu.google.cn/maps/api/js?key=AIzaSyDW40y4kdsjsz714OVTvrw7woVCpD8EbLE"></script>--->
	
	<!-- Library - Theme JS -->
	<script src="${pageContext.request.contextPath }/views/template/js/functions.js"></script>
</body>
</html>
