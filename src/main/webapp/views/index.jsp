<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html class="ie6"> <![endif]-->
<!--[if IE 7 ]>    <html class="ie7"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie8"> <![endif]-->
<!--[if IE 9 ]>    <html class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html class="" lang="zh">
<!--<![endif]-->
<head>
	<title>首页——酒店预订</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">

	<meta charset="UTF-8">
	<!-- Standard Favicon -->
	<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/images/hotel.png" />
	
	<!-- For iPhone 4 Retina display: -->
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/images//apple-touch-icon-114x114-precomposed.png">
	
	<!-- For iPad: -->
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/images//apple-touch-icon-72x72-precomposed.png">
	
	<!-- For iPhone: -->
	<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath }/views/template/${pageContext.request.contextPath }/views/template/images//apple-touch-icon-57x57-precomposed.png">

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
<input type="hidden" id="projectContextPath" value="${pageContext.request.contextPath }"/>
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
				</div>
				<div>
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
							<li class="dropdown active">
								<a href="${pageContext.request.contextPath }/views/index.jsp" title="Pages" class="dropdown-toggle" role="button" aria-haspopup="true" aria-expanded="false">首页</a>
								<i class="ddl-switch fa fa-angle-down"></i>
							
							</li>
							<li class="dropdown">
								<a href="${pageContext.request.contextPath }/views/gallery.jsp" title="Gallery" class="dropdown-toggle" role="button" aria-haspopup="true" aria-expanded="false">酒店</a>
								<i class="ddl-switch fa fa-angle-down"></i>
	
							</li>
							<li><a title="Rooms" href="${pageContext.request.contextPath }/views/rooms.jsp">房间</a></li>
							<li><a title="Services" href="${pageContext.request.contextPath }/views/services.jsp">服务</a></li>
							
							
							<li><a title="About Us" href="${pageContext.request.contextPath }/views/about.jsp">关于我们</a></li>

							<li><a title="Contact" href="${pageContext.request.contextPath }/views/contact-us.jsp">联系我们</a></li>
						</ul>						
					</div>
				</nav><!-- Navigation -->
			</div>
		</div><!-- Menu Block /- -->
	</header><!-- Header /- -->
	
	<main>
		<!-- Slider Section 2 -->
		<div id="home-revslider" class="slider-section container-fluid no-padding">
			<!-- START REVOLUTION SLIDER 5.0 -->
			<div class="rev_slider_wrapper">
				<div id="home-slider1" class="rev_slider" data-version="5.0">
					<ul>
						<li data-transition="zoomout" data-slotamount="default"  data-easein="easeInOut" data-easeout="easeInOut" data-masterspeed="2000" data-rotate="0"  data-fstransition="fade" data-fsmasterspeed="1500" data-fsslotamount="7">
							<img src="${pageContext.request.contextPath }/views/template/images/slider-1.jpg" alt="slider" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina>
							<!-- LAYERS -->
							<!-- LAYER NR. 1 -->
							<div class="tp-caption tp-shape tp-shapewrapper" id="slide-layer-0"
								data-x="['center','center','center','center']" 
								data-y="['middle','middle','middle','middle']" 
								data-basealign="slide" 
								data-height="full" 
								data-hoffset="['0','0','0','0']" 
								data-responsive="off" 
								data-responsive_offset="off" 
								data-start="0" 
								data-transform_idle="o:1;" 
								data-transform_in="opacity:0;s:2000;e:Power2.easeInOut;" 
								data-transform_out="opacity:0;s:500;s:500;" 
								data-voffset="['0','0','0','0']" 
								data-whitespace="nowrap" 
								data-width="full"
								style="z-index: 5;background-color:rgba(0, 0, 0, 0.502);">
							</div>
							<!-- LAYER NR. 2 -->
							<div class="tp-caption NotGeneric-Title tp-resizeme rs-parallaxlevel-0" id="slide-layer-1" 
								data-x="['left','left','left','left']" data-hoffset="['400','125','100','70']" 
								data-y="['middle','middle','middle','middle']" data-voffset="['-200','-80','-100','-100']" 
								data-fontsize="['54','40','30','20']"
								data-lineheight="['70','60','60','60']"
								data-fontweight="['600','600','600','600']"
								data-width="none"
								data-height="none"
								data-whitespace="nowrap"
								data-transform_idle="o:1;"
								data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;" 
								data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
								data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
								data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
								data-start="1000" 
								data-splitin="chars" 
								data-splitout="none" 
								data-responsive_offset="on"
								data-elementdelay="0.05" 
								style="z-index: 5; white-space: nowrap; color:#fff; font-family: 'Open Sans', sans-serif; text-transform: uppercase">我们给您提供最舒适的家
							</div>
							<!-- LAYER NR. 3 -->
							<div class="tp-caption NotGeneric-Title tp-resizeme rs-parallaxlevel-0" id="slide-layer-2" 
								data-x="['left','left','left','left']" data-hoffset="['400','125','100','70']" 
								data-y="['top','top','top','top']" data-voffset="['275','300','215','150']" 
								data-fontsize="['54','45','30','20']"
								data-fontweight="['400','400','400','400']"
								data-lineheight="['76','24','24','24']"
								data-width="none"
								data-height="none"
								data-whitespace="nowrap"
								data-transform_idle="o:1;"
								data-transform_in="y:-50px;opacity:0;s:1000;e:Power4.easeOut;" 
								data-transform_out="opacity:0;s:3000;e:Power4.easeIn;s:3000;e:Power4.easeIn;"
								data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
								data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
								data-start="1000" 
								data-splitin="none" 
								data-splitout="none" 
								data-responsive_offset="on"
								data-elementdelay="0.05" 
								style="z-index: 5; color:#fff; font-family: 'Open Sans', sans-serif; text-transform:uppercase;">轻奢式服务
							</div>
							<!-- LAYER NR. 4 -->
							<div class="tp-caption NotGeneric-Button rev-btn  rs-parallaxlevel-0" id="slide-layer-3" 
								data-x="['left','left','left','left']" data-hoffset="['400','125','100','70']" 
								data-y="['top','top','top','top']" data-voffset="['400','375','280','215']" 
								data-fontsize="['16','12','12','12']"
								data-fontweight="['600','600','600','600']"
								data-lineheight="['28','20','20','20']"
								data-width="none"
								data-height="none"
								data-whitespace="nowrap"
								data-transform_idle="o:1;"
								data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:100;e:Power1.easeInOut;"
								data-style_hover="c:rgba(162, 144, 97, 1.00);bg:rgba(255, 255, 255, 1.00);"
								data-transform_in="x:[-100%];z:0;rX:0deg;rY:0deg;rZ:0deg;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2500;e:Power3.easeInOut;" 
								data-transform_out="auto:auto;s:1000;e:Power2.easeInOut;" 
								data-start="2000" 
								data-splitin="none" 
								data-splitout="none" 
								data-actions='[{"event":"click","action":"scrollbelow","offset":"0px"}]'
								data-responsive_offset="on" 
								data-responsive="off"
								style="z-index: 10; padding:8px 33px; letter-spacing:0.16px; color: #fff; font-family: 'Open Sans', sans-serif; text-transform:uppercase; background-color:transparent; white-space: nowrap;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;">马上预订
							</div>
						</li>
						
						<li data-transition="zoomout" data-slotamount="default"  data-easein="easeInOut" data-easeout="easeInOut" data-masterspeed="2000" data-rotate="0"  data-fstransition="fade" data-fsmasterspeed="1500" data-fsslotamount="7">
							<img src="${pageContext.request.contextPath }/views/template/images/slider-3.jpg" alt="slider" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina>
							<div class="tp-caption tp-shape tp-shapewrapper" id="slide-layer-4"
								data-x="['center','center','center','center']" 
								data-y="['middle','middle','middle','middle']" 
								data-basealign="slide" 
								data-height="full" 
								data-hoffset="['0','0','0','0']" 
								data-responsive="off" 
								data-responsive_offset="off" 
								data-start="0" 
								data-transform_idle="o:1;" 
								data-transform_in="opacity:0;s:2000;e:Power2.easeInOut;" 
								data-transform_out="opacity:0;s:500;s:500;" 
								data-voffset="['0','0','0','0']" 
								data-whitespace="nowrap" 
								data-width="full"
								style="z-index: 5;background-color:rgba(0, 0, 0, 0.702);">
							</div>
							<div class="tp-caption NotGeneric-Title tp-resizeme rs-parallaxlevel-0" id="slide-layer-5" 
								data-x="['left','left','left','left']" data-hoffset="['550','125','100','35']" 
								data-y="['middle','middle','middle','middle']" data-voffset="['-215','-80','-100','-100']" 
								data-fontsize="['50','30','25','15']"
								data-lineheight="['72','45','35','25']"
								data-fontweight="['600','600','600','600']"
								data-width="none"
								data-height="none"
								data-whitespace="nowrap"
								data-transform_idle="o:1;"
								data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;" 
								data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
								data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
								data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
								data-start="1000" 
								data-splitin="chars" 
								data-splitout="none" 
								data-responsive_offset="on"
								data-elementdelay="0.05" 
								style="z-index: 5; white-space: nowrap; color:#fff; font-family: 'Open Sans', sans-serif;">各式公寓<br>满足您各种需求<br> 
							</div>
							<div class="tp-caption NotGeneric-Title tp-resizeme rs-parallaxlevel-0" id="slide-layer-6" 
								data-x="['left','left','left','left']" data-hoffset="['550','125','100','35']" 
								data-y="['middle','middle','middle','middle']" data-voffset="['-50','40','10','10']" 
								data-fontsize="['18','18','20','16']"
								data-lineheight="['24','24','24','24']"
								data-fontweight="['300','300','300','300']"
								data-width="['1920','1024','768','400']"
								data-height="none"
								data-whitespace="normal"
								data-transform_idle="o:1;"
								data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;" 
								data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
								data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
								data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
								data-start="1000" 
								data-splitin="none" 
								data-splitout="none" 
								data-responsive_offset="on"
								data-elementdelay="0.05" 
								style="z-index: 5; white-space: normal; letter-spacing: 0.45px; word-wrap: break-word; min-width: 1920px; max-width: 1920px; color:#fff; font-family: 'Open Sans', sans-serif; font-style:italic;">联系我们 <br>在线预订<br>旅途无忧
							</div>
							<div class="tp-caption NotGeneric-Button rev-btn  rs-parallaxlevel-0" id="slide-layer-7" 
								data-x="['left','left','left','left']" data-hoffset="['550','125','100','35']" 
								data-y="['top','top','top','top']" data-voffset="['480','454','375','330']" 
								data-fontsize="['16.2','12','12','12']"
								data-fontweight="['600','600','600','600']"
								data-lineheight="['28','20','20','20']"
								data-width="none"
								data-height="none"
								data-whitespace="nowrap"
								data-transform_idle="o:1;"
								data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:100;e:Power1.easeInOut;"
								data-style_hover="c:rgba(162, 144, 97, 1.00);bg:rgba(255, 255, 255, 1.00);"
								data-transform_in="x:[-100%];z:0;rX:0deg;rY:0deg;rZ:0deg;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2500;e:Power3.easeInOut;" 
								data-transform_out="auto:auto;s:1000;e:Power2.easeInOut;" 
								data-start="2000" 
								data-splitin="none" 
								data-splitout="none" 
								data-actions='[{"event":"click","action":"scrollbelow","offset":"0px"}]'
								data-responsive_offset="on" 
								data-responsive="off"
								style="z-index: 10; padding:8px 33px; letter-spacing:0.405px; color: #fff; font-family: 'Open Sans', sans-serif; text-transform:uppercase; background-color:transparent; white-space: nowrap;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;">联系我们
							</div>
						</li>
						
						<li data-transition="zoomout" data-slotamount="default"  data-easein="easeInOut" data-easeout="easeInOut" data-masterspeed="2000" data-rotate="0"  data-fstransition="fade" data-fsmasterspeed="1500" data-fsslotamount="7">
							<img src="${pageContext.request.contextPath }/views/template/images/slider-4.jpg" alt="slider" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina>
							<!-- LAYERS -->
							<!-- LAYER NR. 1 -->
							<div class="tp-caption tp-shape tp-shapewrapper" id="slide-layer-8"
								data-x="['center','center','center','center']" 
								data-y="['middle','middle','middle','middle']" 
								data-basealign="slide" 
								data-height="full" 
								data-hoffset="['0','0','0','0']" 
								data-responsive="off" 
								data-responsive_offset="off" 
								data-start="0" 
								data-transform_idle="o:1;" 
								data-transform_in="opacity:0;s:2000;e:Power2.easeInOut;" 
								data-transform_out="opacity:0;s:500;s:500;" 
								data-voffset="['0','0','0','0']" 
								data-whitespace="nowrap" 
								data-width="full"
								style="z-index: 5;background-color:rgba(0, 0, 0, 0.6);">
							</div>
							<div class="tp-caption NotGeneric-Title tp-resizeme rs-parallaxlevel-0" id="slide-layer-9" 
								data-x="['left','left','left','left']" data-hoffset="['550','125','100','55']" 
								data-y="['middle','middle','middle','middle']" data-voffset="['-135','-80','-100','-100']" 
								data-fontsize="['50','30','25','20']"
								data-lineheight="['72','45','35','25']"
								data-fontweight="['600','600','600','600']"
								data-width="none"
								data-height="none"
								data-whitespace="nowrap"
								data-transform_idle="o:1;"
								data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;" 
								data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
								data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
								data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
								data-start="1000" 
								data-splitin="chars" 
								data-splitout="none" 
								data-responsive_offset="on"
								data-elementdelay="0.05" 
								style="z-index: 5; white-space: nowrap; color:#fff; font-family: 'Open Sans', sans-serif;">纵享美好出行时光<br>行程珍贵房要选对   
							</div>
							<div class="tp-caption NotGeneric-Button rev-btn  rs-parallaxlevel-0" id="slide-layer-10" 
								data-x="['left','left','left','left']" data-hoffset="['550','125','100','55']" 
								data-y="['top','top','top','top']" data-voffset="['430','330','250','200']" 
								data-fontsize="['16.2','12','12','12']"
								data-fontweight="['600','600','600','600']"
								data-lineheight="['28','20','20','20']"
								data-width="none"
								data-height="none"
								data-whitespace="nowrap"
								data-transform_idle="o:1;"
								data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:100;e:Power1.easeInOut;"
								data-style_hover="c:rgba(162, 144, 97, 1.00);bg:rgba(255, 255, 255, 1.00);"
								data-transform_in="x:[-100%];z:0;rX:0deg;rY:0deg;rZ:0deg;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2500;e:Power3.easeInOut;" 
								data-transform_out="auto:auto;s:1000;e:Power2.easeInOut;" 
								data-start="2000" 
								data-splitin="none" 
								data-splitout="none" 
								data-actions='[{"event":"click","action":"scrollbelow","offset":"0px"}]'
								data-responsive_offset="on" 
								data-responsive="off"
								style="z-index: 10; padding:8px 33px; letter-spacing:0.405px; color: #fff; font-family: 'Open Sans', sans-serif; text-transform:uppercase; background-color:transparent; white-space: nowrap;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;">联系我们							</div>
						</li>
					</ul>
				</div><!-- END REVOLUTION SLIDER -->
			</div><!-- END OF SLIDER WRAPPER -->
			<!-- Booking Section 1 -->
			<div class="booking-section-1 container-fluid">
				<!-- Container -->
				<div class="container">
					<div class="col-md-4 col-sm-4 col-xs-6">
						<div class="booking-content-block">
							<h5>预订 <span>您的房间</span></h5>
						</div>
					</div>
					<div class="col-md-8 col-sm-8 col-xs-6">
						<form action="search.html" method="post" id="formId">


						<div id="datepicker3" class="input-group col-md-3 col-sm-3 col-xs-12">
							<input name='date_in' class="form-control datepicker" placeholder="入住" type="text">
							<span class="input-group-addon add-on">
								<span class="glyphicon glyphicon-calendar"></span>
							</span>
						</div>
						<div id="datepicker4" class="input-group col-md-3 col-sm-3 col-xs-12">
							<input name='date_out' class="form-control datepicker" placeholder="退房" type="text">
							<span class="input-group-addon add-on">
								<span class="glyphicon glyphicon-calendar"></span>
							</span>
						</div>
						<div class="form-group col-md-3 col-sm-3 col-xs-12">
							<select name='type'>
								<option>单人房</option>
								<option>双人房</option>
								<option>豪华大床房</option>
							</select>
						</div>
						<a class="book-now" onclick="document:formId.submit()" >马上预订</a>

						<!-- <a type="submit" href="#" title="Book Now" class="book-now">马上预订</a>
						<button type="submit" href="#" title="Book Now" class="book-now">马上预订</button> -->
					</div>
				</div><!-- Container /- -->
			</div><!-- Booking Section 1 -->
		</div><!-- Slider Section 2 /- -->
		
		<!-- Welcome Section -->
		<div class="welcome-section container-fluid">
			<!-- Container -->
			<div style="height:1px;" class="container">
				<!-- Section Header -->
				<div class="section-header section-header-2">
					<h3>欢迎来到 <span>酒店公寓</span>在线预订平台</h3>
				</div><!-- Section Header /- -->
				<div class="welcome-content">
					<p>我们将用最好的服务提供给您</p>
				</div>
				
			</div><!-- Container / -->
		</div><!-- Welcome Section /- -->
		
		<!-- Whychooseus Section -->
		<div class="whychooseus-section container-fluid">
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
		
		<!-- Offer Section -->
		<div style="margin-top: -250px;" class="offer-section container-fluid">
			<!-- Container -->
			<div class="container">
				<!-- Section Header -->
				<div class="section-header section-header-2">
					<h3>我们提供的房间</h3>
				</div><!-- Section Header /- -->
				<div class="offer-carousel" id="showRooms">
				<!-- 展示房间 -->
					
				</div>		
			</div><!-- Container /- -->
		</div><!-- Offer Section /- -->
		
		<!-- Counter Section -->
		<div class="counter-section container-fluid">
			<!-- Container -->
			<div class="container">
				<div class="col-md-3 col-sm-3 col-xs-6">
					<div class="counter-box">
						<i class="icon icon-Users"></i>
						<h3><span class="count" id="statistics_count-1" data-statistics_percent="1434"> &nbsp;</span></h3>
						<p>服务人次</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6">
					<div class="counter-box">
						<i class="icon icon-House"></i>
						<h3><span class="count" id="statistics_count-2" data-statistics_percent="74"> &nbsp;</span></h3>
						<p>合作酒店</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6">
					<div class="counter-box">
						<i class="icon icon-Tie"></i>
						<h3><span class="count" id="statistics_count-3" data-statistics_percent="726"> &nbsp;</span></h3>
						<p>公司雇员</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6">
					<div class="counter-box">
						<i class="icon icon-Cup"></i>
						<h3><span class="count" id="statistics_count-4" data-statistics_percent="46"> &nbsp;</span></h3>
						<p>荣誉奖励</p>
					</div>
				</div>
			</div><!-- Container /- -->
		</div><!-- Counter Section /- -->
		
		<!-- Gallery Section -->
		<div style="margin-top:-100px;" class="gallery-section container-fluid">
			<!-- Container -->
			<div class="container">
				<!-- Section Header -->
				<div class="section-header">
					<h3>我们的特级服务</h3>
				</div><!-- Section Header /- -->
				<ul id="filters" class="portfolio-categories no-left-padding">
					<li><a data-filter="*" class="active" href="#">全部</a></li>
					<li><a data-filter=".design" href="#">目的地</a></li>
					<li><a data-filter=".video" href="#">度假</a></li>
					<li><a data-filter=".photography" href="#">饭店</a></li>
					<li><a data-filter=".web" href="#">spa & 游泳</a></li>
				</ul>
				<ul class="portfolio-list no-left-padding">
					<li class="col-md-4 col-sm-4 col-xs-6 design">
						<div class="content-image-block">
							<img src="${pageContext.request.contextPath }/views/template/images/gallery-1.jpg" alt="gallery">
							<div class="content-block-hover">
								<h5>绝佳海景</h5>
								<p>私人享有</p>
								<a class="zoom" href="${pageContext.request.contextPath }/views/template/images/gallery-1.jpg" title="Expand"><i class="fa fa-search"></i></a>
								<a href="gallery-single.html" title="Link"><i class="fa fa-external-link"></i></a>
							</div>
						</div>
					</li>
					<li class="col-md-4 col-sm-4 col-xs-6 video">
						<div class="content-image-block">
							<img src="${pageContext.request.contextPath }/views/template/images/gallery-2.jpg" alt="gallery">
							<div class="content-block-hover">
								<h5>绝佳海景</h5>
								<p>私人享有</p>
								<a class="zoom" href="${pageContext.request.contextPath }/views/template/images/gallery-2.jpg" title="Expand"><i class="fa fa-search"></i></a>
								<a href="gallery-single.html" title="Link"><i class="fa fa-external-link"></i></a>
							</div>
						</div>
					</li>
					<li class="col-md-4 col-sm-4 col-xs-6 photography">
						<div class="content-image-block">
							<img src="${pageContext.request.contextPath }/views/template/images/gallery-3.jpg" alt="gallery">
							<div class="content-block-hover">
								<h5>绝佳海景</h5>
								<p>私人享有</p>
								<a class="zoom" href="${pageContext.request.contextPath }/views/template/images/gallery-3.jpg" title="Expand"><i class="fa fa-search"></i></a>
								<a href="gallery-single.html" title="Link"><i class="fa fa-external-link"></i></a>
							</div>
						</div>
					</li>
					<li class="col-md-4 col-sm-4 col-xs-6 design">
						<div class="content-image-block">
							<img src="${pageContext.request.contextPath }/views/template/images/gallery-4.jpg" alt="gallery">
							<div class="content-block-hover">
								<h5>绝佳海景</h5>
								<p>私人享有</p>
								<a class="zoom" href="${pageContext.request.contextPath }/views/template/images/gallery-4.jpg" title="Expand"><i class="fa fa-search"></i></a>
								<a href="gallery-single.html" title="Link"><i class="fa fa-external-link"></i></a>
							</div>
						</div>
					</li>
					<li class="col-md-4 col-sm-4 col-xs-6 photography">
						<div class="content-image-block">
							<img src="${pageContext.request.contextPath }/views/template/images/gallery-5.jpg" alt="gallery">
							<div class="content-block-hover">
								<h5>绝佳海景</h5>
								<p>私人享有</p>
								<a class="zoom" href="${pageContext.request.contextPath }/views/template/images/gallery-5.jpg" title="Expand"><i class="fa fa-search"></i></a>
								<a href="gallery-single.html" title="Link"><i class="fa fa-external-link"></i></a>
							</div>
						</div>
					</li>
					<li class="col-md-4 col-sm-4 col-xs-6 web">
						<div class="content-image-block">
							<img src="${pageContext.request.contextPath }/views/template/images/gallery-6.jpg" alt="gallery">
							<div class="content-block-hover">
								<h5>绝佳海景</h5>
								<p>私人享有</p>
								<a class="zoom" href="${pageContext.request.contextPath }/views/template/images/gallery-6.jpg" title="Expand"><i class="fa fa-search"></i></a>
								<a href="gallery-single.html" title="Link"><i class="fa fa-external-link"></i></a>
							</div>
						</div>
					</li>
				</ul>
			</div><!-- Container /- -->
		</div><!-- Gallery Section /- -->
		
		<!-- Callout -->
		<div class="callout container-fluid">
			<!-- Container -->
			<div class="container">
				<div class="call-out-content">
					<h3>我们是酒店公寓在线预订平台</h3>
					<p>感谢一路有您相伴，使得我们平台更好得成长 </p>
					<a href="#" title="Book Now">马上预订</a>
				</div>
			</div><!-- Container /- -->
		</div><!-- Callout /- -->
		
		
		
	
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

	<!-- 自定义js -->
	<script src="${pageContext.request.contextPath }/views/template/js/room.js"></script>
</body>
</html>
