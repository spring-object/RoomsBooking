$(function(){
	var uploader = WebUploader.create({
	    // swf文件路径
	    swf: '/booking/views/plugins/webuploader/Uploader.swf',
	    // 文件接收服务端。
	    server: '/booking/admin/test',
	    //上传方式
	    method:'POST',
	    //是否自动上传,默认为false
	    auto: false,
	    //去除重复图片
	    duplicate: true,
	    //单个文件大小上限
	    fileSingleSizeLimit: 204800,
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
 * 上传按钮的隐藏和显示
 */
function showCtlBtn(){
	if($("#thelist").children().length>0){
		$("#ctlBtn").show();
	}else{
		$("#ctlBtn").hide();
	}
}
/*
 * 初始化时隐藏上传按钮
 */
function hideCtlBtn(){
	$("#ctlBtn").hide();
}
