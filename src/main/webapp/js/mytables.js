$(function() {
    $('#example1').DataTable({
        "processing": true,//数据加载时显示进度都没条
        "searching": false,//启用搜索功能
        "serverSide": true,//启用服务端分页（这是使用Ajax服务端的必须配置）
        "ajax": {
            "url": "/RoomsBooking/admin/test",
            //"dataType" : 'json',
            //"type" : "POST",
            // "data": function (d) {
            //     var info = $('#myDatatable').DataTable().page.info();
            //     d.pageNo = info.page;
            //     var xh = $('#xsjb_xh').val();
            //     //指定检索参数名称，后台参数名为extraSerach
            //     d.extraSerach=xh;
            // }
        },
        "columns": [
            {"data": "uid"},
            {"data": "uname"},
            {"data": "uicon"},
            {"data": "telphone"},
            {"data": "email"},
            {"data": "create_time"},
            {"data": "enable"}
        ],
        "bLengthChange": false, //开关，是否显示每页显示多少条数据的下拉框
        "aLengthMenu": [[5, 10, 15, -1], [5, 10, 15, "所有"]],//设置每页显示数据条数的下拉选项
        'iDisplayLength': 5, //每页初始显示5条记录
        'bFilter': false,  //是否使用内置的过滤功能（是否去掉搜索框）
        "bInfo": true, //开关，是否显示表格的一些信息(当前显示XX-XX条数据，共XX条)
        "bPaginate": true, //开关，是否显示分页器
        "bSort": true, //是否可排序 
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
});