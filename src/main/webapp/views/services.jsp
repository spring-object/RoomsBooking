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

	<title>服务</title>

		<!-- Standard Favicon -->
	<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/images/hotel.png" />
	
	<!-- For iPhone 4 Retina display: -->
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/images//apple-touch-icon-114x114-precomposed.png">
	
	<!-- For iPad: -->
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/images//apple-touch-icon-72x72-precomposed.png">
	
	<!-- For iPhone: -->
	<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/images//apple-touch-icon-57x57-precomposed.png">

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
					<a href="selfcenter.jsp">个人中心</a>
					<a href="login.jsp">登录</a>
					<a  href="register.jsp">注册</a>
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
							<li  class="active"><a title="Services" href="${pageContext.request.contextPath }/views/services.jsp">服务</a></li>
							
							
							<li><a title="About Us" href="${pageContext.request.contextPath }/views/about.jsp">关于我们</a></li>

							<li><a title="Contact" href="${pageContext.request.contextPath }/views/contact-us.jsp">联系我们</a></li>
						</ul>						
					</div>
				</nav><!-- Navigation -->
			</div>
		</div><!-- Menu Block /- -->
	</header><!-- Header /- -->
		
<main>
		<!-- Page Banner -->
		<div class="page-banner services-banner container-fluid no-padding">
			<div class="banner-content">
				<h3>顶级服务</h3>
				<ol class="breadcrumb">
					<li><a href="${pageContext.request.contextPath }/views/index.jsp" title="Home">Home</a></li>							
					<li class="active">服务</li>
				</ol>
			</div>
		</div><!-- Page Banner /- -->
		
		<!-- Service Section -->
		<div class="service-section container-fluid">
			<!-- Container -->
			<div class="container">
				<!-- Section Header -->
				<div class="section-header">
					<h3>我们的服务</h3>
				</div><!-- Section Header /- -->
				<div class="col-md-4 col-sm-6 col-xs-6 service-box">
					<img src="${pageContext.request.contextPath }/views/template/images/service-1.jpg" alt="service" />
					<div class="service-content">
						<h5>世界一流的酒店</h5>
						<p>我们平台汇聚了世界上一流的酒店，在这里您可以享受到世界级的服务</p>
						<a href="#" class="read-more" title="Read More">了解更多</a>
						<a href="#" class="link"><i class="fa fa-caret-right"></i></a>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-6 service-box">
					<img src="${pageContext.request.contextPath }/views/template/images/service-2.jpg" alt="service" />
					<div class="service-content">
						<h5>奢华舒适的房间</h5>
						<p>世界级的酒店有着其独到奢华舒适的酒店，给您非凡的享受</p>
						<a href="#" class="read-more" title="Read More">了解更多</a>
						<a href="#" class="link"><i class="fa fa-caret-right"></i></a>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-6 service-box">
					<img src="${pageContext.request.contextPath }/views/template/images/service-3.jpg" alt="service" />
					<div class="service-content">
						<h5>绝佳海景度假</h5>
						<p>为您和您的家人的假期提供最好的服务</p>
						<a href="#" class="read-more" title="Read More">了解更多</a>
						<a href="#" class="link"><i class="fa fa-caret-right"></i></a>
					</div>
				</div>
			</div><!-- Container /- -->
		</div><!-- Service Section /- -->
		
		<!-- Gallery Section 2 -->
		<div class="gallery-section gallery-section-2 service-gallery container-fluid">
			<!-- Container -->
			<div class="container">
				<div class="row">
					<ul class="portfolio-list no-left-padding">
						<li class="col-md-4 col-sm-4 col-xs-6 design">
							<div class="content-image-block">
								<img src="${pageContext.request.contextPath }/views/template/images/gallery-7.jpg" alt="gallery">
							</div>
						</li>
						<li class="col-md-4 col-sm-4 col-xs-6 design">
							<!-- Section Header -->
							<div class="section-header">
								<h3>我们的公寓</h3>
								<p>我们的有着各式各样的公寓酒店，满足您的一切需求</p>
								<a href="#" title="view all categories">查看所有公寓</a>
							</div><!-- Section Header /- -->
						</li>
						<li class="col-md-4 col-sm-4 col-xs-6 design">
							<div class="content-image-block">
								<img src="${pageContext.request.contextPath }/views/template/images/gallery-10.jpg" alt="gallery">
							</div>
						</li>
						<li class="col-md-4 col-sm-4 col-xs-6 design">
							<div class="content-image-block">
								<img src="${pageContext.request.contextPath }/views/template/images/gallery-9.jpg" alt="gallery">
							</div>
						</li>
						<li class="col-md-4 col-sm-4 col-xs-6 design">
							<div class="content-image-block">
								<img src="${pageContext.request.contextPath }/views/template/images/gallery-11.jpg" alt="gallery">
							</div>
						</li>
						<li class="col-md-4 col-sm-4 col-xs-6 design">
							<div class="content-image-block">
								<img src="${pageContext.request.contextPath }/views/template/images/gallery-8.jpg" alt="gallery">
							</div>
						</li>
					</ul>
				</div><!-- Row /- -->
			</div><!-- Container /- -->
		</div><!-- Gallery Section 2 /- -->
		
		<!-- Testimonial Section -->
		<div class="testimonial-section testimonial-section-1 container-fluid">
			<!-- Container -->
			<div class="container">
				<!-- Section Header -->
				<div class="section-header">
					<h3>用户对我们的评价</h3>
				</div><!-- Section Header /- -->
				<div class="testimonial-carousel-2">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="testimonial-content">
							<i><img src="${pageContext.request.contextPath }/views/template/images/testi-1.jpg" alt="testi" /></i>
							<p>环境优美，地理位置好，交通方便，房间舒适卫生，服务人员很热情，乐于提供各种帮助，早餐丰富。设施很人性化，网络高速信号好，窗外风景好，房间小摆件的设计也很有特色。性价比不错，下次还要入住 </p>
							<h5>威廉·斯密斯<span>(波士顿集团CEO)</span></h5>
						</div>
					</div>
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="testimonial-content">
							<i><img src="${pageContext.request.contextPath }/views/template/images/testi-2.jpg" alt="testi" /></i>
							<p>这个酒店是我住过最好的酒店，没有之一，给我非常舒适的感觉，我喜欢酒店提供的红酒，它有着法国菲尔普斯省葡萄庄园特有的香甜，让我想起在巴黎度假的日子 </p>
							<h5>毕奥茨<span>IBM高管</span></h5>
						</div>
					</div>
				</div>
			</div><!-- Container /- -->
		</div><!-- Testimonial Section /- -->
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
								
								<li><a href="contact-us.jsp" title="Contact">联系我们</a></li>
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
