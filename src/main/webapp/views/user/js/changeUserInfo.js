var oldPasswd;
var newPasswd;
var confirmPasswd;
var projectName;
$(document).ready(load);
function load(){
	"use strict";
	$("#subPasswd").click(subPasswd);
	$("#subNick").click(subNick);
	$("#subPhone").click(subPhone);
	$("#subEmail").click(subEmail);
	$("#paersonal_info_inputAvatar").change(changeAvatar);
	$("#subAvatar").click(sub);
	projectName=$("#projectContextPath").val();
}
function subPasswd(){
	"use strict";
	oldPasswd=$("#oldPasswd").val();
	newPasswd=$("#newPasswd").val();
	confirmPasswd=$("#confirmPasswd").val();
	//检查帐号密码是否符合格式
	if(!checkInfo(oldPasswd,newPasswd,confirmPasswd)){
		return;
	}
	//获取加密
	//加密密码
	getPUBEXEP_MODULUS();
}
//检查帐号密码是否符合格式
function checkInfo(oldPasswd,newPasswd,confirmPasswd){
	"use strict";
	if(null===confirmPasswd){
		alert("请输入确认密码");
		return false;
	}
	if(null===newPasswd){
		alert("请输入新密码");
		return false;
	}
	if(null===oldPasswd){
		alert("请输入旧密码");
		return false;
	}
	if(confirmPasswd!==newPasswd){
		alert("两次输入的密码不一样");
		return false;
	}
	//校验密码：只能输入6-20个字母、数字、下划线  
	var reg=/^(\w){6,20}$/;  
	if (!reg.test(newPasswd))
	{
		alert("只能输入6-20个字母、数字、下划线的密码");
		return false;
	}
	return true;
}

//获取加密
//加密密码
function getPUBEXEP_MODULUS(){
	"use strict";
	var url=projectName+"/user/getPUBEXEP_MODULUS";
	$.ajax({
		"url":url,
		"dataType":"json",
		"async":"true",
		"type":"GET",
		"success":function(jsonObj){
			if(null!==jsonObj){
				var modulus=jsonObj.modulus;
				var pubExep=jsonObj.pubExep;
				oldPasswd=jsu_rsa(modulus,pubExep,oldPasswd);//RSA加密
				newPasswd=jsu_rsa(modulus,pubExep,newPasswd);//RSA加密
				changePasswd(oldPasswd,newPasswd);
			}
			else{
				alert("获取加密信息失败");
			}
		}
	});
}

//修改密码
function changePasswd(oldPasswd,newPasswd){
	"use strict";
	var url=projectName+"/user/change/passwd";
	var jsonData={};
	jsonData.oldPasswd=oldPasswd;
	jsonData.newPasswd=newPasswd;
	$.ajax({
		"url":url,
		"dataType":"text",
		"data":jsonData,
		"async":"true",
		"type":"POST",
		"success":function(resultCode){
			if("SECCESS"===resultCode){
				alert("修改成功");
			}
			else if("NOT_LOGIN"===resultCode){
				alert("账号未登陆");
			}
			else if("GET_USER_INFO_FAILED"===resultCode){
				alert("获取用户信息失败");
			}
			else if("FORMAT_ERROR"===resultCode){
				alert("密码格式错误");
			}
			else if("PASSWD_ERROR"===resultCode){
				alert("密码错误");
			}
			else if("FAILED"===resultCode){
				alert("修改失败");
			}
			else{
				alert("修改失败");
			}
		}
	});
}
function subNick(){
	"use strict";
	var url=projectName+"/user/change/nick";
	var jsonData={};
	var nick=$("#nick").val();
	if(nick.length<1){
		alert("请输入昵称");
		return;
	}
	jsonData.nick=nick;
	$.ajax({
		"url":url,
		"dataType":"text",
		"data":jsonData,
		"async":"true",
		"type":"POST",
		"success":function(resultCode){
			if("SECCESS"===resultCode){
				alert("修改成功");
			}
			else if("NOT_LOGIN"===resultCode){
				alert("账号未登陆");
			}
			else{
				alert("修改失败");
			}
		}
	});
}
function subPhone(){
	"use strict";
	var url=projectName+"/user/change/phone";
	var jsonData={};
	var phone=$("#phone").val();
	if(phone.length<1){
		alert("请输入手机号");
		return;
	}
	jsonData.phone=phone;
	$.ajax({
		"url":url,
		"dataType":"text",
		"data":jsonData,
		"async":"true",
		"type":"POST",
		"success":function(resultCode){
			if("SECCESS"===resultCode){
				alert("修改成功");
			}
			else if("NOT_LOGIN"===resultCode){
				alert("账号未登陆");
			}
			else{
				alert("修改失败");
			}
		}
	});
}
function subEmail(){
	"use strict";
	var url=projectName+"/user/change/email";
	var jsonData={};
	var email=$("#email").val();
	var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
	if(!reg.test(email))
	{
		alert("邮箱格式不正确");
		return;
	}
	jsonData.email=encodeURIComponent(email);
	$.ajax({
		"url":url,
		"dataType":"text",
		"data":jsonData,
		"async":"true",
		"type":"POST",
		"success":function(resultCode){
			if("SECCESS"===resultCode){
				alert("修改成功");
				window.location.href=projectName+"/user/signout";
			}
			else if("NOT_LOGIN"===resultCode){
				alert("账号未登陆");
			}
			else if("FAILED"===resultCode){
				alert("修改失败");
			}
			else{
				alert("修改失败");
			}
		}
	});
}
function changeAvatar(){
	"use strict";
	$("#change_paersonal_info_avatar").attr("src",URL.createObjectURL($(event.target)[0].files[0]));
}
function jqu_ajax(jqu_url,jqu_data,jqu_isAsync,jqu_respType,contentType,jqu_suc_cbfunc,jqu_err_cbfunc){
	"use strict";
	var jqu_xmlhttp;
	if (window.XMLHttpRequest){
		jqu_xmlhttp=new XMLHttpRequest();					//创建XMLHttpRequest 对象, code for IE7+, Firefox, Chrome, Opera, Safari
	}
	else{			
		jqu_xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");	// code for IE6, IE5
	}
	jqu_xmlhttp.onreadystatechange=jqu_statechange;
	jqu_xmlhttp.responseType = jqu_respType;
	jqu_xmlhttp.open("POST",jqu_url,jqu_isAsync);					
	if(null!==contentType){
		jqu_xmlhttp.setRequestHeader("Content-type",contentType);
	}
	jqu_xmlhttp.send(jqu_data);

	function jqu_statechange(){										
		if (4===jqu_xmlhttp.readyState){
			if(200===jqu_xmlhttp.status){
				if(null!==jqu_suc_cbfunc){
					jqu_suc_cbfunc(jqu_xmlhttp.response);
				}
			}
			else{
				if(null!==jqu_err_cbfunc){
					jqu_err_cbfunc(jqu_xmlhttp.status);
				}
			}
		}
	}
}
function sub(){
	"use strict";
	var avatar=$("#paersonal_info_inputAvatar")[0].files[0];
	if(undefined===avatar||null===avatar){
		alert("请选择图片");
		return;
	}
	var formdata = new FormData();
	formdata.append("avatar", avatar); //上传文件
	var url=projectName+"/user/change/avatar";
	jqu_ajax(url,formdata,true,"text",null
		,function(data){
			if("SECCESS"==data){
				alert("头像修改成功");
			}
			else if("FORMAT_ERROR"==data){
				alert("格式不支持");
			}
			else if("NOT_LOGIN"==data){
				alert("用户未登陆");
			}
			else{
				alert("头像修改失败");
			}
		}
		,function(data){
			alert("ERROR:"+data);
		}
	);
}