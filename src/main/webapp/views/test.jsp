<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-datatable.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-responsive.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/js/mytables.js'></script>
<script type="text/javascript">
	alert("${pageContext.request.contextPath}");
</script>
</head>
<body>
	<div class="row-fluid">
            <!-- /.panel-heading class="table table-striped table-bordered table-hover"  -->
            <div class="panel-body">
                    <table class="table table-striped table-bordered table-hover table-checkable order-column" style="width: 100%" id="all_TabGrid">
                            <thead>
                            <th>
                                <input type='checkbox' class='group-checkable' data-set='#all_TabGrid .checkboxes' />
                            </th>
                            <th>
                                <div class="btn-group">
                                    <button class="btn  btn-default btn-sm dropdown-toggle" type="button" data-toggle="dropdown">批操作
                                        <i class="fa fa-angle-down"></i>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li>
                                            <a href="javascript:;">删除</a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">上架</a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">下架</a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">备注</a>
                                        </li>
                                    </ul>
                                </div>
                            </th>
                            <th>产品名称</th>
                            <th>类别</th>
                            <th>品牌</th>
                            <th>产品状态</th>
                            <th>创建时间</th>
                            <th>最后更新</th>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
            </div>
            <!-- /.panel-body -->
        </div>
</body>
</html>