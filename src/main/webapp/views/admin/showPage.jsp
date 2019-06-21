<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/css/bootstrap-datatable.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/css/bootstrap-responsive.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/css/bootstrap.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/views/admin/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/views/admin/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/views/admin/js/bootstrap.min.js"></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/views/admin/js/myDataTable.js'></script>
</head>
<body>
<div class='row-fluid'>
          <div class='span12 box bordered-box orange-border' style='margin-bottom:0;'>
              <div class='box-content box-no-padding'>
                  <div class='responsive-table'>
                      <div class='scrollable-area'>
                          <table id="myDatatable" class='table table-bordered table-striped' style='margin-bottom:0;'>
                              <thead>
                                  <tr>
                                      <th><input type="checkbox" id="checkAll" name="checkAll" class='group-checkable' data-set='#all_TabGrid .checkboxes' /></th>
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