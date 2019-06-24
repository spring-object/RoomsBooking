$(function() {   
    $('#myDatatable').DataTable({
    	"select": true,
        "processing": true,//数据加载时显示进度都没条
        "searching": false,//启用搜索功能
        "serverSide": true,//启用服务端分页（这是使用Ajax服务端的必须配置）
        "ajax": {
	        "url": "/booking/admin/showPage",
	        "type": "POST",
	        "data": function (d) {
	            d.pageNo = $("#myDatatable").DataTable().page();
	            var key = $("#search").val();
	            d.extraSerach=key;
	        }
	    },
	    "dom": 'l<"right"B>rtip',
	    "buttons": [
            {
                text: '添加用户',
                action: function ( e, dt, node, config ) {
                	$("#addWindow").modal();
                }
            },
            {
                text: '批量删除',
                action: function ( e, dt, node, config ) {
                	var strIds=[];
                	$("input:checked").each(function(){
                		if($(this).attr("name")!="checkAll"){
                			strIds.push($(this).parents("tr").children().eq(1).html());                     			
                		}
                	});
                	var strIds = strIds.join(",");
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
        "info":true,
        "paging":   true,
        "pagingType":   "full_numbers",
        "bLengthChange": true, //开关，是否显示每页显示多少条数据的下拉框
        "aLengthMenu": [[1, 2, 10], [1, 2, 10]],//设置每页显示数据条数的下拉选项
        'iDisplayLength': 1, //每页初始显示5条记录
        'bFilter': false,  //是否使用内置的过滤功能（是否去掉搜索框）
        "bSort": false, //是否可排序 
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
    

    $('#checkAll').change(function () {
	    var checked = $(this).prop("checked");
	    $("input[name='checkbox']").each(function() {
	    	$(this).prop("checked", checked);
	    });
	}); 
    
    $("#searchBtn").click(function(){
    	var key = $("#search").val();
    	var table = $('#myDatatable').DataTable();
        table.search(key).draw();
    });
    
    $("#uicon").click(function(){
    	$("#upload").click();
    	$("#upload").change(function(){
    		var url = getImageUrl(this.files[0]);
    		if(url){
    			$("#uicon").attr("src",url);
    		}
    	})
    });
    
    $("#update").click(function(){
    	var uid = $("#uid").val();
    	var uname = $("#uname").val();
    	var file = $("#upload")[0].files[0];
    	var telephone = $("#telephone").val();
    	var email = $("#email").val();
    	var data = new FormData();
    	//var commonData = {"uid":uid,"uname":uname,"telephone":telephone,"email":email};
    	//data.append("commonData",commonData);
    	data.append("uid",uid);
    	data.append("uname",uname);
    	data.append("telephone",telephone);
    	data.append("email",email);
    	data.append("file",file);
    	$.ajax({
    		url: "/booking/admin/update",
    		type: "POST",
    		data: data,
    		dataType: "json",
    		processData: false,
    		contentType: false,
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
			table.draw(false);
		}
	});
}
function fnEdit(obj){
	var row = $(obj).parents("tr")[0];
	var rowData = $("#myDatatable").dataTable().fnGetData(row);
	$("#editorWindow").modal();
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
				table.draw(false);
			}
		});
	}
}