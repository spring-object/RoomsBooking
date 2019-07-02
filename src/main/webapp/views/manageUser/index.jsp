<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>用户管理</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
	<meta name="renderer" content="webkit">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<link href="${pageContext.request.contextPath }/views/assets/stylesheets/bootstrap/bootstrap.css" media="all" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/views/assets/stylesheets/light-theme.css" id="color-settings-body-color" media="all" rel="stylesheet" type="text/css" />
 
	<link href="${pageContext.request.contextPath }/views/manageUser/layui/css/layui.css" rel="stylesheet" type="text/css">
  	<link href="${pageContext.request.contextPath }/views/manageUser/layui/css/modules/layer/default/layer.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath }/views/manageUser/layui/css/modules/laydate/default/laydate.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath }/views/manageUser/layui/css/modules/code.css" rel="stylesheet" type="text/css">
	
	<!-- / jquery -->
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/jquery/jquery.min.js" type="text/javascript"></script>
	<!-- / jquery mobile events (for touch and slide) -->
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/mobile_events/jquery.mobile-events.min.js" type="text/javascript"></script>
	<!-- / bootstrap -->
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/bootstrap/bootstrap.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/plugins/flot/excanvas.js" type="text/javascript"></script>
	<!-- / flatty theme -->
	<script src="${pageContext.request.contextPath }/views/assets/javascripts/theme.js" type="text/javascript"></script>
	
	<script src="${pageContext.request.contextPath }/views/manageUser/layui/layui.all.js" charset="utf-8"></script>
	
	<script src="${pageContext.request.contextPath }/views/manageUser/js/index.js" type="text/javascript"></script>
</head>
<body class="contrast-blue "><!--   -->
<input type="hidden" id="projectContextPath" value="${pageContext.request.contextPath }"/>
<header>
    <div class="navbar">
        <div class="navbar-inner">
            <div class="container-fluid">
                <a class="brand" href="#">
                    <i class="icon-home"></i>
                    <span class="hidden-phone">用户管理</span>
                </a>
                <!--<a class="toggle-nav btn pull-left" href="#">
                    <i class="icon-reorder"></i>
                </a>-->
                <ul class="nav pull-right">
                    <li class="dropdown light only-icon">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="icon-adjust"></i>
                        </a>
                        <ul class="dropdown-menu color-settings">
                            <li class="color-settings-body-color">
                                <div class="color-title">主题</div>
                                <a data-change-to="${pageContext.request.contextPath }/views/assets/stylesheets/light-theme.css" href="#">
                                    亮
                                    <small>(默认)</small>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li class="color-settings-contrast-color">
                                <div class="color-title">主题颜色</div>
								<a href="#" data-change-to="contrast-blue"><i class="icon-adjust text-blue"></i>
                                    天蓝色
									<small>(默认)</small>
                                </a>
                                <a href="#" data-change-to="contrast-red"><i class="icon-adjust text-red"></i>
                                    红色
                                </a>
                                <a href="#" data-change-to="contrast-orange"><i class="icon-adjust text-orange"></i>
                                    橙色
                                </a>
                                <a href="#" data-change-to="contrast-purple"><i class="icon-adjust text-purple"></i>
                                    紫色
                                </a>
                                <a href="#" data-change-to="contrast-green"><i class="icon-adjust text-green"></i>
                                    绿色
                                </a>
                                <a href="#" data-change-to="contrast-muted"><i class="icon-adjust text-muted"></i>
                                    浅灰色
                                </a>
                                <a href="#" data-change-to="contrast-fb"><i class="icon-adjust text-fb"></i>
                                    蓝色
                                </a>
                                <a href="#" data-change-to="contrast-dark"><i class="icon-adjust text-dark"></i>
                                    黑色
                                </a>
                                <a href="#" data-change-to="contrast-pink"><i class="icon-adjust text-pink"></i>
                                    粉色
                                </a>
                                <a href="#" data-change-to="contrast-grass-green"><i class="icon-adjust text-grass-green"></i>
                                    草绿
                                </a>
                                <a href="#" data-change-to="contrast-sea-blue"><i class="icon-adjust text-sea-blue"></i>
                                    海蓝
                                </a>
                                <a href="#" data-change-to="contrast-banana"><i class="icon-adjust text-banana"></i>
                                    黄色
                                </a>
                                <a href="#" data-change-to="contrast-dark-orange"><i class="icon-adjust text-dark-orange"></i>
                                    暗橙色
                                </a>
                                <a href="#" data-change-to="contrast-brown"><i class="icon-adjust text-brown"></i>
                                    棕色
                                </a>
                            </li>
                        </ul>
                    </li>
					
                    <li class="dropdown dark user-menu">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <img alt="Mila Kunis" height="23" src="${pageContext.request.contextPath }${sessionScope.user.uicon }" width="23" />
                            <span class="user-name hidden-phone">
                            	<c:if test="${null==sessionScope.user.uname }">
									未设置昵称
								</c:if>
								<c:if test="${null!=sessionScope.user.uname }">
									${sessionScope.user.uname }
								</c:if>
                            </span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="#">
                                    <i class="icon-cog"></i>
                                    设置
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="${pageContext.request.contextPath }/user/logout">
                                    <i class="icon-signout"></i>
                                    退出登录
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <form accept-charset="UTF-8" action="search_results.html" class="navbar-search pull-right hidden-phone" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
                    <button class="btn btn-link icon-search" name="button" type="submit"></button>
                    <input autocomplete="off" class="search-query span2" id="q_header" name="q" placeholder="搜索..." type="text" value="" />
                </form>
            </div>
        </div>
    </div>
</header>

<div id="wrapper">
<table class="layui-hide" id="test" lay-filter="test"></table>
 
<script type="text/html" id="headToolbar">
  <div class="layui-btn-container">
	<button data-method="setTop" class="layui-btn layui-btn-sm" id="popUpRegisterWin">添加用户</button>
 	<button class="layui-btn layui-btn-danger layui-btn-sm" lay-event="del">删除</button>
  </div>
</script>
 
 <script type="text/html" id="switchStateBtn">
 <input type="checkbox" name="{{d.uid}}" value="{{d.uid}}" lay-skin="switch" lay-text="启用|停用" lay-filter="switchState" {{ d.enable ? 'checked' : '' }}>
</script>

 <script type="text/html" id="userType">
  {{#  if(d.type == 2){ }}
    普通用户
  {{#  } else { }}
  	{{#  if(d.type == 1){ }}
    	用户管理员
  	{{#  } else { }}
    	管理员
  	{{#  } }}
  {{#  } }}
</script>
 
<script type="text/html" id="optionBar">
  <a class="layui-btn layui-btn-xs" lay-event="show">查看</a>
</script>
              
   <!--       
    <button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
    <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
<script src="//res.layui.com/layui/dist/layui.js" charset="utf-8"></script>
 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 --> 

<script>

var projectName=$("#projectContextPath").val();
var userArray={};
layui.use(['table', 'layer'], function(){
	var table = layui.table,form = layui.form;

	table.render({
		elem: '#test'
    	,url:projectName+'/user/manage/getPageUsers'
    	,toolbar: '#headToolbar'
    	,title: '用户数据表'
    	//,height: 'full-200'
    	,cols: [[
    		{type: 'checkbox', fixed: 'left'}
        	,{field:'uid', title:'ID', width:100, fixed: 'left', unresize: true, sort: true}
      		,{field:'uname', title:'用户昵称'}
      		,{field:'telephone', title:'电话', width:150}
      		,{field:'email', title:'邮箱', width:200}
      		,{field:'type', title:'用户类型', width:150,templet: '#userType'}
      		,{field:'create_time', title:'注册日期', width:180}
      		,{field:'enable', title:'状态',width:115, templet: '#switchStateBtn',unresize: true}
      		,{fixed:'right', title:'操作', toolbar: '#optionBar', width:120}
    	]]
    	,page: true
	});
  
  	//头工具栏事件
  	table.on('toolbar(test)', function(obj){
    	var checkStatus = table.checkStatus(obj.config.id);
    	switch(obj.event){
	      //case 'getCheckData':
	      //  var data = checkStatus.data;
	      //  layer.alert(JSON.stringify(data));
	     // break;
	      //case 'getCheckLength':
	      //  var data = checkStatus.data;
	      //  layer.msg('选中了：'+ data.length + ' 个');
	      //break;
	      //case 'add':
	        //layer.msg(checkStatus.isAll ? '全选': '未全选');
	     //   alert(JSON.stringify(checkStatus.data));
	      //  layer.msg('添加用户');
	      //break;
			case 'del':
				layer.confirm('真的删除行么', function(index){
					var ids=[];
	    			var data=checkStatus.data;
	    			$.each(data,function(index,value){
	    				ids.push(value.uid);
	    			});
	    			$.ajax({
	    				"url":projectName+"/user/manage/delete",
	    				"dataType":"text",
	    				"data":"ids="+ids.join(','),
	    				"async":"true",
	    				"type":"POST",
	    				"success":function(resultCode){
	    					if("SECCESS"===resultCode){
	    						layer.msg('删除成功');
	    						window.location.reload();
	    					}
	    					else if("NOT_LOGIN"===resultCode){
	    						layer.msg('没有登陆');
	    					}
							if("PERMISSION_DENIED"===resultCode){
								layer.msg('拒绝删除');
	    					}
							else{
								layer.msg('删除失败');
							}
	    				}
	    			});
	    		/*	
	    		$.each(userArray,function(key){
					//alert(JSON.stringify(userArray[key]));
					userArray[key].del();
					delete userArray[key];
				});
	    		userArray={};
	    		//var objs=checkStatus.data;
	    		
	    		//layer.msg(JSON.stringify(objs));
	    		//$.each(userArray,function(index,value){
	    			
	    		//     alert(JSON.stringify(value));
	    		//     value.del();*/
	    		
	    	    layer.close(index);
	    	 });
			break;
    	};
	});
  
	//监听行工具事件
  	table.on('tool(test)', function(obj){
		var data = obj.data;
		if(obj.event === 'show'){
			layer.open({
		    	  type: 2 
		          ,title: '查看用户信息'
		          ,area: ['900px', '600px']
		          ,shade: 0
		          ,maxmin: false
		          ,offset: 'auto'
		          ,content: projectName+"/user/manage/showUser?uid="+data.uid
		          ,btn: '关闭'
		          ,yes: function(){
		        	  layer.closeAll();
		          }
		          ,zIndex: layer.zIndex
		      });
		}
	});
	//监听行工具事件
	table.on('checkbox(test)', function(obj){
		var id=obj.data.uid;
		if(obj.checked){
			userArray[id]=obj;
		}
		else{
			delete userArray[id];
		}
    	//var data = obj.data;
	});
	//监听切换状态操作
	form.on('switch(switchState)', function(obj){
		var jsonData={};
		jsonData.id=obj.value;
		jsonData.state=obj.elem.checked;
		$.ajax({
			"url":projectName+"/user/change/state",
			"dataType":"text",
			"data":jsonData,
			"async":"true",
			"type":"POST",
			"success":function(resultCode){
				if("SECCESS"===resultCode){
					this.value?this.value=false:this.value=true;
					alert("ID="+obj.value+",更改状态成功");
				}
				else if("PERMISSION_DENIED"===resultCode){
					alert("没有权限更改");
				}
				else if("FAILED"===resultCode){
					alert("ID="+obj.value+",更改状态失败");
				}
				else if("NOT_LOGIN"===resultCode){
					window.location.href=projectName+"/user/signin";
				}else{
					alert("ID="+obj.value+",更改状态失败");
				}
			}
		});
	 // layer.msg(this.value + ' ' + this.name + '：'+ obj.elem.checked);
	});
  
	  
	//触发弹出窗口事件
	var active = {
		setTop: function(){
			var that = this; 
			//多窗口模式，层叠置顶
			layer.open({
				type: 2 
				,title: '注册用户'
				,area: ['700px', '500px']
				,shade: 0
				,maxmin: false
				,offset: 'auto'
				,content: projectName+"/user/logupByAdmin"
				,btn: '关闭'
				,yes: function(){
					layer.closeAll();
					window.location.reload();
				}
				,zIndex: layer.zIndex //重点1
				//,success: function(layero){//层弹出后的成功回调方法
				//  layer.setTop(layero); //重点2
	            //}
			});
		}
	};
	  
	$('#popUpRegisterWin').on('click', function(){
		var othis = $(this), method = othis.data('method');
		active[method] ? active[method].call(this, othis) : '';
	});
});

</script>
</div>
</body>

</html>