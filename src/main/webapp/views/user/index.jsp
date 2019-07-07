<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//ZH" "http://www.w3.org/TR/html4/loose.dtd">
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

	<link href="${pageContext.request.contextPath }/views/manageUser/layui/css/layui.css" rel="stylesheet" type="text/css">
  	<link href="${pageContext.request.contextPath }/views/manageUser/layui/css/modules/layer/default/layer.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath }/views/manageUser/layui/css/modules/laydate/default/laydate.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath }/views/manageUser/layui/css/modules/code.css" rel="stylesheet" type="text/css">
	
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
	<script src="${pageContext.request.contextPath }/views/manageUser/layui/layui.all.js" charset="utf-8"></script>
	
</head>

<body data-offset="200" data-spy="scroll" data-target=".ow-navigation">
	<input type="hidden" id="projectContextPath" value="${pageContext.request.contextPath }"/>
	<!-- Header -->
	<header class="header-section container-fluid no-padding"> <!-- Top Header -->
	<div class="top-header container-fluid no-padding">
		<!-- Container -->
		<div class="container">
			<!-- Social -->
			<div class="col-md-7 col-sm-6 col-xs-12 info">
				<p>
					<i class="icon icon-Pointer"></i>松山湖大学路1号, 东莞, 广东
				</p>
				<p>
					<i class="icon icon-Phone2"></i><a href="tel:(+01)1234567890" title="Phone" class="phone">(+01) 123 456 7890</a>
				</p>
			</div>
			<div>
				<ol>
				</ol>
			</div>
			<div id="top_list" class="col-md-5 col-sm-6 col-xs-12 header-social">
				<a href="${pageContext.request.contextPath }/user/">个人中心</a>
				<a href="${pageContext.request.contextPath }/user/signup">注册</a>
				<a href="${pageContext.request.contextPath }/user/signout">退出登录</a>
				<a  href="${pageContext.request.contextPath }/user/admin">后台</a>
			</div>
			<!-- Social /- -->
		</div>
		<!-- Container /- -->
	</div>
	<!-- Top Header /- --> </header>
	<!-- Header /- -->
	<!-- Page Banner -->
	<div class="page-banner gallery-banner container-fluid no-padding">
		<div class="banner-content">
			<ol class="breadcrumb">
				<h3>个人中心</h3>
				<li><a href="${pageContext.request.contextPath }/" title="home">home</a></li>
			</ol>
		</div>
	</div>
	<!-- Page Banner /- -->
	<main> <!-- Offer Section -->
	<div style="margin-bottom: -10px;"
		class="offer-section container-fluid">
		<div class="container">
			<!-- Section Header -->
			<div class="section-header section-header-2">
				<h3>我的个人信息</h3>
			</div>
			<!-- Section Header /- -->
			<div align="center"
				style="width: 300px; margin: 0 auto; height: 350px;"
				class="col-md-12 col-sm-12 col-xs-12">
				<div class="offer-box">
					<div style="width: 200px; height: 300px; float: right" class="offer-content">
						<i style="margin-top: -80px; margin-right: 15px; float: right">
							<img width="100px" height="100px;" style="border-radius: 50%; height: 100px" src="${pageContext.request.contextPath }${sessionScope.user.uicon }" alt="avatar">
						</i>
						<br>
						<h5>
							<c:if test="${null==sessionScope.user.uname }">未设置昵称</c:if>
							<c:if test="${null!=sessionScope.user.uname }">${sessionScope.user.uname }</c:if>
						</h5>
						<p>${sessionScope.user.email }</p>
						<p>
							<c:if test="${null==sessionScope.user.telephone }">未设置手机号</c:if>
							<c:if test="${null!=sessionScope.user.telephone }">${sessionScope.user.telephone }</c:if>
						</p>
						<span></span> <a class="zoom" href="${pageContext.request.contextPath }/views/template/images/offer-1.jpg" title="offer"><i class="fa fa-plus"></i></a>
						<a style="display: block; width: 140px; padding: 10px 26px;cursor:pointer"  data-method="setTop" id="popUpChangeWin" title="change info" class="book-now">修改个人信息</a>
					</div>
				</div>
			</div>
		</div>

		<!-- Container -->
		<div class="container">
			<!-- Section Header -->
			<div class="section-header section-header-2">
				<h3>我预订过的房间</h3>
			</div>
			<div class="layui-tab">
				<ul class="layui-tab-title">
					<li class="layui-this">已完成</li>
					<li>未使用</li>
					<li>待付款</li>
				</ul>
				<div class="layui-tab-content" id="showOrderBox">
					<div class="layui-tab-item layui-show">
						<c:forEach var="order" items="${sessionScope.user.orders }">
						<c:if test="${0==order.status }">
							<div style="height: 450px;" class="col-md-12 col-sm-12 col-xs-12">
								<div class="offer-box">
									<i> 
										<c:if test="${order.room.pictures.size()>0 }">
											<img src="${pageContext.request.contextPath }/views/images/rooms/${order.room.pictures.toArray()[0].src }" alt="picture">
										</c:if>
									</i>
									<div style="width: 735px; height: 377px; float: right" class="offer-content">
										<h5>${order.room.rname }</h5>
										<p>${order.room.info }</p>
										<p>
											入住时间：${order.start_time } &nbsp &nbsp<br />
											退房时间：${order.end_time }&nbsp&nbsp
										</p>
										<span>共${order.totalPrice }￥ </span> 
										<a style="display: block; width: 108px; padding: 10px 26px;" title="Book Now" class="book-now">去评价</a>
										<div>
											<a href="javascript:void(0)" data-method="showOrder" style="display: block; width: 108px; padding: 10px 26px;margin-top:20px;" class="book-now showOrder">查看订单</a>
											<input type="hidden" value="${order.oid }"/>
										</div>
									</div>
								</div>
							</div>
						</c:if>
						</c:forEach>
					</div>
					<div class="layui-tab-item">
						<c:forEach var="order" items="${sessionScope.user.orders }">
							<c:if test="${1==order.status }">
								<div style="height: 450px;" class="col-md-12 col-sm-12 col-xs-12">
									<div class="offer-box">
										<i> 
											<c:if test="${order.room.pictures.size()>0 }">
												<img src="${pageContext.request.contextPath }/views/images/rooms/${order.room.pictures.toArray()[0].src }" alt="picture">
											</c:if>
										</i>
										<div style="width: 735px; height: 377px; float: right" class="offer-content">
											<h5>${order.room.rname }</h5>
											<p>${order.room.info }</p>
											<p>
												入住时间：${order.start_time } &nbsp &nbsp<br />
												退房时间：${order.end_time }&nbsp&nbsp
											</p>
											<span>共${order.totalPrice }￥ </span> <a style="display: block; width: 108px; padding: 10px 26px;" title="Book Now" class="book-now">去使用</a>
											<div>
												<a href="javascript:void(0)" data-method="showOrder" style="display: block; width: 108px; padding: 10px 26px;margin-top:20px;" class="book-now showOrder">查看订单</a>
												<input type="hidden" value="${order.oid }"/>
											</div>
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>
					</div>
					<div class="layui-tab-item">
						<c:forEach var="order" items="${sessionScope.user.orders }">
							<c:if test="${2==order.status }">
								<div style="height: 450px;"
									class="col-md-12 col-sm-12 col-xs-12">
									<div class="offer-box">
										<i> 
											<c:if test="${order.room.pictures.size()>0 }">
												<img src="${pageContext.request.contextPath }/views/images/rooms/${order.room.pictures.toArray()[0].src }" alt="picture">
											</c:if>
										</i>
										<div style="width: 735px; height: 377px; float: right"
											class="offer-content">
											<h5>${order.room.rname }</h5>
											<p>${order.room.info }</p>
											<p>
												入住时间：${order.start_time } &nbsp &nbsp<br />
												退房时间：${order.end_time }&nbsp&nbsp
											</p>
											<span>共${order.totalPrice }￥ </span> 
											<a href="${pageContext.request.contextPath }/order/pay?oid=${order.oid }" style="display: block; width: 108px; padding: 10px 26px;" title="Book Now" class="book-now">马上支付</a>
											<div>
												<a href="javascript:void(0)" data-method="showOrder" style="display: block; width: 108px; padding: 10px 26px;margin-top:20px;" class="book-now showOrder">查看订单</a>
												<input type="hidden" value="${order.oid }"/>
											</div>
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Offer Section /- --> </main>

	<!-- Footer Main -->
	<footer id="footer-main" class="footer-main container-fluid no-padding">

	<div class="bottom-footer container-fluid">
		<!-- Container -->
		<div class="container">
			<div class="col-md-3 col-sm-12 col-xs-12 coyright-content"></div>
			<div class="col-md-9 col-sm-12 col-xs-12">
				<!-- nav -->
				<nav class="navbar navbar-default ow-navigation">
				<div class="navbar-header">
					<button aria-controls="ftr-navbar" aria-expanded="false"
						data-target="#ftr-navbar" data-toggle="collapse"
						class="navbar-toggle collapsed" type="button">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="navbar-collapse collapse" id="ftr-navbar">
					<ul class="nav navbar-nav">
						<li class="active"><a href="${pageContext.request.contextPath }/" title="Home">首页</a></li>
						<li><a href="about.html" title="About Us">关于我们</a></li>
						<li><a href="contact-us.html" title="Contact">联系我们</a></li>
					</ul>
				</div>
				<!--/.nav-collapse --> 
				</nav>
				<!-- nav /- -->
			</div>
		</div>
		<!-- Container -->
	</div>
	</footer>
	<!-- Footer Main /- -->
<script>
var projectName=$("#projectContextPath").val();
var oid;
layui.use(['layer'], function(){
	//触发弹出窗口事件
	var active = {
		setTop: function(){
			var that = this; 
			layer.open({
				type: 2 
				,title: '修改信息'
				,area: ['850px', '600px']
				,shade: 0
				,maxmin: false
				,offset: 'auto'
				,content: projectName+"/user/changeUserInfo"
				,btn: '关闭'
				,yes: function(){
					layer.closeAll();
					window.location.reload();
				}
				,zIndex: layer.zIndex
			});
		},
	
		showOrder: function(){
			var that = this; 
			layer.open({
				type: 2 
				,title: '订单详情'
				,area: ['850px', '600px']
				,shade: 0
				,maxmin: false
				,offset: 'auto'
				,content: projectName+"/user/showOrder?oid="+oid
				,btn: '关闭'
				,yes: function(){
					layer.closeAll();
				}
				,zIndex: layer.zIndex
			});
		}
	};
	  
	$('#popUpChangeWin').on('click', function(){
		var othis = $(this), method = othis.data('method');
		active[method] ? active[method].call(this, othis) : '';
	});
	
	$('#showOrderBox [href]').on('click', function(){
		oid=$(event.target).next().val();
		if(isNaN(oid)){
			alert("获取订单信息失败");
			return;
		}
		var othis = $(this), method = othis.data('method');
		active[method] ? active[method].call(this, othis) : '';
	});
	
});
function test(){
	alert("test");
}
</script>
</body>
</html>
