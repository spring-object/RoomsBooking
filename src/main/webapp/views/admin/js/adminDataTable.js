$(function() {
/**
 * DataTable属性配置以及生成datatable
 */	
    $('#myDatatable').DataTable({
    	"select": true,
        "processing": true,//数据加载时显示进度条
        "searching": false,//启用搜索功能
        "serverSide": true,//启用服务端分页（这是使用Ajax服务端的必须配置）
        "ajax": {
	        "url": "/booking/admin/showPage",
	        "type": "POST",
	        "data": function (d) {
	            d.pageNo = $("#myDatatable").DataTable().page();//获取当前页码
	            var key = $("#search").val();//获取搜索框关键字
	            d.extraSerach=key;//查询条件
	        }
	    },
	    "dom": 'l<"right"B>rtip',//自定义文档对象，因为使用了自定义button,B代表Button,right是绑定在button上从classs，已经在showPage.jsp页面定义
	    //自定义button,实现添加用户、批量删除等操作，其中添加用户使用bootstrap的模态框实现（模态框在showPage.jsp页面配置，使用模态框时最好将其隐藏起来，可以解决引入模态框时影响页面其他布局焦点消失的问题）
	    "buttons": [
            {
                text: '添加用户',
                action: function ( e, dt, node, config ) {
                	$("#addWindow").modal();//启用模态框，关闭调用$("#addWindow").modal(false)
                }
            },
            {
                text: '批量删除',
                action: function ( e, dt, node, config ) {
                	var strIds=[];
                	$("input:checked").each(function(){
                		if($(this).attr("name")!="checkAll"){
                			strIds.push($(this).parents("tr").children().eq(1).html());//获取选中的用户                 			
                		}
                	});
                	var strIds = strIds.join(",");//将选中的用户拼成?,?,?的格式
                	var ids = {"ids":strIds};
                	if(strIds!=null&&strIds.trim()!=""){
                		var option = confirm("是否确认删除?删除后无法恢复！");
                		if(option){
                			$.ajax({
                				url :"/booking/admin/deleteByIds",
                				type: "POST",
                				traditional: true,
                				contentType: "application/json",
                				data:JSON.stringify(ids),
                				success: function(data){
                					var table = $('#myDatatable').DataTable();
                					table.draw(false);
                				}
                			});
                		}
                	}else{
                		alert("请选择要删除的用户!");
                	}
                }
            }
        ],
        "columns": [
        	/**
        	 * 设置列，必须跟后端传来的数据名保持一致（null代表没有对应数据），需要特别操作时给数据绑定函数，
        	 * "render":function (data, type, full, meta)，其中的data就是对应列从后台传来的数据，直接使用即可
        	 */
        	{"data":"null","render":function (data, type, full, meta) {
	            return "<td> <input type='checkbox' name='checkbox' class='checkboxes' /><td>";
	        }},
            {"data": "uid"},
            {"data": "uname"},
            {"data": "uicon","render":function (data, type, full, meta){
            	if(data){
            		var content="<td><img width='60px' height='60px' src=/booking/views/admin/images/userIcon/"+data+"></td>";
            	}else{
            		var content="<td><img width='60px' height='60px' src='#'></td>";
            	}
	            return content;
            }},
            {"data": "telephone"},
            {"data": "email"},
            {"data": "create_time"},
            {"data": "enable","render":function (data, type, full, meta) {
            	var content="";
            	if(data){
            		content+="<td><span class='label label-success'>有效</span></td>";
            	}else{
            		content+="<td><span class='label label-default'>无效</span></td>";
            	}
	            return content;
	        }},
            {"data": "enable","render":function (data, type, full, meta) {
            	var content="<td> <div class='text-left'>";
            	if(data){
            		content+="<a class='btn btn-warning btn-mini' onclick='fnChangeAble(this)'><i class='fa fa-times-circle' aria-hidden='true''>禁用</i></a>";
            	}else{
            		content+="<a class='btn btn-success btn-mini' onclick='fnChangeAble(this)'><i class='fa fa-check-circle' aria-hidden='true''>启用</i></a>";
            	}
            	content+="<a class='btn btn-primary  btn-mini' onclick='fnEdit(this)'><i class='fa fa-cog' aria-hidden='true''>编辑</i></a>";
            	content+="<a class='btn btn-danger  btn-mini' onclick='fnDelete(this)'><i class='fa fa-trash' aria-hidden='true'>删除</i></a>";
            	content+="</div></td>";
            	return content;
	        }},
        ],
        "info":true, //分页信息提示等等
        "paging":   true,
        "pagingType":   "full_numbers",
        "bLengthChange": true, //开关，是否显示每页显示多少条数据的下拉框
        "aLengthMenu": [[1, 2, 10], [1, 2, 10]],//设置每页显示数据条数的下拉选项
        'iDisplayLength': 1, //每页初始显示5条记录
        'bFilter': false,  //是否使用内置的过滤功能（是否去掉搜索框）
        "bSort": false, //是否可排序
        //"aoColumnDefs": [ { "bSortable": false, "aTargets": [ 0 ] }],//进制某列排序
       // "aaSorting": [[1, "asc"]],//指定某列按照什么规则排序
        "oLanguage":{  //语言转换
            "sProcessing": "处理中...",
            "sLengthMenu": "显示 _MENU_ 项结果",
            "sZeroRecords": "没有匹配结果",
            "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
            "sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",
            "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
            "sInfoPostFix": "",
            "sSearch": "搜索:",
            "sUrl": "",
            "sEmptyTable": "表中数据为空",
            "sLoadingRecords": "载入中...",
            "sInfoThousands": ",",
            "oPaginate": {
            "sFirst": "  首页  ",
            "sPrevious": "  上一页  ",
            "sNext": "   下一页  ",
            "sLast": "  末页  "
            },
            "oAria": {
            "sSortAscending": ": 以升序排列此列",
            "sSortDescending": ": 以降序排列此列"
            }
        }
    });
    
    /**
     * 全选和全不选
     */
    $('#checkAll').change(function () {
	    var checked = $(this).prop("checked");
	    $("input[name='checkbox']").each(function() {
	    	$(this).prop("checked", checked);
	    });
	}); 
    /**
     * 获取搜索框关键字并将其写进datatable中的key中
     */
    $("#searchBtn").click(function(){
    	var key = $("#search").val();
    	var table = $('#myDatatable').DataTable();
        table.search(key).draw();//将查询关键字写进datatable的key中
    });
    /**
     * 编辑用户时实现点击图片上传图片，同时能先预览
     */
    $("#uicon").click(function(){
    	$("#upload").click();
    	$("#upload").change(function(){
    		var url = getImageUrl(this.files[0]);
    		if(url){
    			$("#uicon").attr("src",url);
    		}
    	})
    });
    /**
     * 添加用户时实现点击图片上传图片，同时能先预览
     */
    $("#newUicon").click(function(){
    	$("#newUpload").click();
    	$("#newUpload").change(function(){
    		var url = getImageUrl(this.files[0]);
    		if(url){
    			$("#newUicon").attr("src",url);
    		}
    	})
    });
    
    /**
     * 添加用户后与后台进行交互
     */
    $("#addUser").click(function(){
    	var uname = $("#newUname").val();
    	var file = $("#newUpload")[0].files[0];
    	var telephone = $("#newTelephone").val();
    	var email = $("#newEmail").val();
    	var data = new FormData();//通过formdata封装数据
    	data.append("uname",uname);
    	data.append("telephone",telephone);
    	data.append("email",email);
    	//判断是否有文件上传
    	if(file){
    		data.append("isMultipart",true);
    	}else{
    		data.append("isMultipart",false);
    	}
    	data.append("file",file);
    	$.ajax({
    		url: "/booking/user/register",
    		type: "POST",
    		data: data,
    		dataType: "json",
    		processData: false,//使用formdata传递数据时必须设置processData: false
    		contentType: false,//使用formdata传递数据时必须设置contentType: false
    		success: function(data) {
    			if(data.result=="success"){
    				alert("添加用户成功!");
    				$('#editorWindow').modal('hide');
    			}else{
    				alert("添加用户失败!");
    			}
    			var table = $('#myDatatable').DataTable();
    			table.draw(false);
    		}
    	});
    });
    
    /**
     * 编辑用户后与后台进行交互
     */
    $("#update").click(function(){
    	var uid = $("#uid").val();
    	var uname = $("#uname").val();
    	var file = $("#upload")[0].files[0];
    	var telephone = $("#telephone").val();
    	var email = $("#email").val();
    	var data = new FormData();//通过formdata封装数据
    	data.append("uid",uid);
    	data.append("uname",uname);
    	data.append("telephone",telephone);
    	data.append("email",email);
    	//判断是否有文件上传
    	if(file){
    		data.append("isMultipart",true);
    	}else{
    		data.append("isMultipart",false);
    	}
    	data.append("file",file);
    	$.ajax({
    		url: "/booking/admin/update",
    		type: "POST",
    		data: data,
    		dataType: "json",
    		processData: false,//使用formdata传递数据时必须设置processData: false
    		contentType: false,//使用formdata传递数据时必须设置contentType: false
    		success: function(data) {
    			if(data.result=="success"){
    				console.log("成功");
    				$('#editorWindow').modal('hide');
    			}else{
    				console.log("失败");
    			}
    			var table = $('#myDatatable').DataTable();
    			table.draw(false);
    		}
    	});
    });
});
/**
 * 不同浏览器获取上传文件url，此处不是文件的真正上传url,只是为了实现上传文件在线预览
 * @param file
 * @returns
 */
function getImageUrl(file){
	var url = null ;
	if (window.createObjectURL!=undefined) { // basic
		url = window.createObjectURL(file) ;
	} else if (window.URL!=undefined) { // mozilla(firefox)
		url = window.URL.createObjectURL(file) ;
	} else if (window.webkitURL!=undefined) { // webkit or chrome
		url = window.webkitURL.createObjectURL(file) ;
	}
	return url ;
}
/**
 * 修改用户状态
 * @param obj
 * @returns
 */
function fnChangeAble(obj){
	var enable = $(obj).find(".fa").html();
	var newEnable = false;
	if(enable=="启用"){
		newEnable = true;
	}else{
		newEnable = false;
	}
	var id = $(obj).parents("tr").children().eq(1).html();
	var data = {"uid":id,"newEnable":newEnable};
	$.ajax({
		url :"/booking/admin/changeEnable",
		type: "POST",
		contentType: "application/json",
		data: JSON.stringify(data),
		dataType: "json",
		success: function(data){
			if(data.result=="success"){
				console.log("成功");
			}else{
				console.log("失败");
			}
			var table = $('#myDatatable').DataTable();
			table.draw(false);//刷新当前页面
		}
	});
}
/**
 * 编辑用户信息时显示当前用户信息
 * @param obj
 * @returns
 */
function fnEdit(obj){
	var row = $(obj).parents("tr")[0];
	var rowData = $("#myDatatable").dataTable().fnGetData(row);//获取datatable指定行的所有数据
	$("#editorWindow").modal();//初始化模态框
	$("#uid").val(rowData.uid);
	$("#uname").val(rowData.uname);
	if(rowData.uicon!=null){
		$("#uicon").attr("src","/booking/views/admin/images/userIcon/"+rowData.uicon);
	}else{
		$("#uicon").attr("src","#");
	}
	$("#telephone").val(rowData.telephone);
	$("#email").val(rowData.email);
	$("#create_time").val(rowData.create_time);
	if(rowData.enable){
		$("#enable").val("有效");
	}else{
		$("#enable").val("无效");
	}
}
/**
 * 删除单个用户
 * @param obj
 * @returns
 */
function fnDelete(obj){
	var option = confirm("是否确认删除?删除后无法恢复！");
	if(option){
		var id = $(obj).parents("tr").children().eq(1).html();
		var data = {"uid":id};
		$.ajax({
			url :"/booking/admin/delete",
			type: "POST",
			contentType: "application/json",
			data: JSON.stringify(data),
			success: function(data){
				var table = $('#myDatatable').DataTable();
				table.draw(false);//刷新当前页面
			}
		});
	}
}