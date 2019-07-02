<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>注册</title>
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
	<!-- / jquery migrate (for compatibility with new jquery) -->
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/jquery/jquery-migrate.min.js" type="text/javascript"></script>
	<!-- / jquery ui -->
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/jquery_ui/jquery-ui.min.js" type="text/javascript"></script>
	<!-- / bootstrap -->
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/bootstrap/bootstrap.min.js" type="text/javascript"></script>
	<!-- / datatables -->
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/datatables/jquery.dataTables.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/datatables/jquery.dataTables.columnFilter.js" type="text/javascript"></script>
	<!-- / wysihtml5 -->
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/common/wysihtml5.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/common/bootstrap-wysihtml5.js" type="text/javascript"></script>
	<!-- / color picker -->
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/bootstrap_colorpicker/bootstrap-colorpicker.min.js" type="text/javascript"></script>
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
	<!-- / autosize (for textareas) -->
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/autosize/jquery.autosize-min.js" type="text/javascript"></script>
	<!-- / charCount -->
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/charCount/charCount.js" type="text/javascript"></script>
	<!-- / naked password -->
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/naked_password/naked_password-0.2.4.min.js" type="text/javascript"></script>
	<!-- / nestable -->
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/nestable/jquery.nestable.js" type="text/javascript"></script>
	<!-- / tabdrop -->
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/tabdrop/bootstrap-tabdrop.js" type="text/javascript"></script>
	<!-- / datetime picker -->
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/bootstrap_datetimepicker/bootstrap-datetimepicker.js" type="text/javascript"></script>
	<!-- / max length -->
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/bootstrap_maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>
	
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/theme.js" type="text/javascript"></script>
		
	
	<script src="${pageContext.request.contextPath }/views/manageUser/js/rsa/base64.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath }/views/manageUser/js/rsa/jsbn.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath }/views/manageUser/js/rsa/jsbn2.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath }/views/manageUser/js/rsa/prng4.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath }/views/manageUser/js/rsa/rng.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath }/views/manageUser/js/rsa/rsa.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath }/views/manageUser/js/rsa/rsa2.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath }/views/manageUser/js/rsa/encryptutils.js" type="text/javascript"></script>
	
	<script src="${pageContext.request.contextPath }/views/manageUser/js/sign_upByAdmin.js" type="text/javascript"></script>
	
</head>
<body class="contrast-blue sign-up contrast-background">
<input type="hidden" id="projectContextPath" value="${pageContext.request.contextPath }"/>
<div id="wrapper">
    <div class="application">
        <div class="application-content">
            <a href="#">
                <span>客房预订系统</span>
            </a>
        </div>
    </div>
    <div class="controls">
        <div class="caret"></div>
        <div class="form-wrapper">
            <h1 class="text-center">注册</h1>
            <div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
                <div class="row-fluid">
                    <div class="span12 icon-over-input">
                        <input class="span12" id="email" name="email" placeholder="电子邮件" type="text" value="" />
                        <i class="icon-user muted"></i>
                    </div>
                </div>
                <div class="row-fluid">
                    <div class="span12 icon-over-input">
                        <input class="span12" id="password" name="password" placeholder="密码" type="password" value="" />
                        <i class="icon-lock muted"></i>
                    </div>
                </div>
                <div class="row-fluid">
                    <div class="span12 icon-over-input">
                        <input class="span12" id="password_confirmation" name="password_confirmation" placeholder="确认密码" type="password" value="" />
                        <i class="icon-lock muted"></i>
                    </div>
                </div>
                <label class="checkbox" for="agreement">
                   <select id="userType" style="width:120px;float:right">
                   		<option value="normal">普通用户</option>
                   		<option value="userAdmin">用户管理员</option>
                   		<option value="admin">管理员</option>
                   </select>
                </label>
                <button class="btn btn-block" name="button" type="button" id="registerBtn">注册</button>
        </div>
    </div>
</div>

</body>
</html>
