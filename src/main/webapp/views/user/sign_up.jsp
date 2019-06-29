<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>注册</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
    
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath }/views/assets/javascripts/html5shiv.js" type="text/javascript"></script>
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body class="contrast-blue sign-up contrast-background">
<input type="hidden" id="projectContextPath" value="${pageContext.request.contextPath }"/>
<div id="wrapper">
    <div class="application">
        <div class="application-content">
            <a href="${pageContext.request.contextPath }/user/logup"><div class="icon-heart"></div>
                <span>客房预订系统</span>
            </a>
        </div>
    </div>
    <div class="controls">
        <div class="caret"></div>
        <div class="form-wrapper">
            <h1 class="text-center">注册</h1>
            <form accept-charset="UTF-8" action="javascript:void(0);" method="GET" />
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
                <label class="checkbox" for="agreement"><input id="agreement" name="agreement" type="checkbox" value="1" />
                    接受
                    <a href="javascript:void(0);" class="text-contrast">用户服务条款</a>
                </label>
                <button class="btn btn-block" name="button" type="button" id="registerBtn">注册</button>
            </form>
            <div class="text-center">
                <hr class="hr-normal" />
                <a href="${pageContext.request.contextPath }/user/signin"><i class="icon-chevron-left"></i>
                    返回登陆
                </a>
            </div>
        </div>
    </div>
    <div class="login-action text-center">
        <a href="${pageContext.request.contextPath }/user/forgetPasswd"><i class="icon-lock"></i>
            忘记密码?
        </a>
    </div>
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

<script src="${pageContext.request.contextPath }/views/user/js/rsa/base64.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/user/js/rsa/jsbn.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/user/js/rsa/jsbn2.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/user/js/rsa/prng4.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/user/js/rsa/rng.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/user/js/rsa/rsa.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/user/js/rsa/rsa2.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/user/js/rsa/encryptutils.js" type="text/javascript"></script>

<script src="${pageContext.request.contextPath }/views/user/js/sign_up.js" type="text/javascript"></script>

</body>
</html>
