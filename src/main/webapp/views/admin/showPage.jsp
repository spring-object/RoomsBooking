<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/views/plugins/font-awesome/css/font-awesome.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/css/jquery.dataTables.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/css/bootstrap-responsive.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/css/bootstrap.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/css/buttons.dataTables.min.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/css/editor.dataTables.min.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/views/admin/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/views/admin/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/views/admin/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/views/admin/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/views/admin/js/dataTables.editor.min.js"></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/views/admin/js/myDataTable.js'></script>
<style type="text/css">
.right{
	float:right;
}
.hid{
	display:none;
}
</style>
</head>
<body>
<div class="modal fade hid" id="editorWindow" tabindex="0" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">编辑用户</h4>
            </div>
            <div class="modal-body">
            	<div class="form-horizontal">
            		<div class="form-group">
	                  <label for="uid" class="col-sm-2 control-label">ID：</label>
	                  <div class="col-sm-10">
	                    <input class="form-control" id="uid" type="text" readonly="readonly">
	                  </div>
	                </div>
	                <br>
	                <div class="form-group">
	                  <label for="uname" class="col-sm-2 control-label">用户名：</label>
	                  <div class="col-sm-10">
	                    <input class="form-control" id="uname" type="text">
	                  </div>
	                </div>
					<br>          			
	                <div class="form-group">
	                  <label for="uicon" class="col-sm-2 control-label">用户头像：</label>
	                  <div class="col-sm-10">
	                  	<input class="form-control" id="upload" type="file" accept="image/gif,image/jpeg,image/jpg,image/png,image/svg" style="display:none">
	                  	<img src="#" id="uicon" width="100px" height="80px" style="cursor:pointer">
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
	                  <label for="email" class="col-sm-2 control-label">邮箱：</label>
	                  <div class="col-sm-10">
	                    <input class="form-control" id="email" type="text">
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
	                  <label for="enable" class="col-sm-2 control-label">状态：</label>
	                  <div class="col-sm-10">
	                    <input class="form-control" id="enable" type="text" readonly="readonly">
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
                <h4 class="modal-title" id="myModalLabel">添加用户</h4>
            </div>
            <div class="modal-body">
            	<div class="form-horizontal">
	                <div class="form-group">
	                  <label for="uname" class="col-sm-2 control-label">用户名：</label>
	                  <div class="col-sm-10">
	                    <input class="form-control" id="uname" type="text">
	                  </div>
	                </div>
					<br>          			
	                <div class="form-group">
	                  <label for="uicon" class="col-sm-2 control-label">用户头像：</label>
	                  <div class="col-sm-10">
	                  	<input class="form-control" id="upload" type="file">
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
	                  <label for="email" class="col-sm-2 control-label">邮箱：</label>
	                  <div class="col-sm-10">
	                    <input class="form-control" id="email" type="text">
	                  </div>
	                </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary">添加</button>
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
                          <table id="myDatatable" class='table table-bordered table-striped' style='margin-bottom:0;'>
                              <thead>
                                  <tr>
                                      <th><input type="checkbox" id="checkAll" name="checkAll" class='group-checkable' /></th>
                                      <th>
                                          ID
                                      </th>
                                      <th>
                                          用户名
                                      </th>
                                      <th>
                                          用户头像
                                      </th>
                                      <th>
                                          联系电话
                                      </th>
                                      <th>
                                          邮箱
                                      </th>
                                      <th>
                                          创建时间
                                      </th>
                                      <th>
                                          状态
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
</body>
</html>