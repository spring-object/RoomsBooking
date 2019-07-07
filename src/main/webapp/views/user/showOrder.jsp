<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>订单详情</title>
<meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">

	<title>预订页面——酒店预订</title>

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

</head>
<body>
<div style="margin-bottom: -10px;" class="offer-section container-fluid">
			<!-- Container -->
			<div class="container">
				<!-- Section Header -->
				<div class="section-header section-header-2">
				<h3>您预订的房间</h3>
					
				</div><!-- Section Header /- -->
				<div style="height: 600px;" class="col-md-12 col-sm-12 col-xs-12">
						<div class="offer-box">
							<c:if test="${showOrder.room.pictures.size()>0 }">
								<i>
									<img width="350" height="350" src="${pageContext.request.contextPath }/views/images/rooms/${showOrder.room.pictures.toArray()[0].src }" alt="offer">
								</i>
							</c:if>
							<div style="width: 320px; height: 505px; float: right" class="offer-content">
								<h3>${showOrder.room.rname }</h3>
								<h5>${showOrder.room.type }</h5>
								入住时间：<span>${showOrder.start_time }</span>
								退房时间：<span>${showOrder.end_time }</span>
								房间数：<span>${showOrder.rcount }</span>
								房间描述：</br><p>${showOrder.room.info }</p>
								<p>${showOrder.room.equipment }</p>
								<span>${showOrder.room.price }￥ /晚</span>
							</div>
						</div>
					</div>
				</div>
		</div>
		<!-- 

	id:${showOrder.oid }</br>
	下单时间:${showOrder.create_time }</br>
	入住时间:${showOrder.start_time }</br>
	离开时间:${showOrder.end_time }</br>
	房间价格:${showOrder.rprice }</br>
	房间数量:${showOrder.rcount }</br>
	订单总价:${showOrder.totalPrice }</br>
	订单状态:${showOrder.status }</br>
	订单图片:
	<c:if test="${showOrder.room.pictures.size()>0 }">
		<img width="350" height="350" src="${pageContext.request.contextPath }/views/images/rooms/${showOrder.room.pictures.toArray()[0].src }" alt="picture">
	</c:if>
	</br> -->
</body>
</html>