$(function(){
	var allltable = $("#all_TabGrid");
	allltable.DataTable({
	    ajax: {
	        "url": "/booking/admin/showPage",
	        "type": "POST",
	        "data": function (d) {
	            d.pageNo = $("#all_TabGrid").DataTable().page()+1;
	            d.NAME = $("#searchStoreVal").val();
	            d.LINKMOBILE = $("#searchStoreTelVal").val(),
	            d.CODE = $("#searchStoreCodeVal").val();
	        }
	    },
	    info:true,
	    //"iDisplayLength" : 40,

	    "paging":   true,
	    "ordering": false,
	    //"deferRender": true,
	    "columns": [
	        {"data":"ID","render":function (data, type, full, meta) {
	            return "<input type='checkbox' class='checkboxes' data-set='#all_TabGrid .checkboxes' /> </th>";
	        }},
	        {"data": "null","render":function (data, type, full, meta) {
	            return "<img src='/foodClient/img/logo.png' style='width: 20px;height: 20px;'>";
	        }},
	        {"data": "NAME"},
	        {"data": "PRODUCTKINDNAME"},
	        {"data": "BRANDNAME"},
	        {"data": "STATENAME"},
	        {"data": "FORMATEDATE"},
	        {"data": "FORMATELASTUPDATE"}
	    ],
	    "processing": true,
	    "serverSide": true,
	    "searching": false,
	    //"pagingType":   "simple_numbers",
	    "dom": 'rt<"bottom"iflp<"clear">>',
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
	        "sFirst": "首页",
	        "sPrevious": "上一页",
	        "sNext": "下一页",
	        "sLast": "末页"
	        },
	        "oAria": {
	        "sSortAscending": ": 以升序排列此列",
	        "sSortDescending": ": 以降序排列此列"
	        }
	    }
	});

	var alltableWrapper = jQuery('#all_TabGrid_wrapper');

	allltable.find('.group-checkable').change(function () {
	    var set = jQuery(this).attr("data-set");
	    var checked = jQuery(this).is(":checked");
	    jQuery(set).each(function () {
	        if (checked) {
	            $(this).prop("checked", true);
	            $(this).parents('tr').addClass("active");
	        } else {
	            $(this).prop("checked", false);
	            $(this).parents('tr').removeClass("active");
	        }
	    });
	    jQuery.uniform.update(set);
	}); 
});  