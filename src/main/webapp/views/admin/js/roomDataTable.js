var uploader;
$(function(){
	//创建datatable
	$("#roomDatatable").DataTable({
		"select": true,
        "processing": true,//数据加载时显示进度条
        "searching": false,//启用搜索功能
        "serverSide": true,//启用服务端分页（这是使用Ajax服务端的必须配置）
        "ajax": {
	        "url": "/booking/room/showPage",
	        "type": "POST",
	        "data": function (d) {
	            d.pageNo = $("#roomDatatable").DataTable().page();//获取当前页码
	            var key = $("#search").val();//获取搜索框关键字
	            d.extraSerach=key;//查询条件
	        }
	    },
	    "dom": 'l<"right"B>rtip',//自定义文档对象，因为使用了自定义button,B代表Button,right是绑定在button上从classs，已经在showPage.jsp页面定义
	    //自定义button,实现添加用户、批量删除等操作，其中添加用户使用bootstrap的模态框实现（模态框在showPage.jsp页面配置，使用模态框时最好将其隐藏起来，可以解决引入模态框时影响页面其他布局焦点消失的问题）
	    "buttons": [
            {
                text: '添加房间',
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
                				url :"/booking/room/deleteByIds",
                				type: "POST",
                				traditional: true,
                				contentType: "application/json",
                				data:JSON.stringify(ids),
                				success: function(data){
                					var table = $('#roomDatatable').DataTable();
                					table.draw(false);
                					$('#checkAll').prop("checked",false);
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
            {"data": "rid"},
            {"data": "rname"},
            {"data": "type"},
            {"data": "info"},
            {"data": "equipment"},
            {"data": "price"},
            {"data": "null","render":function (data, type, full, meta) {
            	var content="<td> <div class='text-left'>";
            	content+="<a class='btn btn-default  btn-mini' onclick='fnShowPictures(this)'><i class='fa fa-picture-o' aria-hidden='true''>查看/更新图片</i></a>";
            	content+="</div></td>";
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
        "aLengthMenu": [[5, 10, 15], [5, 10, 15]],//设置每页显示数据条数的下拉选项
        'iDisplayLength': 5, //每页初始显示5条记录
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
    	var table = $('#roomDatatable').DataTable();
        table.search(key).draw();//将查询关键字写进datatable的key中
        $('#checkAll').prop("checked",false);
    });
    
    $("#addRoom").click(function(){
    	var rname = $("#newRname").val();
    	var type = $("#newType").val();
    	var info = $("#newInfo").val();
    	var equipment = $("#newEquipment").val();
    	var price = $("#newPrice").val();
    	var data = {"rname":rname,"type":type,"info":info,"equipment":equipment,"price":price};
    	$.ajax({
    		url: "/booking/room/addRoom",
    		type: "POST",
    		data: JSON.stringify(data),
    		contentType: "application/json",
    		dataType: "json",
    		success:function(data){
    			if(data.result=="success"){
    				$('#addWindow').modal('hide');
    				alert("添加房间成功!");
    			}else{
    				alert("添加房间失败!");
    			}
    			var table = $('#roomDatatable').DataTable();
    			table.draw(false);
    		}
    	});
    });
    
    /**
     * 编辑房间后与后台进行交互
     */
    $("#update").click(function(){
    	var rid = $("#rid").val();
    	var rname = $("#rname").val();
    	var type = $("#type").val();
    	var info = $("#info").val();
    	var equipment = $("#equipment").val();
    	var price = $("#price").val();
    	var data = {"rid":rid,"rname":rname,"type":type,"info":info,"equipment":equipment,"price":price};
    	$.ajax({
    		url: "/booking/room/update",
    		type: "POST",
    		data: JSON.stringify(data),
    		dataType: "json",
    		contentType: "application/json",
    		success: function(data) {
    			if(data.result=="success"){
    				console.log("成功");
    				$('#editWindow').modal('hide');
    			}else{
    				console.log("失败");
    			}
    			var table = $('#roomDatatable').DataTable();
    			table.draw(false);
    		}
    	});
    });
    
    //初始化webuploader并返回webuploader对象uploader（全局变量），以便在打开图片窗口时设置自定义参数
	uploader = initWebuploader();
    $('#pictureWindow').on('shown.bs.modal', function () {
    	uploader.refresh();//在图片窗口打开的时候刷新webuploader，解决每次打开上传按钮变大的问题
	});
	
	/**
     * 隐藏上传按钮
     */
    hideCtlBtn();
	/**
	 * 点击上传图片
	 */
	$("#ctlBtn").on('click', function() {
		uploader.upload();  
	});
    
});

/*
 * webuploader上传按钮的隐藏和显示
 */
function showCtlBtn(){
	if($("#thelist").children().length>0){
		$("#ctlBtn").show();
	}else{
		$("#ctlBtn").hide();
	}
}
/*
 * webuploader初始化时隐藏上传按钮
 */
function hideCtlBtn(){
	$("#ctlBtn").hide();
}

/**
 * 编辑房间信息
 * @param obj
 * @returns
 */
function fnEdit(obj){
	var row = $(obj).parents("tr")[0];
	var rowData = $("#roomDatatable").dataTable().fnGetData(row);//获取datatable指定行的所有数据
	$("#editWindow").modal();
	$("#rid").val(rowData.rid);
	$("#rname").val(rowData.rname);
	$("#type").val(rowData.type);
	$("#info").val(rowData.info);
	$("#equipment").val(rowData.equipment);
	$("#price").val(rowData.price);
}


/**
 * 删除单个房间
 * @param obj
 * @returns
 */
function fnDelete(obj){
	var option = confirm("是否确认删除?删除后无法恢复！");
	if(option){
		var id = $(obj).parents("tr").children().eq(1).html();
		var data = {"rid":id};
		$.ajax({
			url :"/booking/room/delete",
			type: "POST",
			contentType: "application/json",
			data: JSON.stringify(data),
			success: function(data){
				var table = $('#roomDatatable').DataTable();
				table.draw(false);//刷新当前页面
			}
		});
	}
}
/**
 * 删除已上传的图片
 * @param obj
 * @returns
 */
function deleteOldPicture(obj){
	var pid = $(obj).parent(".file-div").attr("id");
	var data = {"pid":pid};
	var option = confirm("是否确认删除?删除后无法恢复！");
	if(option){
		$.ajax({
			url: "/booking/room/deletePicture",
			type: "POST",
			data: JSON.stringify(data),
			dataType: "json",
			contentType: "application/json",
			success:function(data){
				fnOldPictures(data.rid);//重新加载上传的图片
			}
		});
	}
}
/**
 * 展示已上传图片
 * @param obj
 * @returns
 */
function fnOldPictures(obj){
	var data = {"rid":obj};
	$.ajax({
		url :"/booking/room/showPictures",
		type: "POST",
		data: JSON.stringify(data),
		dataType: "json",
		contentType: "application/json",
		success: function(data){
			$("#pictures").html("");
			if(data.result=="success"){
				for(var i = 0;i<data.pictures.length;i++){
					$("#pictures").append('<div id="'+data.pictures[i].pid+'" class="file-div file-item thumbnail">' +
			                '<img src="/booking/views/images/rooms/'+data.pictures[i].src+'" style="width:100px;height:100px">'+
			                '<a onclick="deleteOldPicture(this)" class="img-item btn btn-danger  btn-mini"><i class="fa fa-trash" aria-hidden="true">删除</i></a>'+
		            	'</div>');
				}
			}else{
				$("#pictures").html("当前未上传图片");
			}
		}
	});
}

/**
 * 查看/更新房间图片
 * @param obj
 * @returns
 */
function fnShowPictures(obj){
	var row = $(obj).parents("tr")[0];
	var rowData = $("#roomDatatable").dataTable().fnGetData(row);//获取datatable指定行的所有数据
	var rid = rowData.rid;
    $("#pictureWindow").modal();
    fnOldPictures(rid);//加载已上传的图片
    //给uploader设置数据，根据房间号获取图片
    uploader.on('uploadBeforeSend', function (obj, data) {
    	data.rid = rid;
    });
}

function initWebuploader(obj){
	var uploader = WebUploader.create({
	    // swf文件路径
	    swf: '/booking/views/plugins/webuploader/Uploader.swf',
	    // 文件接收服务端。
	    server: '/booking/room/upload',
	    //上传方式
	    method:'POST',
	    //自定义参数
	    formData: {  
	        rid: obj  
	    },
	    //是否自动上传,默认为false
	    auto: false,
	    //去除重复图片
	    duplicate: true,
	    //单个文件大小上限
	    fileSingleSizeLimit: 2048000,
	    // 选择文件的按钮。可选。
	    // 内部根据当前运行是创建，可能是input元素，也可能是flash.
	    pick: '#filePicker',
	    // 不压缩image, 默认如果是jpeg，文件上传前会压缩一把再上传！
	    resize: false,
	   //只接收图片文件
	    accept: {
	        title: 'Images',
	        extensions: 'gif,jpg,jpeg,bmp,png',
	        mimeTypes: 'image/*'
	    }
	});
	// 当有文件被添加进队列的时候
	uploader.on( 'fileQueued', function( file ) {
		var $li = $(
	            '<div id="' + file.id + '" class="file-div file-item thumbnail" name="file-item">' +
	                '<img>' +
	                "<a class='img-item btn btn-danger  btn-mini'><i class='fa fa-trash' aria-hidden='true'>取消</i></a>"+
	            '</div>'
	            ),
	    $img = $li.find('img');


	    // $list为容器jQuery实例
		$("#thelist").append( $li );
		//生成预览图片
		uploader.makeThumb( file, function( error, src ) {
		        $img.attr( 'src', src );
		    }, 100, 100 );
		//展示上传按钮
		showCtlBtn();
		//删除某张图片
		$("#thelist").on("click", ".img-item", function ()
        {
			//获取file-div的id
            var fileId = $(this).parent().attr("id");
            //删除该图片
            uploader.removeFile(uploader.getFile(fileId));//从队列中移除
            $(this).parent().remove();//移除预览图
			showCtlBtn();
        });
	});
	/**
     * 验证文件格式以及文件大小
     */
    uploader.on("error", function (type) {
        if (type == "Q_TYPE_DENIED") {
            alert("请上传JPG、PNG、GIF、BMP格式文件");
        } else if (type == "Q_EXCEED_SIZE_LIMIT") {
        	alert("文件大小不能超过2M");
        }else{
        	alert("上传出错！请检查后重新上传！错误代码"+type);
        }
    });
 // 文件上传失败，显示上传出错。
    uploader.on('uploadError', function (file) {
        var $li = $('#' + file.id),
        $error = $li.find('div.error');

        // 避免重复创建
        if (!$error.length) {
            $error = $('<div class="error"></div>').appendTo($li);
        }
        $error.text('上传失败');
    });

    // 上传成功删除图片(file是一张上传图片，response是后台响应的数据)
    uploader.on('uploadSuccess', function (file,response) {
    	//删除该图片
    	$( '#'+file.id ).remove();
    	uploader.removeFile(uploader.getFile(file.id));//从队列中移除
		showCtlBtn();//控制上传按钮的显示
		fnOldPictures(response.rid);//重新加载已上传的图片
    });
    
    return uploader;//返回uploader对象
}