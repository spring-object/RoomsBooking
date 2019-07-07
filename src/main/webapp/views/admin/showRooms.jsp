<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>酒店房间管理</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport' />

<!--  自定义css-->
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/views/plugins/font-awesome/css/font-awesome.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/css/bootstrap.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/views/plugins/webuploader/webuploader.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/css/jquery.dataTables.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/css/bootstrap-responsive.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/css/buttons.dataTables.min.css">
 <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/css/showRooms.css">

<!--[if lt IE 9]>
    <script src='${pageContext.request.contextPath }/views/assets/javascripts/html5shiv.js' type='text/javascript'></script>
    <![endif]-->
<link href='${pageContext.request.contextPath }/views/assets/stylesheets/bootstrap/bootstrap.css' media='all'
	rel='stylesheet' type='text/css' />
<link href='${pageContext.request.contextPath }/views/assets/stylesheets/bootstrap/bootstrap-responsive.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / jquery ui -->
<link href='${pageContext.request.contextPath }/views/assets/stylesheets/jquery_ui/jquery-ui-1.10.0.custom.css'
	media='all' rel='stylesheet' type='text/css' />
<link href='${pageContext.request.contextPath }/views/assets/stylesheets/jquery_ui/jquery.ui.1.10.0.ie.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / switch buttons -->
<link
	href='${pageContext.request.contextPath }/views/assets/stylesheets/plugins/bootstrap_switch/bootstrap-switch.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / xeditable -->
<link href='${pageContext.request.contextPath }/views/assets/stylesheets/plugins/xeditable/bootstrap-editable.css'
	media='all' rel='stylesheet' type='text/css' />
<link href='${pageContext.request.contextPath }/views/assets/stylesheets/plugins/common/bootstrap-wysihtml5.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / wysihtml5 (wysywig) -->
<link href='${pageContext.request.contextPath }/views/assets/stylesheets/plugins/common/bootstrap-wysihtml5.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / jquery file upload -->
<link
	href='${pageContext.request.contextPath }/views/assets/stylesheets/plugins/jquery_fileupload/jquery.fileupload-ui.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / full calendar -->
<link href='${pageContext.request.contextPath }/views/assets/stylesheets/plugins/fullcalendar/fullcalendar.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / select2 -->
<link href='${pageContext.request.contextPath }/views/assets/stylesheets/plugins/select2/select2.css' media='all'
	rel='stylesheet' type='text/css' />
<!-- / mention -->
<link href='${pageContext.request.contextPath }/views/assets/stylesheets/plugins/mention/mention.css' media='all'
	rel='stylesheet' type='text/css' />
<!-- / tabdrop (responsive tabs) -->
<link href='${pageContext.request.contextPath }/views/assets/stylesheets/plugins/tabdrop/tabdrop.css' media='all'
	rel='stylesheet' type='text/css' />
<!-- / jgrowl notifications -->
<link href='${pageContext.request.contextPath }/views/assets/stylesheets/plugins/jgrowl/jquery.jgrowl.min.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / datatables -->
<link
	href='${pageContext.request.contextPath }/views/assets/stylesheets/plugins/datatables/bootstrap-datatable.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / dynatrees (file trees) -->
<link href='${pageContext.request.contextPath }/views/assets/stylesheets/plugins/dynatree/ui.dynatree.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / color picker -->
<link
	href='${pageContext.request.contextPath }/views/assets/stylesheets/plugins/bootstrap_colorpicker/bootstrap-colorpicker.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / datetime picker -->
<link
	href='${pageContext.request.contextPath }/views/assets/stylesheets/plugins/bootstrap_datetimepicker/bootstrap-datetimepicker.min.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / daterange picker) -->
<link
	href='${pageContext.request.contextPath }/views/assets/stylesheets/plugins/bootstrap_daterangepicker/bootstrap-daterangepicker.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / flags (country flags) -->
<link href='${pageContext.request.contextPath }/views/assets/stylesheets/plugins/flags/flags.css' media='all'
	rel='stylesheet' type='text/css' />
<!-- / slider nav (address book) -->
<link href='${pageContext.request.contextPath }/views/assets/stylesheets/plugins/slider_nav/slidernav.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / fuelux (wizard) -->
<link href='${pageContext.request.contextPath }/views/assets/stylesheets/plugins/fuelux/wizard.css' media='all'
	rel='stylesheet' type='text/css' />
<!-- / flatty theme -->
<link href='${pageContext.request.contextPath }/views/assets/stylesheets/light-theme.css'
	id='color-settings-body-color' media='all' rel='stylesheet'
	type='text/css' />
<!-- / demo -->
<link href='${pageContext.request.contextPath }/views/assets/stylesheets/demo.css' media='all' rel='stylesheet'
	type='text/css' />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body class='contrast-red '>
	<header>
		<div class='navbar'>
			<div class='navbar-inner'>
				<div class='container-fluid'>
					<a class='brand' href='index.html'> <i class='icon-heart-empty'></i>
						<span class='hidden-phone'>Flatty</span>
					</a> <a class='toggle-nav btn pull-left' href='#'> <i
						class='icon-reorder'></i>
					</a>
					<ul class='nav pull-right'>
						<li class='dropdown light only-icon'><a
							class='dropdown-toggle' data-toggle='dropdown' href='#'> <i
								class='icon-adjust'></i>
						</a>
							<ul class='dropdown-menu color-settings'>
								<li class='color-settings-body-color'>
									<div class='color-title'>Body color</div> <a
									data-change-to='${pageContext.request.contextPath }/views/assets/stylesheets/light-theme.css' href='#'>
										Light <small>(default)</small>
								</a> <a data-change-to='${pageContext.request.contextPath }/views/assets/stylesheets/dark-theme.css' href='#'>
										Dark </a> <a
									data-change-to='${pageContext.request.contextPath }/views/assets/stylesheets/dark-blue-theme.css'
									href='#'> Dark blue </a>
								</li>
								<li class='divider'></li>
								<li class='color-settings-contrast-color'>
									<div class='color-title'>Contrast color</div> <a href="#"
									data-change-to="contrast-red"><i
										class='icon-adjust text-red'></i> Red <small>(default)</small>
								</a> <a href="#" data-change-to="contrast-blue"><i
										class='icon-adjust text-blue'></i> Blue </a> <a href="#"
									data-change-to="contrast-orange"><i
										class='icon-adjust text-orange'></i> Orange </a> <a href="#"
									data-change-to="contrast-purple"><i
										class='icon-adjust text-purple'></i> Purple </a> <a href="#"
									data-change-to="contrast-green"><i
										class='icon-adjust text-green'></i> Green </a> <a href="#"
									data-change-to="contrast-muted"><i
										class='icon-adjust text-muted'></i> Muted </a> <a href="#"
									data-change-to="contrast-fb"><i class='icon-adjust text-fb'></i>
										Facebook </a> <a href="#" data-change-to="contrast-dark"><i
										class='icon-adjust text-dark'></i> Dark </a> <a href="#"
									data-change-to="contrast-pink"><i
										class='icon-adjust text-pink'></i> Pink </a> <a href="#"
									data-change-to="contrast-grass-green"><i
										class='icon-adjust text-grass-green'></i> Grass green </a> <a
									href="#" data-change-to="contrast-sea-blue"><i
										class='icon-adjust text-sea-blue'></i> Sea blue </a> <a href="#"
									data-change-to="contrast-banana"><i
										class='icon-adjust text-banana'></i> Banana </a> <a href="#"
									data-change-to="contrast-dark-orange"><i
										class='icon-adjust text-dark-orange'></i> Dark orange </a> <a
									href="#" data-change-to="contrast-brown"><i
										class='icon-adjust text-brown'></i> Brown </a>
								</li>
							</ul></li>
						<li class='dropdown medium only-icon widget'><a
							class='dropdown-toggle' data-toggle='dropdown' href='#'> <i
								class='icon-rss'></i>
								<div class='label'>5</div>
						</a>
							<ul class='dropdown-menu'>
								<li><a href='#'>
										<div class='widget-body'>
											<div class='pull-left icon'>
												<i class='icon-user text-success'></i>
											</div>
											<div class='pull-left text'>
												John Doe signed up <small class='muted'>just now</small>
											</div>
										</div>
								</a></li>
								<li class='divider'></li>
								<li><a href='#'>
										<div class='widget-body'>
											<div class='pull-left icon'>
												<i class='icon-inbox text-error'></i>
											</div>
											<div class='pull-left text'>
												New Order #002 <small class='muted'>3 minutes ago</small>
											</div>
										</div>
								</a></li>
								<li class='divider'></li>
								<li><a href='#'>
										<div class='widget-body'>
											<div class='pull-left icon'>
												<i class='icon-comment text-warning'></i>
											</div>
											<div class='pull-left text'>
												America Leannon commented Flatty with veeery long text. <small
													class='muted'>1 hour ago</small>
											</div>
										</div>
								</a></li>
								<li class='divider'></li>
								<li><a href='#'>
										<div class='widget-body'>
											<div class='pull-left icon'>
												<i class='icon-user text-success'></i>
											</div>
											<div class='pull-left text'>
												Jane Doe signed up <small class='muted'>last week</small>
											</div>
										</div>
								</a></li>
								<li class='divider'></li>
								<li><a href='#'>
										<div class='widget-body'>
											<div class='pull-left icon'>
												<i class='icon-inbox text-error'></i>
											</div>
											<div class='pull-left text'>
												New Order #001 <small class='muted'>1 year ago</small>
											</div>
										</div>
								</a></li>
								<li class='widget-footer'><a href='#'>All notifications</a>
								</li>
							</ul></li>
						<li class='dropdown dark user-menu'><a
							class='dropdown-toggle' data-toggle='dropdown' href='#'> <img
								alt='Mila Kunis' height='23' src='${pageContext.request.contextPath }/views/assets/images/avatar.jpg'
								width='23' /> <span class='user-name hidden-phone'>Mila
									Kunis</span> <b class='caret'></b>
						</a>
							<ul class='dropdown-menu'>
								<li><a href='user_profile.html'> <i class='icon-user'></i>
										Profile
								</a></li>
								<li><a href='user_profile.html'> <i class='icon-cog'></i>
										Settings
								</a></li>
								<li class='divider'></li>
								<li><a href='sign_in.html'> <i class='icon-signout'></i>
										Sign out
								</a></li>
							</ul></li>
					</ul>
					<form accept-charset="UTF-8" action="search_results.html"
						class="navbar-search pull-right hidden-phone" method="get" />
					<div style="margin: 0; padding: 0; display: inline">
						<input name="utf8" type="hidden" value="&#x2713;" />
					</div>
					<button class="btn btn-link icon-search" name="button"
						type="submit"></button>
					<input autocomplete="off" class="search-query span2" id="q_header"
						name="q" placeholder="Search..." type="text" value="" />
					</form>
				</div>
			</div>
		</div>
	</header>
	<div id='wrapper'>
		<div id='main-nav-bg'></div>
		<nav class='' id='main-nav'>
			<div class='navigation'>
				<div class='search'>
					<form accept-charset="UTF-8" action="search_results.html"
						method="get" />
					<div style="margin: 0; padding: 0; display: inline">
						<input name="utf8" type="hidden" value="&#x2713;" />
					</div>
					<div class='search-wrapper'>
						<input autocomplete="off" class="search-query" id="q" name="q"
							placeholder="Search..." type="text" value="" />
						<button class="btn btn-link icon-search" name="button"
							type="submit"></button>
					</div>
					</form>
				</div>
				<ul class='nav nav-stacked'>
					<li class=''><a href='#'> <i
							class='icon-dashboard'></i> <span>Dashboard</span>
					</a></li>
					<li class=''><a href='/booking/views/admin/showAdmins.jsp'> <i
							class='icon-user'></i> <span>管理员管理</span>
					</a></li>
					<li class='active'><a href='/booking/views/admin/showRooms.jsp'> <i
							class='icon-home'></i> <span>房间管理</span>
					</a></li>
					<li class=''><a href='#'> <i
							class='icon-desktop'></i> <span>酒店管理</span>
					</a></li>	
					<li class=''><a href='/booking/views/admin/listOrder.jsp'> <i
							class='icon-tasks'></i> <span>订单管理</span>
					</a></li>
					<li class=''><a href='/booking/views/index.jsp'> <i
							class='icon-reply'></i> <span>返回首页</span>
					</a></li>
				</ul>
			</div>
		</nav>
		<section id='content'>
		<div class='container-fluid'>
                <div class='row-fluid' id='content-wrapper'>
                    <div class='span12'>
                        <div class='row-fluid'>
                            <div class='span12'>
                                <div class='page-header'>
                                    <h1 class='pull-left'>
                                        <i class='icon-home'></i>
                                        <span>酒店房间列表</span>
                                    </h1>
                                    <div class='pull-right'>
                                        <ul class='breadcrumb'>
                                            <li>
                                                <a href="#"><i class='icon-dashboard'></i>
                                                </a>
                                            </li>
                                            <li class='separator'>
                                                <i class='icon-angle-right'></i>
                                            </li>
                                            <li class='active'>酒店房间管理</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                     </div>
               </div>
         </div>
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
                          <table id="roomDatatable" class='table table-bordered table-striped' style='margin-bottom:0;'>
                              <thead>
                                  <tr>
                                      <th><input type="checkbox" id="checkAll" name="checkAll" class='group-checkable' /></th>
                                      <th>
                                          ID
                                      </th>
                                      <th>
                                          房间名称
                                      </th>
                                      <th>
                                          房间类型
                                      </th>
                                      <th>
                                          房间简介
                                      </th>
                                      <th>
                                          房间设备
                                      </th>
                                      <th>
                                          价格(单位:元)
                                      </th>
                                      <th>
                                          房间图片
                                      </th>
                                      <th>
                                          操作
                                      </th>
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


<div class="modal fade hid" id="pictureWindow"  style="width:800px" tabindex="0" role="dialog" aria-hidden="true">
    <div class="modal-dialog" style="pointer-events：auto;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">查看/更新图片</h4>
            </div>
            <div class="modal-body">
            	已上传图片
            	<hr>
            	<div id="pictures">
            		 
            	</div>
            	<hr>
            	上传图片
            	<hr>
            	<div id="uploader" class="wu-example">
				    <!--用来存放文件信息-->
				    <div id="thelist" class="uploader-list"></div>
				    <div class="btns">
				        <div id="filePicker" style="display:inline-block">选择文件</div>
				        <button type="button" id="ctlBtn" class="upload btn btn-default">开始上传</button>
				    </div>
				</div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade hid" id="editWindow" tabindex="0" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">编辑房间</h4>
            </div>
            <div class="modal-body">
            	<div class="form-horizontal">
            		<div class="form-group">
	                  <label for="rid" class="col-sm-2 control-label">ID：</label>
	                  <div class="col-sm-10">
	                    <input class="form-control" id="rid" type="text" readonly="readonly">
	                  </div>
	                </div>
	                <br>
	                <div class="form-group">
	                  <label for="rname" class="col-sm-2 control-label">房间名称：</label>
	                  <div class="col-sm-10">
	                    <input class="form-control" id="rname" type="text">
	                  </div>
	                </div>
					<br>          			
	                <div class="form-group">
	                  <label for="type" class="col-sm-2 control-label">房间类型：</label>
	                  <div class="col-sm-10">
	                  	<input class="form-control" id="type" type="text">
	                  </div>
	                </div>
	                <br>
	                <div class="form-group">
	                  <label for="info" class="col-sm-2 control-label">房间信息：</label>
	                  <div class="col-sm-10">
	                     <textarea  class="form-control" id="info" rows="3"></textarea>
	                  </div>
	                </div>
					<br>
					<div class="form-group">
	                  <label for="equipment" class="col-sm-2 control-label">房间设备：</label>
	                  <div class="col-sm-10">
	                     <textarea  class="form-control" id="equipment" rows="3"></textarea>
	                  </div>
	                </div>
	                <br>
					<div class="form-group">
	                  <label for="price" class="col-sm-2 control-label">价格：</label>
	                  <div class="col-sm-10">
	                    <input class="form-control" id="price" type="text">
	                  </div>
	                </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button id="update" type="button" class="btn btn-primary">更新</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade hid" id="addWindow" tabindex="0" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">添加房间</h4>
            </div>
            <div class="modal-body">
            	<div class="form-horizontal">
	                <div class="form-group">
	                  <label for="newRname" class="col-sm-2 control-label">房间名称：</label>
	                  <div class="col-sm-10">
	                    <input class="form-control" id="newRname" type="text">
	                  </div>
	                </div>
					<br>          			
	                <div class="form-group">
	                  <label for="newType" class="col-sm-2 control-label">房间类型：</label>
	                  <div class="col-sm-10">
	                  	<select class="form-control" id="newType">
		                    <option value="大床房">大床房</option>
		                    <option value="亲子房">亲子房</option>
		                    <option value="情侣房">情侣房</option>
		                    <option value="商务房">商务房</option>
		                </select>
	                  </div>
	                </div>
	                <br>
	                <div class="form-group">
	                  <label for="newInfo" class="col-sm-2 control-label">房间信息：</label>
	                  <div class="col-sm-10">
	                    <textarea  class="form-control" id="newInfo" rows="3"></textarea>
	                  </div>
	                </div>
					<br>
					<div class="form-group">
	                  <label for="newEquipment" class="col-sm-2 control-label">房间设备：</label>
	                  <div class="col-sm-10">
	                    <textarea  class="form-control" id="newEquipment" rows="3"></textarea>
	                  </div>
	                </div>
	                <br>
					<div class="form-group">
	                  <label for="newPrice" class="col-sm-2 control-label">价格：</label>
	                  <div class="col-sm-10">
	                    <input class="form-control" id="newPrice" type="text">
	                  </div>
	                </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button id="addRoom" type="button" class="btn btn-primary">添加</button>
            </div>
        </div>
    </div>
</div>
	</section>
	</div>
	<!-- / jquery -->
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/jquery/jquery.min.js'
		type='text/javascript'></script>
	<!-- / jquery mobile events (for touch and slide) -->
	<script
		src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/mobile_events/jquery.mobile-events.min.js'
		type='text/javascript'></script>
	<!-- / jquery migrate (for compatibility with new jquery) -->
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/jquery/jquery-migrate.min.js'
		type='text/javascript'></script>
	<!-- / jquery ui -->
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/jquery_ui/jquery-ui.min.js'
		type='text/javascript'></script>
	<!-- / bootstrap -->
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/bootstrap/bootstrap.min.js'
		type='text/javascript'></script>
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/flot/excanvas.js'
		type='text/javascript'></script>
	<!-- / sparklines -->
	<script
		src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/sparklines/jquery.sparkline.min.js'
		type='text/javascript'></script>
	<!-- / flot charts -->
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/flot/flot.min.js'
		type='text/javascript'></script>
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/flot/flot.resize.js'
		type='text/javascript'></script>
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/flot/flot.pie.js'
		type='text/javascript'></script>
	<!-- / bootstrap switch -->
	<script
		src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/bootstrap_switch/bootstrapSwitch.min.js'
		type='text/javascript'></script>
	<!-- / fullcalendar -->
	<script
		src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/fullcalendar/fullcalendar.min.js'
		type='text/javascript'></script>
	<!-- / datatables -->
	<script
		src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/datatables/jquery.dataTables.min.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/datatables/jquery.dataTables.columnFilter.js'
		type='text/javascript'></script>
	<!-- / wysihtml5 -->
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/common/wysihtml5.min.js'
		type='text/javascript'></script>
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/common/bootstrap-wysihtml5.js'
		type='text/javascript'></script>
	<!-- / select2 -->
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/select2/select2.js'
		type='text/javascript'></script>
	<!-- / color picker -->
	<script
		src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/bootstrap_colorpicker/bootstrap-colorpicker.min.js'
		type='text/javascript'></script>
	<!-- / mention -->
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/mention/mention.min.js'
		type='text/javascript'></script>
	<!-- / input mask -->
	<script
		src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/input_mask/bootstrap-inputmask.min.js'
		type='text/javascript'></script>
	<!-- / fileinput -->
	<script
		src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/fileinput/bootstrap-fileinput.js'
		type='text/javascript'></script>
	<!-- / modernizr -->
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/modernizr/modernizr.min.js'
		type='text/javascript'></script>
	<!-- / retina -->
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/retina/retina.js'
		type='text/javascript'></script>
	<!-- / fileupload -->
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/fileupload/tmpl.min.js'
		type='text/javascript'></script>
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/fileupload/load-image.min.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/fileupload/canvas-to-blob.min.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/fileupload/jquery.iframe-transport.min.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/fileupload/jquery.fileupload.min.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/fileupload/jquery.fileupload-fp.min.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/fileupload/jquery.fileupload-ui.min.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/fileupload/jquery.fileupload-init.js'
		type='text/javascript'></script>
	<!-- / timeago -->
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/timeago/jquery.timeago.js'
		type='text/javascript'></script>
	<!-- / slimscroll -->
	<script
		src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/slimscroll/jquery.slimscroll.min.js'
		type='text/javascript'></script>
	<!-- / autosize (for textareas) -->
	<script
		src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/autosize/jquery.autosize-min.js'
		type='text/javascript'></script>
	<!-- / charCount -->
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/charCount/charCount.js'
		type='text/javascript'></script>
	<!-- / validate -->
	<script
		src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/validate/jquery.validate.min.js'
		type='text/javascript'></script>
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/validate/additional-methods.js'
		type='text/javascript'></script>
	<!-- / naked password -->
	<script
		src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/naked_password/naked_password-0.2.4.min.js'
		type='text/javascript'></script>
	<!-- / nestable -->
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/nestable/jquery.nestable.js'
		type='text/javascript'></script>
	<!-- / tabdrop -->
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/tabdrop/bootstrap-tabdrop.js'
		type='text/javascript'></script>
	<!-- / jgrowl -->
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/jgrowl/jquery.jgrowl.min.js'
		type='text/javascript'></script>
	<!-- / bootbox -->
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/bootbox/bootbox.min.js'
		type='text/javascript'></script>
	<!-- / inplace editing -->
	<script
		src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/xeditable/bootstrap-editable.min.js'
		type='text/javascript'></script>
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/xeditable/wysihtml5.js'
		type='text/javascript'></script>
	<!-- / ckeditor -->
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/ckeditor/ckeditor.js'
		type='text/javascript'></script>
	<!-- / filetrees -->
	<script
		src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/dynatree/jquery.dynatree.min.js'
		type='text/javascript'></script>
	<!-- / datetime picker -->
	<script
		src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/bootstrap_datetimepicker/bootstrap-datetimepicker.js'
		type='text/javascript'></script>
	<!-- / daterange picker -->
	<script
		src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/bootstrap_daterangepicker/moment.min.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/bootstrap_daterangepicker/bootstrap-daterangepicker.js'
		type='text/javascript'></script>
	<!-- / max length -->
	<script
		src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/bootstrap_maxlength/bootstrap-maxlength.min.js'
		type='text/javascript'></script>
	<!-- / dropdown hover -->
	<script
		src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/bootstrap_hover_dropdown/twitter-bootstrap-hover-dropdown.min.js'
		type='text/javascript'></script>
	<!-- / slider nav (address book) -->
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/slider_nav/slidernav-min.js'
		type='text/javascript'></script>
	<!-- / fuelux -->
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/plugins/fuelux/wizard.js'
		type='text/javascript'></script>
	<!-- / flatty theme -->
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/nav.js' type='text/javascript'></script>
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/tables.js' type='text/javascript'></script>
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/theme.js' type='text/javascript'></script>
	<!-- / demo -->
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/demo/jquery.mockjax.js'
		type='text/javascript'></script>
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/demo/inplace_editing.js'
		type='text/javascript'></script>
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/demo/charts.js' type='text/javascript'></script>
	<script src='${pageContext.request.contextPath }/views/assets/javascripts/demo/demo.js' type='text/javascript'></script>
<!--  自定义js-->
<script type="text/javascript" src="${pageContext.request.contextPath}/views/admin/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/views/admin/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/views/admin/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/views/admin/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/views/plugins/webuploader/webuploader.js"></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/views/admin/js/roomDataTable.js'></script>
</body>
</html>