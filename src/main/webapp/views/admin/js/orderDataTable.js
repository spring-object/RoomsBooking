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
	        "url": "/booking/order/listOrder",
	        "type": "POST",
	        "data": function (d) {
	            d.pageNo = $("#myDatatable").DataTable().page();//获取当前页码
	            var key = $("#search").val();//获取搜索框关键字
	            d.extraSerach=key;//查询条件
	        }
	    },
	    "dom": 'l<"right"B>rtip',//自定义文档对象，因为使用了自定义button,B代表Button,right是绑定在button上从classs，已经在listOrder.jsp页面定义
	    //自定义button,实现批量删除操作
	    "buttons": [
            {
                text: '批量删除',
                action: function ( e, dt, node, config ) {
                	var strIds=[];
                	$("input:checked").each(function(){
                		if($(this).attr("name")!="checkAll"){
                			strIds.push($(this).parents("tr").children().eq(1).html());//获取选中的订单             			
                		}
                	});
                	var strIds = strIds.join(",");//将选中的订单拼成?,?,?的格式
                	var ids = {"ids":strIds};
                	if(strIds!=null&&strIds.trim()!=""){
                		var option = confirm("是否确认删除?删除后无法恢复！");
                		if(option){
                			$.ajax({
                				url :"/booking/order/deleteByIds",
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
                		alert("请选择要删除的订单!");
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
            {"data": "oid"},
            {"data": "hotel.hname"},
            {"data": "room.rname"},
            {"data": "rcount","render":function (data, type, full, meta) {
            	return "<td>x" + data + "</td>";
            }},
            {"data": "rprice"},
            {"data": "create_time"},
            {"data": "totalPrice"},
            {"data": "status","render":function (data, type, full, meta) {
            	var content="";
            	if(data == 0) {
            		content += "<td><span class='btn btn-success'>已完成</span></td>"
            	}else if(data == 1) {
            		content += "<td><span class='btn btn-warning'>未使用</span></td>"
            	}else {
            		content += "<td><span class='btn btn-danger'>待付款</span></td>"
            	}
            	return content;
            }},
            {"data": "null","render":function (data, type, full, meta) {
            	var content="<td> <div class='text-left'>";
            	
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
        "aLengthMenu": [[5, 10, 20], [5, 10, 20]],//设置每页显示数据条数的下拉选项
        'iDisplayLength': 10, //每页初始显示10条记录
        'bFilter': false,  //是否使用内置的过滤功能（是否去掉搜索框）
        "bSort": false, //是否可排序 
        "aoColumnDefs": [{"bSortable": false, "aTargets": [0,9]}],
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
     * 编辑订单后与后台进行交互
     */
    $("#update").click(function(){
    	var oid = $("#oid").val();
    	var rcount = $("#rcount").val();
    	var telephone = $("#telephone").val();
    	var status = $("#status").val();
    	var data = new FormData();//通过formdata封装数据
    	data.append("oid",oid);
    	data.append("rcount",rcount);
    	data.append("status",status);
    	data.append("telephone",telephone);
    	$.ajax({
    		url: "/booking/order/update",
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
    /**
     * 动态更改总价
     */
    $("#rcount").change(function(){
    	var rcount = $("#rcount").val();
    	var rprice = $("#rprice").val();
    	$("#totalPrice").html(rcount * rprice);
    });
});

/**
 * 编辑订单信息时显示当前用户信息
 * @param obj
 * @returns
 */
function fnEdit(obj){
	var row = $(obj).parents("tr")[0];
	var rowData = $("#myDatatable").dataTable().fnGetData(row);//获取datatable指定行的所有数据
	$("#editWindow").modal();//初始化模态框
	$("#oid").val(rowData.oid);
	$("#hname").val(rowData.hotel.hname);
	$("#rname").val(rowData.room.rname);
	$("#rtype").val(rowData.room.type);
	$("#rcount").val(rowData.rcount);
	$("#rprice").val(rowData.rprice);
	$("#uname").val(rowData.user.uname);
	$("#telephone").val(rowData.user.telephone);
	$("#create_time").val(rowData.create_time);
	$("#start_time").val(rowData.start_time);
	$("#end_time").val(rowData.end_time);
	$("#status").val(rowData.status);
	$("#totalPrice").html(rowData.totalPrice);
}

/**
 * 删除一个订单
 * @param obj
 * @returns
 */
function fnDelete(obj){
	var option = confirm("是否确认删除?删除后无法恢复！");
	if(option){
		var id = $(obj).parents("tr").children().eq(1).html();
		var data = {"oid":id};
		$.ajax({
			url :"/booking/order/deleteAOrder",
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