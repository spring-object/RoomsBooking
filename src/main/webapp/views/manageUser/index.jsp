<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>用户管理</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!--[if lt IE 9]>
    <script src="assets/javascripts/html5shiv.js" type="text/javascript"></script>
    <![endif]-->
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/bootstrap/bootstrap.css" media="all" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/bootstrap/bootstrap-responsive.css" media="all" rel="stylesheet" type="text/css" />
    <!-- / jquery ui -->
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/jquery_ui/jquery-ui-1.10.0.custom.css" media="all" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/jquery_ui/jquery.ui.1.10.0.ie.css" media="all" rel="stylesheet" type="text/css" />
    <!-- / switch buttons -->
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/plugins/bootstrap_switch/bootstrap-switch.css" media="all" rel="stylesheet" type="text/css" />
    <!-- / xeditable -->
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/plugins/xeditable/bootstrap-editable.css" media="all" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/plugins/common/bootstrap-wysihtml5.css" media="all" rel="stylesheet" type="text/css" />
    <!-- / wysihtml5 (wysywig) -->
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/plugins/common/bootstrap-wysihtml5.css" media="all" rel="stylesheet" type="text/css" />
    <!-- / jquery file upload -->
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/plugins/jquery_fileupload/jquery.fileupload-ui.css" media="all" rel="stylesheet" type="text/css" />
    <!-- / full calendar -->
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/plugins/fullcalendar/fullcalendar.css" media="all" rel="stylesheet" type="text/css" />
    <!-- / select2 -->
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/plugins/select2/select2.css" media="all" rel="stylesheet" type="text/css" />
    <!-- / mention -->
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/plugins/mention/mention.css" media="all" rel="stylesheet" type="text/css" />
    <!-- / tabdrop (responsive tabs) -->
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/plugins/tabdrop/tabdrop.css" media="all" rel="stylesheet" type="text/css" />
    <!-- / jgrowl notifications -->
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/plugins/jgrowl/jquery.jgrowl.min.css" media="all" rel="stylesheet" type="text/css" />
    <!-- / datatables -->
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/plugins/datatables/bootstrap-datatable.css" media="all" rel="stylesheet" type="text/css" />
    <!-- / dynatrees (file trees) -->
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/plugins/dynatree/ui.dynatree.css" media="all" rel="stylesheet" type="text/css" />
    <!-- / color picker -->
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/plugins/bootstrap_colorpicker/bootstrap-colorpicker.css" media="all" rel="stylesheet" type="text/css" />
    <!-- / datetime picker -->
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/plugins/bootstrap_datetimepicker/bootstrap-datetimepicker.min.css" media="all" rel="stylesheet" type="text/css" />
    <!-- / daterange picker) -->
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/plugins/bootstrap_daterangepicker/bootstrap-daterangepicker.css" media="all" rel="stylesheet" type="text/css" />
    <!-- / flags (country flags) -->
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/plugins/flags/flags.css" media="all" rel="stylesheet" type="text/css" />
    <!-- / slider nav (address book) -->
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/plugins/slider_nav/slidernav.css" media="all" rel="stylesheet" type="text/css" />
    <!-- / fuelux (wizard) -->
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/plugins/fuelux/wizard.css" media="all" rel="stylesheet" type="text/css" />
    <!-- / flatty theme -->
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/light-theme.css" id="color-settings-body-color" media="all" rel="stylesheet" type="text/css" />
    <!-- / demo -->
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/demo.css" media="all" rel="stylesheet" type="text/css" />
	 <link href="css/index.css" media="all" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body class="contrast-blue ">
<header>
    <div class="navbar">
        <div class="navbar-inner">
            <div class="container-fluid">
                <a class="brand" href="index.html">
                    <i class="icon-heart-empty"></i>
                    <span class="hidden-phone">用户管理</span>
                </a>
                <!--<a class="toggle-nav btn pull-left" href="#">
                    <i class="icon-reorder"></i>
                </a>-->
                <ul class="nav pull-right">
                    <li class="dropdown light only-icon">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="icon-adjust"></i>
                        </a>
                        <ul class="dropdown-menu color-settings">
                            <li class="color-settings-body-color">
                                <div class="color-title">主题</div>
                                <a data-change-to="${pageContext.request.contextPath }/views/assets/stylesheets/light-theme.css" href="#">
                                    亮
                                    <small>(默认)</small>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li class="color-settings-contrast-color">
                                <div class="color-title">主题颜色</div>
								<a href="#" data-change-to="contrast-blue"><i class="icon-adjust text-blue"></i>
                                    天蓝色
									<small>(默认)</small>
                                </a>
                                <a href="#" data-change-to="contrast-red"><i class="icon-adjust text-red"></i>
                                    红色
                                </a>
                                <a href="#" data-change-to="contrast-orange"><i class="icon-adjust text-orange"></i>
                                    橙色
                                </a>
                                <a href="#" data-change-to="contrast-purple"><i class="icon-adjust text-purple"></i>
                                    紫色
                                </a>
                                <a href="#" data-change-to="contrast-green"><i class="icon-adjust text-green"></i>
                                    绿色
                                </a>
                                <a href="#" data-change-to="contrast-muted"><i class="icon-adjust text-muted"></i>
                                    浅灰色
                                </a>
                                <a href="#" data-change-to="contrast-fb"><i class="icon-adjust text-fb"></i>
                                    蓝色
                                </a>
                                <a href="#" data-change-to="contrast-dark"><i class="icon-adjust text-dark"></i>
                                    黑色
                                </a>
                                <a href="#" data-change-to="contrast-pink"><i class="icon-adjust text-pink"></i>
                                    粉色
                                </a>
                                <a href="#" data-change-to="contrast-grass-green"><i class="icon-adjust text-grass-green"></i>
                                    草绿
                                </a>
                                <a href="#" data-change-to="contrast-sea-blue"><i class="icon-adjust text-sea-blue"></i>
                                    海蓝
                                </a>
                                <a href="#" data-change-to="contrast-banana"><i class="icon-adjust text-banana"></i>
                                    黄色
                                </a>
                                <a href="#" data-change-to="contrast-dark-orange"><i class="icon-adjust text-dark-orange"></i>
                                    暗橙色
                                </a>
                                <a href="#" data-change-to="contrast-brown"><i class="icon-adjust text-brown"></i>
                                    棕色
                                </a>
                            </li>
                        </ul>
                    </li>
					
                    <li class="dropdown dark user-menu">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <img alt="Mila Kunis" height="23" src="${pageContext.request.contextPath }${sessionScope.user.uicon }" width="23" />
                            <span class="user-name hidden-phone">
                            	<c:if test="${null==sessionScope.user.uname }">
									未设置昵称
								</c:if>
								<c:if test="${null!=sessionScope.user.uname }">
									${sessionScope.user.uname }
								</c:if>
                            </span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="user_profile.html">
                                    <i class="icon-cog"></i>
                                    设置
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="${pageContext.request.contextPath }/user/logout">
                                    <i class="icon-signout"></i>
                                    退出登录
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <form accept-charset="UTF-8" action="search_results.html" class="navbar-search pull-right hidden-phone" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
                    <button class="btn btn-link icon-search" name="button" type="submit"></button>
                    <input autocomplete="off" class="search-query span2" id="q_header" name="q" placeholder="搜索..." type="text" value="" />
                </form>
            </div>
        </div>
    </div>
</header>
<div id="wrapper">
	<!--
<div id="main-nav-bg"></div>
<nav class="" id="main-nav">
<div class="navigation">
<div class="search">
    <form accept-charset="UTF-8" action="search_results.html" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
        <div class="search-wrapper">
            <input autocomplete="off" class="search-query" id="q" name="q" placeholder="Search..." type="text" value="" />
            <button class="btn btn-link icon-search" name="button" type="submit"></button>
        </div>
    </form>
</div>
<ul class="nav nav-stacked">
<li class="">
    <a class="dropdown-collapse" href="#">
        <i class="icon-edit"></i>
        <span>个人资料</span>
        <i class="icon-angle-down angle-down"></i>
    </a>
    <ul class="nav nav-stacked">
        <li class="">
            <a href="show_info.html">
                <i class="icon-caret-right"></i>
                <span>查看个人资料</span>
            </a>
        </li>
        <li class="">
            <a href="change_info.html">
                <i class="icon-caret-right"></i>
                <span>修改个人资料</span>
            </a>
        </li>
       <li class="">
            <a href="change_password.html">
                <i class="icon-caret-right"></i>
                <span>修改密码</span>
            </a>
        </li>
    </ul>
</li>
<li>
    <a class="dropdown-collapse " href="#">
        <i class="icon-tint"></i>
        <span>我的订单</span>
        <i class="icon-angle-down angle-down"></i>
    </a>
    <ul class="nav nav-stacked">
        <li class="">
            <a href="order_list.html">
                <i class="icon-caret-right"></i>
                <span>查看订单</span>
            </a>
        </li>
        <li class="">
            <a href="order_sta.html">
                <i class="icon-caret-right"></i>
                <span>订单统计</span>
            </a>
        </li>
    </ul>
</li>

</ul>
</div>
</nav>
<section id="content">

</section>-->
<!---------------------------------------------------查看信息------------------------------------------------------------->
<!-- 
<div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="page-header">
                    <h1 class="pull-left">
                        <i class="icon-user"></i>
                        <span>个人资料</span>
                    </h1>
                </div>
                <div class="row-fluid">
                    <div class="span3 box">
                        <div class="box-content">
                            <img alt="头像" src="${pageContext.request.contextPath }${sessionScope.user.uicon }" />
                        </div>
                    </div>
                    <div class="span9 box">
                        <div class="box-content box-double-padding">
                                <fieldset>
                                    <div class="span4 box">
                                        <div class="lead">
                                            <i class="icon-user text-contrast"></i>
                                            账号信息
                                        </div>
                                        <small class="muted"></small>
                                    </div>
                                    <div class="span7 offset1">
                                        <div class="control-group">
                                            <label class="control-label">昵称</label>
                                            <div class="controls">
                                                <div class="span12">
	                                                <c:if test="${null==sessionScope.user.uname }">
														未设置昵称
													</c:if>
													<c:if test="${null!=sessionScope.user.uname }">
														${sessionScope.user.uname }
													</c:if>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label">手机号</label>
                                            <div class="controls">
                                                <div class="span12">
	                                                <c:if test="${null==sessionScope.user.telephone }">
														未设置手机号
													</c:if>
													<c:if test="${null!=sessionScope.user.telephone }">
														${sessionScope.user.telephone }
													</c:if>
                                                </div>
                                            </div>
                                        </div>
										<div class="control-group">
                                            <label class="control-label">邮箱</label>
                                            <div class="controls">
                                                <div class="span12">${sessionScope.user.email }</div>
                                            </div>
                                        </div>
										<div class="control-group">
                                            <label class="control-label">注册日期</label>
                                            <div class="controls">
                                                <div class="span12">${sessionScope.user.create_time }</div>
                                            </div>
                                        </div>
										<div class="control-group">
                                            <label class="control-label">用户类型</label>
                                            <div class="controls">
                                            <div class="span12">
	                                            <c:if test="${0==sessionScope.user.type }">
													普通用户
												</c:if>
												<c:if test="${1==sessionScope.user.type }">
													管理员
												</c:if>
                                             </div>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> -->
<!---------------------------------------------------修改信息------------------------------------------------------------->
	<!-- 
<div class="container-fluid">
<div class="row-fluid">
<div class="span12">

<div class="box-content box-no-padding">
<div class="responsive-table">
<div class="row-fluid">
	<div class="span6 box">
        <div class="box-header blue-background">
            <div class="title">修改密码</div>
            <div class="actions">
                <a href="#" class="btn box-collapse btn-mini btn-link" id="changePasswdActions"><i></i></a>
            </div>
        </div>
        <div class="box-content">
			<strong></strong>
            <input class="input-block-level mention" placeholder="旧密码" type="password" />
            <strong></strong>
            <input class="input-block-level mention" placeholder="新密码" type="password" />
			<strong></strong>
            <input class="input-block-level mention" placeholder="确认密码" type="password" />
			<button class="btn btn-primary btn-block btn-large disabled" name="button" type="submit">修改</button>
        </div>
    </div>
	<div class="span6 box">
        <div class="box-header green-background">
            <div class="title">修改个人信息</div>
            <div class="actions">
                <a href="#" class="btn box-collapse btn-mini btn-link" id="changeInfoActions"><i></i></a>
            </div>
        </div>
        <div class="box-content">
            <input class="input-block-level mention" placeholder="昵称" type="password" />
            <button class="btn btn-success" name="button" style="margin-bottom:5px" type="submit">修改昵称</button>
            <input class="input-block-level mention" placeholder="电话" type="password" />
			<button class="btn btn-success" name="button" style="margin-bottom:5px" type="submit">修改电话</button>
            <input class="input-block-level mention" placeholder="邮箱" type="password" />
			<button class="btn btn-success" name="button" style="margin-bottom:5px" type="submit">修改邮箱</button>
        </div>
    </div>
</div>
</div>
</div>

</div>
</div>
</div>

	
<div class="container-fluid">
<div class="row-fluid">
<div class="span12">

<div class="box-content box-no-padding">
<div class="responsive-table">
<div class="row-fluid">
	<div class="span6 box box-nomargin">
        <div class="box-header orange-background">
            <div class="title">修改头像</div>
            <div class="actions">
                <a href="#" class="btn box-collapse btn-mini btn-link" id="changeAvatarActions"><i></i></a>
            </div>
        </div>
        <div class="box-content">
            <strong></strong>
            <div>
                <input title="选择文件" type="file" id="paersonal_info_inputAvatar"/>
            </div>
			<p></p>
			<img src="${pageContext.request.contextPath }${sessionScope.user.uicon }" width="720" height="720" alt="" id="change_paersonal_info_avatar"/>
			<p></p>
			<button class="btn btn-success" name="button" style="margin-bottom:5px" type="submit">修改头像</button>
        </div>
    </div>
</div>
</div>
</div>

</div>
</div>
</div> -->
<!---------------------------------------------------订单列表------------------------------------------------------------->

<div class="container-fluid">
<div class="row-fluid">
<div class="span12">

<hr class="hr-double" />

<div class="row-fluid">
<div class="span12 box bordered-box orange-border" style="margin-bottom:0;">
<div class="box-header red-background">
    <div class="title">用户列表</div>
	<div class="actions">
         <a href="#" class="btn box-collapse btn-mini btn-link" id="myOrderActions"><i></i></a>
    </div>
</div>
<div class="box-content box-no-padding">
<div class="responsive-table">
<div class="scrollable-area">
<table class="data-table table table-bordered table-striped" style="margin-bottom:0;">
<thead>
<tr>
    <th>
        订单编号
    </th>
    <th>
        创建时间
    </th>
    <th>
        开房时间
    </th>
	<th>
        退房时间
    </th>
	<th>
        房间数
    </th>
	<th>
        状态
    </th>
    <th></th>
</tr>
</thead>
<tbody>
<tr>
    <td>1</td>
    <td>0000/00/00 00:00:00</td>
	<td>0000/00/00 00:00:00</td>
	<td>0000/00/00 00:00:00</td>
	<td>2</td>
	<td>状态</td>
	<td>
        <div class="text-right">
            <a class="btn btn-danger btn-mini" href="javascript:void(0);" onClick="deleteOrder(1)">
                <i class="icon-remove"></i>
            </a>
        </div>
    </td>
   <!-- <td>
        <div class="text-right">
            <a class="btn btn-success btn-mini" href="#">
                <i class="icon-ok"></i>
            </a>
            <a class="btn btn-danger btn-mini" href="#">
                <i class="icon-remove"></i>
            </a>
        </div>
    </td>
	-->
</tr>
<tr>
    <td>1</td>
    <td>0000/00/00 00:00:00</td>
	<td>0000/00/00 00:00:00</td>
	<td>0000/00/00 00:00:00</td>
	<td>2</td>
	<td>状态</td>
	<td>
        <div class="text-right">
            <a class="btn btn-danger btn-mini" href="javascript:void(0);" onClick="deleteOrder(1)">
                <i class="icon-remove"></i>
            </a>
        </div>
    </td>
</tr>
<tr>
    <td>1</td>
    <td>0000/00/00 00:00:00</td>
	<td>0000/00/00 00:00:00</td>
	<td>0000/00/00 00:00:00</td>
	<td>2</td>
	<td>状态</td>
	<td>
        <div class="text-right">
            <a class="btn btn-danger btn-mini" href="javascript:void(0);" onClick="deleteOrder(1)">
                <i class="icon-remove"></i>
            </a>
        </div>
    </td>
</tr>
	<tr>
    <td>1</td>
    <td>0000/00/00 00:00:00</td>
	<td>0000/00/00 00:00:00</td>
	<td>0000/00/00 00:00:00</td>
	<td>2</td>
	<td>状态</td>
	<td>
        <div class="text-right">
            <a class="btn btn-danger btn-mini" href="javascript:void(0);" onClick="deleteOrder(1)">
                <i class="icon-remove"></i>
            </a>
        </div>
    </td>
</tr>
	<tr>
    <td>1</td>
    <td>0000/00/00 00:00:00</td>
	<td>0000/00/00 00:00:00</td>
	<td>0000/00/00 00:00:00</td>
	<td>2</td>
	<td>状态</td>
	<td>
        <div class="text-right">
            <a class="btn btn-danger btn-mini" href="javascript:void(0);" onClick="deleteOrder(1)">
                <i class="icon-remove"></i>
            </a>
        </div>
    </td>
</tr>
	<tr>
    <td>1</td>
    <td>0000/00/00 00:00:00</td>
	<td>0000/00/00 00:00:00</td>
	<td>0000/00/00 00:00:00</td>
	<td>2</td>
	<td>状态</td>
	<td>
        <div class="text-right">
            <a class="btn btn-danger btn-mini" href="javascript:void(0);" onClick="deleteOrder(1)">
                <i class="icon-remove"></i>
            </a>
        </div>
    </td>
</tr>
	<tr>
    <td>1</td>
    <td>0000/00/00 00:00:00</td>
	<td>0000/00/00 00:00:00</td>
	<td>0000/00/00 00:00:00</td>
	<td>2</td>
	<td>状态</td>
	<td>
        <div class="text-right">
            <a class="btn btn-danger btn-mini" href="javascript:void(0);" onClick="deleteOrder(1)">
                <i class="icon-remove"></i>
            </a>
        </div>
    </td>
</tr>
	<tr>
    <td>1</td>
    <td>0000/00/00 00:00:00</td>
	<td>0000/00/00 00:00:00</td>
	<td>0000/00/00 00:00:00</td>
	<td>2</td>
	<td>状态</td>
	<td>
        <div class="text-right">
            <a class="btn btn-danger btn-mini" href="javascript:void(0);" onClick="deleteOrder(1)">
                <i class="icon-remove"></i>
            </a>
        </div>
    </td>
</tr>
	<tr>
    <td>1</td>
    <td>0000/00/00 00:00:00</td>
	<td>0000/00/00 00:00:00</td>
	<td>0000/00/00 00:00:00</td>
	<td>2</td>
	<td>状态</td>
	<td>
        <div class="text-right">
            <a class="btn btn-danger btn-mini" href="javascript:void(0);" onClick="deleteOrder(1)">
                <i class="icon-remove"></i>
            </a>
        </div>
    </td>
</tr>
	<tr>
    <td>1</td>
    <td>0000/00/00 00:00:00</td>
	<td>0000/00/00 00:00:00</td>
	<td>0000/00/00 00:00:00</td>
	<td>2</td>
	<td>状态</td>
	<td>
        <div class="text-right">
            <a class="btn btn-danger btn-mini" href="javascript:void(0);" onClick="deleteOrder(1)">
                <i class="icon-remove"></i>
            </a>
        </div>
    </td>
</tr>
	<tr>
    <td>1</td>
    <td>0000/00/00 00:00:00</td>
	<td>0000/00/00 00:00:00</td>
	<td>0000/00/00 00:00:00</td>
	<td>2</td>
	<td>状态</td>
	<td>
        <div class="text-right">
            <a class="btn btn-danger btn-mini" href="javascript:void(0);" onClick="deleteOrder(1)">
                <i class="icon-remove"></i>
            </a>
        </div>
    </td>
</tr>
<tr>
<td>1</td>
    <td>0000/00/00 00:00:00</td>
	<td>0000/00/00 00:00:00</td>
	<td>0000/00/00 00:00:00</td>
	<td>2</td>
	<td>状态</td>
	<td>
        <div class="text-right">
            <a class="btn btn-danger btn-mini" href="javascript:void(0);" onClick="deleteOrder(1)">
                <i class="icon-remove"></i>
            </a>
        </div>
    </td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
</div>
</div>

</div>
</div>
</div>
<!---------------------------------------------------订单统计------------------------------------------------------------->
<!-- 
<div class="container-fluid">
<div class="row-fluid">
<div class="span12">

<hr class="hr-double" />

<div class="row-fluid">
<div class="span12 box bordered-box orange-border" style="margin-bottom:0;">
<div class="box-header purple-background">
    <div class="title">订单统计</div>
	<div class="actions">
         <a href="#" class="btn box-collapse btn-mini btn-link" id="orderStaActions"><i></i></a>
    </div>
</div>
<div class="box-content box-no-padding">
<div class="responsive-table">
	<div id="staBox"></div>
</div>
</div>
</div>
</div>

</div>
</div>
</div>
	 -->
</div>
<!-- / jquery -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/jquery/jquery.min.js" type="text/javascript"></script>
<!-- / jquery mobile events (for touch and slide) -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/mobile_events/jquery.mobile-events.min.js" type="text/javascript"></script>
<!-- / jquery migrate (for compatibility with new jquery) -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/jquery/jquery-migrate.min.js" type="text/javascript"></script>
<!-- / jquery ui -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/jquery_ui/jquery-ui.min.js" type="text/javascript"></script>
<!-- / bootstrap -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/bootstrap/bootstrap.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/flot/excanvas.js" type="text/javascript"></script>
<!-- / sparklines -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/sparklines/jquery.sparkline.min.js" type="text/javascript"></script>
<!-- / flot charts -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/flot/flot.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/flot/flot.resize.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/flot/flot.pie.js" type="text/javascript"></script>
<!-- / bootstrap switch -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/bootstrap_switch/bootstrapSwitch.min.js" type="text/javascript"></script>
<!-- / fullcalendar -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
<!-- / datatables -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/datatables/jquery.dataTables.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/datatables/jquery.dataTables.columnFilter.js" type="text/javascript"></script>
<!-- / wysihtml5 -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/common/wysihtml5.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/common/bootstrap-wysihtml5.js" type="text/javascript"></script>
<!-- / select2 -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/select2/select2.js" type="text/javascript"></script>
<!-- / color picker -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/bootstrap_colorpicker/bootstrap-colorpicker.min.js" type="text/javascript"></script>
<!-- / mention -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/mention/mention.min.js" type="text/javascript"></script>
<!-- / input mask -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/input_mask/bootstrap-inputmask.min.js" type="text/javascript"></script>
<!-- / fileinput -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/fileinput/bootstrap-fileinput.js" type="text/javascript"></script>
<!-- / modernizr -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/modernizr/modernizr.min.js" type="text/javascript"></script>
<!-- / retina -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/retina/retina.js" type="text/javascript"></script>
<!-- / fileupload -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/fileupload/tmpl.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/fileupload/load-image.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/fileupload/canvas-to-blob.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/fileupload/jquery.iframe-transport.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/fileupload/jquery.fileupload.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/fileupload/jquery.fileupload-fp.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/fileupload/jquery.fileupload-ui.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/fileupload/jquery.fileupload-init.js" type="text/javascript"></script>
<!-- / timeago -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/timeago/jquery.timeago.js" type="text/javascript"></script>
<!-- / slimscroll -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<!-- / autosize (for textareas) -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/autosize/jquery.autosize-min.js" type="text/javascript"></script>
<!-- / charCount -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/charCount/charCount.js" type="text/javascript"></script>
<!-- / validate -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/validate/jquery.validate.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/validate/additional-methods.js" type="text/javascript"></script>
<!-- / naked password -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/naked_password/naked_password-0.2.4.min.js" type="text/javascript"></script>
<!-- / nestable -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/nestable/jquery.nestable.js" type="text/javascript"></script>
<!-- / tabdrop -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/tabdrop/bootstrap-tabdrop.js" type="text/javascript"></script>
<!-- / jgrowl -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/jgrowl/jquery.jgrowl.min.js" type="text/javascript"></script>
<!-- / bootbox -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/bootbox/bootbox.min.js" type="text/javascript"></script>
<!-- / inplace editing -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/xeditable/bootstrap-editable.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/xeditable/wysihtml5.js" type="text/javascript"></script>
<!-- / ckeditor -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/ckeditor/ckeditor.js" type="text/javascript"></script>
<!-- / filetrees -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/dynatree/jquery.dynatree.min.js" type="text/javascript"></script>
<!-- / datetime picker -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/bootstrap_datetimepicker/bootstrap-datetimepicker.js" type="text/javascript"></script>
<!-- / daterange picker -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/bootstrap_daterangepicker/moment.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/bootstrap_daterangepicker/bootstrap-daterangepicker.js" type="text/javascript"></script>
<!-- / max length -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/bootstrap_maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>
<!-- / dropdown hover -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/bootstrap_hover_dropdown/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<!-- / slider nav (address book) -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/slider_nav/slidernav-min.js" type="text/javascript"></script>
<!-- / fuelux -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/fuelux/wizard.js" type="text/javascript"></script>
<!-- / flatty theme -->
<script src="${pageContext.request.contextPath }/views/assets/javascripts/nav.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/assets/javascripts/tables.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/assets/javascripts/theme.js" type="text/javascript"></script>

<script src="${pageContext.request.contextPath }/views/manageUser/js/index.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/manageUser/js/highcharts/highcharts.js" type="text/javascript"></script>

</body>
</html>