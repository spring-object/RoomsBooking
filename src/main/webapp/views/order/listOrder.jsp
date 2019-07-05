<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>订单列表</title>

	<link href="${pageContext.request.contextPath }/views/assets/stylesheets/bootstrap/bootstrap.css" media="all" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/bootstrap/bootstrap-responsive.css" media="all" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/jquery_ui/jquery-ui-1.10.0.custom.css" media="all" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/jquery_ui/jquery.ui.1.10.0.ie.css" media="all" rel="stylesheet" type="text/css" />
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
    
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/views/plugins/font-awesome/css/font-awesome.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/css/jquery.dataTables.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/css/buttons.dataTables.min.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/css/editor.dataTables.min.css">
	
    
</head>
<body>
<header>
    <div class="navbar">
        <div class="navbar-inner">
            <div class="container-fluid">
                <a class="brand" href="index.html">
                    <i class="icon-heart-empty"></i>
                    <span class="hidden-phone">个人中心</span>
                </a>
                <a class="toggle-nav btn pull-left" href="#">
                    <i class="icon-reorder"></i>
                </a>
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
                            <img alt="Mila Kunis" height="23" src="${pageContext.request.contextPath }/views/assets/images/avatar.jpg" width="23" />
                            <span class="user-name hidden-phone">账号名称</span>
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
		            <a href="${pageContext.request.contextPath }/user/info/show">
		                <i class="icon-caret-right"></i>
		                <span>查看个人资料</span>
		            </a>
		        </li>
		        <li class="">
		            <a href="${pageContext.request.contextPath }/user/info/change">
		                <i class="icon-caret-right"></i>
		                <span>修改个人资料</span>
		            </a>
		        </li>
		       <li class="">
		            <a href="${pageContext.request.contextPath }/user/password/change">
		                <i class="icon-caret-right"></i>
		                <span>修改密码</span>
		            </a>
		        </li>
		    </ul>
		</li>
		<li class="">
		    <a class="dropdown-collapse " href="#">
		        <i class="icon-tint"></i>
		        <span>订单管理</span>
		        <i class="icon-angle-down angle-down"></i>
		    </a>
		    <ul class="in nav nav-stacked">
		        <li class="active">
		            <a href="${pageContext.request.contextPath }/views/order/listOrder.jsp">
		                <i class="icon-caret-right"></i>
		                <span>查看订单</span>
		            </a>
		        </li>
		    </ul>
		</li>
		
		</ul>
		</div>
	</nav>
	<section id="content">
		<div class='row-fluid'>
	          <div class='span12 box bordered-box orange-border' style='margin-bottom:0;'>
	              <div class='box-content box-no-padding'>
	                  <div class='responsive-table'>
	                      <div class='scrollable-area'>
	                      	<form class="form-inline form-horizontal">
	                              <div class="form-group text-center" style="padding-top:20px">
	                                  <label for="search">关键字</label>
	                                  <input type="text" id="search" name="search">
	                                  <button type="button" class="btn btn-primary" id="searchBtn">查询</button>
	                              </div>   
	                          </form>
	                          <table id="myDatatable" class='table table-bordered table-striped' style='margin-bottom:0;'>
	                              <thead>
	                                  <tr>
	                                      <th><input type="checkbox" id="checkAll" name="checkAll" class='group-checkable' /></th>
	                                      <th>订单ID</th>
	                                      <th>酒店</th>
	                                      <th>房间名</th>
	                                      <th>数量</th>
	                                      <th>单价(元)</th>
	                                      <th>下单时间</th>
	                                      <th>总价(元)</th>
	                                      <th>状态</th>
	                                      <th>操作</th>
	                                  </tr>
	                              </thead>
	                              <tbody>
	                                       
	                              </tbody>
	                          </table>
	                      </div>
	                  </div>
	              </div>
	          </div>
		</div>
		<!-- 编辑订单模态框 -->
		<div class="modal fade hid" id="editorWindow" tabindex="0" role="dialog" aria-hidden="true">
		    <div class="modal-dialog">
		        <div class="modal-content">
		            <div class="modal-header">
		                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                <h4 class="modal-title" id="myModalLabel">编辑订单</h4>
		            </div>
		            <div class="modal-body">
		            	<div class="form-horizontal">
		            		<div class="form-group">
			                  <label for="oid" class="col-sm-2 control-label">ID：</label>
			                  <div class="col-sm-10">
			                    <input class="form-control" id="oid" type="text" readonly="readonly">
			                  </div>
			                </div>
			                <br>
			                <div class="form-group">
			                  <label for="hname" class="col-sm-2 control-label">酒店：</label>
			                  <div class="col-sm-10">
			                    <input class="form-control" id="hname" type="text" readonly="readonly">
			                  </div>
			                </div>	
			                <br>
			                <div class="form-group">
			                  <label for="rname" class="col-sm-2 control-label" readonly="readonly">房间名：</label>
			                  <div class="col-sm-10">
			                    <input class="form-control" id="rname" type="text" readonly="readonly">
			                  </div>
			                  
			                  <label for="rtype" class="col-sm-2 control-label" readonly="readonly">房型：</label>
			                  <div class="col-sm-10">
			                    <input class="form-control" id="rtype" type="text" readonly="readonly">
			                  </div>
			                  
			                  <label for="rcount" class="col-sm-2 control-label">数量：</label>
			                  <div class="col-sm-10">
			                    <input class="form-control" id="rcount" type="number" min="1" max="50">
			                  </div>
			                  
			                  <label for="rprice" class="col-sm-2 control-label">单价：</label>
			                  <div class="col-sm-10">
			                    <input class="form-control" id="rprice" type="text" readonly="readonly">
			                  </div>
			                </div>						
			                <br>
			                <div class="form-group">
			                  <label for="uname" class="col-sm-2 control-label">用户名：</label>
			                  <div class="col-sm-10">
			                    <input class="form-control" id="uname" type="text" readonly="readonly">
			                  </div>
			                </div>
							<br>
							<div class="form-group">
			                  <label for="telephone" class="col-sm-2 control-label">联系电话：</label>
			                  <div class="col-sm-10">
			                    <input class="form-control" id="telephone" type="text">
			                  </div>
			                </div>
			                <br>
							<div class="form-group">
			                  <label for="create_time" class="col-sm-2 control-label">创建时间：</label>
			                  <div class="col-sm-10">
			                    <input class="form-control" id="create_time" type="text" readonly="readonly">
			                  </div>
			                </div>
			                <br>
			                <div class="form-group">
			                  <label for="start_time" class="col-sm-2 control-label">入住时间：</label>
			                  <div class="col-sm-10">
			                    <input class="form-control" id="start_time" type="text" readonly="readonly">
			                  </div>
			                </div>
			                <br>
			                <div class="form-group">
			                  <label for="end_time" class="col-sm-2 control-label">离开时间：</label>
			                  <div class="col-sm-10">
			                    <input class="form-control" id="end_time" type="text" readonly="readonly">
			                  </div>
			                </div>
			                <br>
							<div class="form-group">
							  <label for="status" class="col-sm-2 control-label">状态：</label>
			                  <select id="status" class="form-control">
			                  	<option value="0">已完成</option>
			                  	<option value="1">未使用</option>
			                  	<option value="2">待付款</option>
			                  </select>
			                </div>
			                
		                </div>
		            </div>
		            <div class="modal-footer">
		                	总价：<span id="totalPrice" style="font-size: 36px"></span>
		                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
		                <button id="update" type="button" class="btn btn-primary">保存</button>
		            </div>
		        </div>
		    </div>
		</div>
	</section>
</div>

	<script type="text/javascript" src="${pageContext.request.contextPath}/views/admin/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/views/admin/js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/views/admin/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/views/admin/js/dataTables.buttons.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/views/admin/js/dataTables.editor.min.js"></script>
	<script type='text/javascript' src='${pageContext.request.contextPath}/views/order/orderDataTable.js'></script>
	<!-- / flatty theme -->
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/nav.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/tables.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/theme.js" type="text/javascript"></script>
	
	
</body>
</html>