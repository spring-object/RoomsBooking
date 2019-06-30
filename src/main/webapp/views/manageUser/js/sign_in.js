var projectName="";
var email;
var passwd;
$(document).ready(load);
function load(){
	"use strict";
	$("#loginBtn").click(login);
	projectName=$("#projectContextPath").val();
	initEmail();
}
function initEmail(){
	"use strict";
	var email=$.cookie(projectName+"_email");
	var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
	if(reg.test(email))
	{
		$("#email").val(email);
		$("#remember_me").prop("checked",true);
	}
}
function login(){
	"use strict";
	passwd=$("#password").val();
	email=$("#email").val();
	//检查帐号密码是否符合格式
	if(!checkInfo(passwd,email)){
		return;
	}
	//检查用户是否存在
	//获取加密
	//加密密码
	//登陆
	checkUserExist(email);
}
//检查帐号密码是否符合格式
function checkInfo(passwd,email){
	"use strict";
	if(null===passwd){
		alert("请输入密码");
		return false;
	}
	if(null===email){
		alert("请输入邮箱");
		return false;
	}
	var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
	if(!reg.test(email))
	{
	    alert("邮箱格式不对");
	    return false;
	}
	//校验密码：只能输入6-20个字母、数字、下划线  
	reg=/^(\w){6,20}$/;  
	if (!reg.test(passwd))
	{
		alert("只能输入6-20个字母、数字、下划线");
		return false;
	}
	return true;
}
//检查用户是否存在
function checkUserExist(email){
	"use strict";
	var url=projectName+"/user/isExist";
	var jsonData={};
	jsonData.email=encodeURIComponent(email);
	$.ajax({
		"url":url,
		"dataType":"text",
		"data":jsonData,
		"async":"true",
		"type":"POST",
		"success":function(resultCode){
			if("USER_EXIST"===resultCode){
				getPUBEXEP_MODULUS();
			}
			else if("USER_NOT_EXIST"===resultCode){
				alert("帐号不存在");
			}else{
				alert("获取用户信息失败");
			}
		}
	});
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
				passwd=jsu_rsa(modulus,pubExep,passwd);//RSA加密
				login2(passwd,email);
			}
			else{
				alert("获取用户信息失败");
			}
		}
	});
}

//登陆
function login2(passwd,email){
	"use strict";
	var url=projectName+"/user/login";
	var jsonData={};
	jsonData.email=encodeURIComponent(email);
	jsonData.passwd=passwd;
	$.ajax({
		"url":url,
		"dataType":"json",
		"data":jsonData,
		"async":"true",
		"type":"POST",
		"success":function(jsonObj){
			if("LOGIN_SECCESS"===jsonObj.state){
				//alert("登陆成功");
				if($("#remember_me").is(":checked")){
					$.cookie(projectName+"_email",email,{expires:7,path:'/'});
				}
				else{
					$.cookie(projectName+"_email","",{expires:7,path:'/'});
				}
				if("2"===jsonObj.type){
					window.location.href=projectName+"/user/";
				}
				else if("1"===jsonObj.type){
					window.location.href=projectName+"/user/manageUser";
				}
				else if("0"===jsonObj.type){
					window.location.href=projectName+"/user/admin";
				}
				else{
					alert("登陆发生错误");
				}
			}
			else if("PASSWD_ERROR"===jsonObj.state){
				alert("密码错误");
			}
			else if("GET_USER_INFO_FAILED"===jsonObj.state){
				alert("获取用户信息失败");
			}
			else if("DISABLE"===jsonObj.state){
				alert("帐号未启用");
			}
			else{
				alert("登陆失败");
			}
		}
	});
}
