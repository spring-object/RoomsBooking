var projectName="";
var email;
var passwd;
var passwdCon;

$(document).ready(load);
function load(){
	"use strict";
	$("#registerBtn").click(register);
	projectName=$("#projectContextPath").val();
}
function getUrl(){
	"use strict";
	var type=$("#userType option:selected").val();
	if("admin"===type){
		return projectName+"/user/registerAdmin";
	}
	else if("userAdmin"===type){
		return projectName+"/user/registerManageUser";
	}
	else{
		return projectName+"/user/register";
	}
}
function register(){
	"use strict";
	passwd=$("#password").val();
	email=$("#email").val();
	passwdCon=$("#password_confirmation").val();
	//检查帐号密码是否符合格式
	if(!checkInfo(passwd,passwdCon,email)){
		return;
	}
	//检查用户是否存在
	//获取加密
	//加密密码
	//登陆
	checkUserExist(email);
}
//检查帐号密码是否符合格式
function checkInfo(passwd,passwdCon,email){
	"use strict";
	if(null===passwdCon){
		alert("请输入确认密码");
		return false;
	}
	if(null===passwd){
		alert("请输入密码");
		return false;
	}
	if(null===email){
		alert("请输入邮箱");
		return false;
	}
	if(passwdCon!==passwd){
		alert("两次输入的密码不一样");
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
				alert("帐号已存在");
			}
			else if("USER_NOT_EXIST"===resultCode){
				getPUBEXEP_MODULUS();
			}else{
				;
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
				register2(passwd,email);
			}
			else{
				;
			}
		}
	});
}

//登陆
function register2(passwd,email){
	"use strict";
	var url=getUrl();
	var jsonData={};
	jsonData.email=encodeURIComponent(email);
	jsonData.passwd=passwd;
	$.ajax({
		"url":url,
		"dataType":"text",
		"data":jsonData,
		"async":"true",
		"type":"POST",
		"success":function(resultCode){
			if("SECCESS"===resultCode){
				alert("注册成功");
			}
			else if("FORMAT_ERROR"===resultCode){
				alert("密码帐号格式错误");
			}
			else if("GET_USER_INFO_FAILED"===resultCode){
				alert("获取用户信息失败");
			}
			else if("USER_EXIST"===resultCode){
				alert("帐号已存在");
			}
			else if("FAILED"===resultCode){
				alert("注册失败");
			}
			else{
				alert("注册失败");
			}
		}
	});
}
