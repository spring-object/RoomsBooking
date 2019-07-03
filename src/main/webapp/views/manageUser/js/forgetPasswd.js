var projectName;
$(document).ready(load);
function load(){
	"use strict";
	$("#sendEmailBtn").click(sendEmail);
	projectName=$("#projectContextPath").val();
}
function sendEmail(){
	"use strict";
	var email=$("#email").val();
	var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
	if(!reg.test(email))
	{
		alert("邮箱格式不正确");
		return;
	}
	else{
		var url=projectName+"/user/sendEmailForPasswd";
		var jsonData={};
		jsonData.email=encodeURIComponent(email);
		$.ajax({
			"url":url,
			"dataType":"text",
			"data":jsonData,
			"async":"true",
			"type":"POST",
			"success":function(resultCode){
				if("SECCESS"===resultCode){
					alert("临时密码已发送到邮箱，登陆后请及时更改");
				}
				else if("USER_NOT_EXIST"===resultCode){
					alert("帐号不存在");
				}
				else if("FAILED"===resultCode){
					alert("发送邮件失败");
				}
				else{
					alert("找回失败");
				}
			}
		});
	}
}