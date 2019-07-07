<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html class="ie6"> <![endif]-->
<!--[if IE 7 ]>    <html class="ie7"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie8"> <![endif]-->
<!--[if IE 9 ]>    <html class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--><html class="" lang="en"><!--<![endif]-->
<head>
	<meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">

	<title>关于我们</title>
		<!-- Standard Favicon -->
	<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/images/hotel.png" />
	
	<!-- For iPhone 4 Retina display: -->
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/images//apple-touch-icon-114x114-precomposed.png">
	
	<!-- For iPad: -->
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/images//apple-touch-icon-72x72-precomposed.png">
	
	<!-- For iPhone: -->
	<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/images//apple-touch-icon-57x57-precomposed.png">

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
	<!-- 图标库 -->
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/views/plugins/font-awesome/css/font-awesome.css">
	
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
					<c:if test="${null==sessionScope.user }">
						<a href="${pageContext.request.contextPath }/user/signin">登录</a>
					</c:if>
					<c:if test="${null!=sessionScope.user }">
						<a href="${pageContext.request.contextPath }/user/">个人中心</a>
					</c:if>
					<a  href="${pageContext.request.contextPath }/user/signup">注册</a>
					<a  href="${pageContext.request.contextPath }/user/admin">后台</a>
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
						<a title="Logo1" href="${pageContext.request.contextPath }/views/index.jsp" class="navbar-brand"><img src="${pageContext.request.contextPath }/views/template/images/logo.png"></a>
					</div>
					<div class="navbar-collapse collapse" id="navbar">
						<ul class="nav navbar-nav">
							<li class="dropdown ">
								<a href="${pageContext.request.contextPath }/views/index.jsp" title="Pages" class="dropdown-toggle" role="button" aria-haspopup="true" aria-expanded="false">首页</a>
								<i class="ddl-switch fa fa-angle-down"></i>
							
							</li>
							<li class="dropdown ">
								<a href="${pageContext.request.contextPath }/views/gallery.jsp" title="Gallery" class="dropdown-toggle" role="button" aria-haspopup="true" aria-expanded="false">酒店</a>
								<i class="ddl-switch fa fa-angle-down"></i>
	
							</li>
							<li><a title="Rooms " href="${pageContext.request.contextPath }/views/rooms.jsp">房间</a></li>
							<li  ><a title="Services" href="${pageContext.request.contextPath }/views/services.jsp">服务</a></li>
							
							
							<li class="active"><a title="About Us" href="${pageContext.request.contextPath }/views/about.jsp">关于我们</a></li>

							<li><a title="Contact" href="${pageContext.request.contextPath }/views/contact-us.jsp">联系我们</a></li>
						</ul>						
					</div>
				</nav><!-- Navigation -->
			</div>
		</div><!-- Menu Block /- -->
	</header><!-- Header /- -->
		

	<main>
		<!-- Page Banner -->
		<div class="page-banner about-banner container-fluid no-padding">
			<div class="banner-content">
				<h3>关于我们</h3>
				<ol class="breadcrumb">
					<li><a href="${pageContext.request.contextPath }/views/index.jsp" title="Home">Home</a></li>							
					<li class="active">关于我们</li>
				</ol>
			</div>
		</div><!-- Page Banner /- -->
		
		<!-- Welcome Section -->
		<div class="welcome-section container-fluid">
			<!-- Container -->
			<div class="container">
				<!-- Section Header -->
				<div class="section-header section-header-2">
					<h3>欢迎来到 <span>酒店公寓在线预订平台</span></h3>
				</div><!-- Section Header /- -->
				<div class="welcome-content">
					<p>我们对旅游行业充满激情。每一天，我们通过 90 个本地网站和 41 种语言为数百万旅客提供相关的旅游资讯，向他们大力推广精彩优惠。因此，在帮助客户找到心目中的理想酒店、度假短租、度假村、公寓、旅馆或树屋方面，我们都能为您提供服务。我们有数十万家合作酒店遍布 200 多个国家和地区，还提供无与伦比的价格保证。除了有趣且简单易用的网站，我们也为客户提供创新的在线工</p>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-6 welcome-outer">
					<div class="welcome-box">
						<span>金奖</span>
						<p>最佳酒店在线预订平台奖</p>
						<i class="icon icon-Cup"></i>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-6 welcome-outer">
					<div class="welcome-box">
						<span>银奖</span>
						<p>轻奢式酒店服务奖</p>
						<i class="icon icon-Starship"></i>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-6 welcome-outer">
					<div class="welcome-box">
						<span>铜奖</span>
						<p>用户最信任酒店奖</p>
						<i class="icon icon-Bag"></i>
					</div>
				</div>
			</div><!-- Container / -->
		</div><!-- Welcome Section /- -->
		
		<!-- Whychooseus Section -->
		<div style="margin-top: -200px;" class="whychooseus-section container-fluid">
			<!-- Container -->
			<div class="container">
				<!-- Section Header -->
				<div class="section-header section-header-2">
					<h3>为什么选择我们</h3>
				</div><!-- Section Header /- -->
				<div class="col-md-6 col-sm-12 col-xs-6">
					<div class="choose-us-box">
						<div class="col-md-12 col-sm-12 col-xs-12 no-padding choose-us-block">
							<div class="col-md-5 col-sm-4 col-xs-12 choose-us-cover">
								<i><img src="${pageContext.request.contextPath }/views/template/images/choose-us-1.jpg" alt="choose-us" /></i>
								<a class="zoom" href="${pageContext.request.contextPath }/views/template/images/choose-us-1.jpg" title="offer"><i class="icon icon-Linked"></i></a>
							</div>
							<div class="col-md-7 col-sm-8 col-xs-12 choose-us-content">
								<h5>世界一流的酒店</h5>
								<p>我们平台汇聚了世界上一流的酒店，在这里您可以享受到世界级的服务</p>
								<a href="#" title="read-more">了解更多</a>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-md-6 col-sm-12 col-xs-6">
					<div class="choose-us-box">
						<div class="col-md-12 col-sm-12 col-xs-12 no-padding choose-us-block">
							<div class="col-md-5 col-sm-4 col-xs-12 choose-us-cover">
								<i><img src="${pageContext.request.contextPath }/views/template/images/choose-us-2.jpg" alt="choose-us" /></i>
								<a class="zoom" href="${pageContext.request.contextPath }/views/template/images/choose-us-2.jpg" title="offer"><i class="icon icon-Linked"></i></a>
							</div>
							<div class="col-md-7 col-sm-8 col-xs-12 choose-us-content">
								<h5>奢华舒适的房间</h5>
								<p>世界级的酒店有着其独到奢华舒适的酒店，给您非凡的享受</p>
								<a href="#" title="read-more">了解更多</a>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-md-6 col-sm-12 col-xs-6">
					<div class="choose-us-box">
						<div class="col-md-12 col-sm-12 col-xs-12 no-padding choose-us-block">
							<div class="col-md-5 col-sm-4 col-xs-12 choose-us-cover">
								<i><img src="${pageContext.request.contextPath }/views/template/images/choose-us-3.jpg" alt="choose-us" /></i>
								<a class="zoom" href="${pageContext.request.contextPath }/views/template/images/choose-us-3.jpg" title="offer"><i class="icon icon-Linked"></i></a>
							</div>
							<div class="col-md-7 col-sm-8 col-xs-12 choose-us-content">
								<h5>美味独特的食物</h5>
								<p>每一个酒店都可以提供给您来自世界各地的美食</p>
								<a href="#" title="read-more">了解更多</a>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-md-6 col-sm-12 col-xs-6">
					<div class="choose-us-box">
						<div class="col-md-12 col-sm-12 col-xs-12 no-padding choose-us-block">
							<div class="col-md-5 col-sm-4 col-xs-12 choose-us-cover">
								<i><img src="${pageContext.request.contextPath }/views/template/images/choose-us-4.jpg" alt="choose-us" /></i>
								<a class="zoom" href="${pageContext.request.contextPath }/views/template/images/choose-us-4.jpg" title="offer"><i class="icon icon-Linked"></i></a>
							</div>
							<div class="col-md-7 col-sm-8 col-xs-12 choose-us-content">
								<h5>国际的信誉</h5>
								<p>经过多年的经营，我们的平台接待了来自世界各地的出行人士，得到了广泛的认可和信任</p>
								<a href="#" title="read-more">了解更多</a>
							</div>
						</div>
					</div>
				</div>
			</div><!-- Container /- -->
		</div><!-- Whychooseus Section /- -->
		
		<!-- Clients -->
		<div style="margin-top: -200px;" class="clients clients-1 container-fluid">
			<!-- Container -->
			<div class="container">
				<!-- Section Header -->
				<div class="section-header">
					<h3>我们的合作伙伴</h3>
				</div><!-- Section Header /- -->
				<div class="clients-carousel">
					<div class="col-md-12 item"><a href="#" title="client"><img src="${pageContext.request.contextPath }/views/template/images/clients-1.png" alt="clients-1"></a></div>
					<div class="col-md-12 item"><a href="#" title="client"><img src="${pageContext.request.contextPath }/views/template/images/clients-2.png" alt="clients-2"></a></div>
					<div class="col-md-12 item"><a href="#" title="client"><img src="${pageContext.request.contextPath }/views/template/images/clients-3.png" alt="clients-3"></a></div>
					<div class="col-md-12 item"><a href="#" title="client"><img src="${pageContext.request.contextPath }/views/template/images/clients-4.png" alt="clients-4"></a></div>
				</div>
			</div><!-- Container /- -->
		</div><!-- Clients /- -->
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
						<li><a href="#" title="Our Packages">首页</a></li>
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
								<li class="active"><a href="${pageContext.request.contextPath }/views/index.jsp" title="Home">首页</a></li>
								<li><a href="${pageContext.request.contextPath }/views/rooms.jsp" title="Rooms">房间</a></li>
								<li><a href="${pageContext.request.contextPath }/views/services.jsp" title="Services">服务</a></li>
								<li><a href="${pageContext.request.contextPath }/views/gallery.jsp" title="Gallery">酒店</a></li>
								<li><a href="${pageContext.request.contextPath }/views/about.jsp" title="About Us">关于我们</a></li>
								
								<li><a href="${pageContext.request.contextPath }/views/contact-us.jsp" title="Contact">联系我们</a></li>
							</ul>
						</div><!--/.nav-collapse -->
					</nav><!-- nav /- -->
				</div>
			</div><!-- Container -->
		</div>
	</footer><!-- Footer Main /- -->

		<!-- JQuery v1.11.3 -->
	<script src="${pageContext.request.contextPath }/views/template/js/jquery.min.js"></script>

	<!-- Library - Js -->
	<script src="${pageContext.request.contextPath }/views/template/libraries/lib.js"></script><!-- Bootstrap JS File v3.3.5 -->
	
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
	<script src="${pageContext.request.contextPath }/views/template/js/jquery-3.2.1.js"></script>
	<script src="${pageContext.request.contextPath }/views/template/js/jquery-3.2.1.min.js"></script>
</body>
</html>
