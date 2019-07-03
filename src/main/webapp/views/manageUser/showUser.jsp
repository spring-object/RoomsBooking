<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//ZH" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>用户信息</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
	<meta name="renderer" content="webkit">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<link href="${pageContext.request.contextPath }/views/assets/stylesheets/bootstrap/bootstrap.css" media="all" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/light-theme.css" id="color-settings-body-color" media="all" rel="stylesheet" type="text/css" />
 
	<link href="${pageContext.request.contextPath }/views/manageUser/layui/css/layui.css" rel="stylesheet" type="text/css">
  	<link href="${pageContext.request.contextPath }/views/manageUser/layui/css/modules/layer/default/layer.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath }/views/manageUser/layui/css/modules/laydate/default/laydate.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath }/views/manageUser/layui/css/modules/code.css" rel="stylesheet" type="text/css">
	
	<!-- / jquery -->
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/jquery/jquery.min.js" type="text/javascript"></script>
	<!-- / jquery mobile events (for touch and slide) -->
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/mobile_events/jquery.mobile-events.min.js" type="text/javascript"></script>
	<!-- / bootstrap -->
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/bootstrap/bootstrap.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/flot/excanvas.js" type="text/javascript"></script>
	<!-- / flatty theme -->
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/theme.js" type="text/javascript"></script>
	
	<script src="${pageContext.request.contextPath }/views/manageUser/js/showUser.js" type="text/javascript"></script>
</head>
<body class="contrast-blue ">
<input type="hidden" id="projectContextPath" value="${pageContext.request.contextPath }"/>
<div id="wrapper">

<div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="page-header">
                    <h1 class="pull-left">
                        <i class="icon-user"></i>
                        <span>
                        "<c:if test="${null==showUser.uname }">&lt;未设置昵称&gt;</c:if>
						<c:if test="${null!=showUser.uname }">${showUserr.uname }</c:if>
						"的资料</span>
                    </h1>
                </div>
                <div class="row-fluid">
                    <div class="span3 box">
                        <div class="box-content">
                            <img alt="头像" src="${pageContext.request.contextPath }${showUser.uicon }" />
                        </div>
                    </div>
                    <div class="span9 box">
                        <div class="box-content box-double-padding">
                                <fieldset>
                                    <div class="span4 box">
                                        <div class="lead">
                                            <i class="icon-user text-contrast"></i>账号信息
                                        </div>
                                        <small class="muted"></small>
                                    </div>
                                    <div class="span7 offset1">
                                        <div class="control-group">
                                            <label class="control-label">昵称:</label>
                                            <div class="controls">
                                                <div class="span12">
	                                                <c:if test="${null==showUser.uname }">&lt;未设置昵称&gt;</c:if>
													<c:if test="${null!=showUser.uname }">${showUserr.uname }</c:if>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label">手机号:</label>
                                            <div class="controls">
                                                <div class="span12">
	                                                <c:if test="${null==showUser.telephone }">&lt;未设置手机号&gt;</c:if>
													<c:if test="${null!=showUser.telephone }">${showUser.telephone }</c:if>
                                                </div>
                                            </div>
                                        </div>
										<div class="control-group">
                                            <label class="control-label">邮箱:</label>
                                            <div class="controls">
                                                <div class="span12">${showUser.email }</div>
                                            </div>
                                        </div>
										<div class="control-group">
                                            <label class="control-label">注册日期:</label>
                                            <div class="controls">
                                                <div class="span12">${showUser.create_time }</div>
                                            </div>
                                        </div>
										<div class="control-group">
                                            <label class="control-label">用户类型:</label>
                                            <div class="controls">
                                            <div class="span12">
	                                            <c:if test="${2==showUser.type }">普通用户</c:if>
												<c:if test="${1==showUser.type }">用户管理员</c:if>
												<c:if test="${0==showUser.type }">管理员</c:if>
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
    </div>

</div>

</body>
</html>