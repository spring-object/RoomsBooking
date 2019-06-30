package com.booking.domain.enums;

public enum UserState {
	GET_USER_INFO_FAILED,//0获取用户信息失败
	PASSWD_ERROR,//1密码错误
	USER_EXIST,//2用户存在
	USER_NOT_EXIST,//3用户不存在
	LOGIN_SECCESS,//4登陆成功
	FORMAT_ERROR,//5邮箱/密码格式错误
	REGISTER_SECCESS,//6注册成功
	REGISTER_FAILED,//7注册失败
	DISABLE,//8帐号不可用
	SEND_EMAIL_SECCESS,//9发送邮件成功
	SEND_EMAIL_FAILED,//10发送邮件失败
	NOT_LOGIN,//11用户未登陆
	CHANGE_SECCESS,//12修改信息成功
	CHANGE_FAILED,//13修改信息失败
	EMAIL_EXIST//14email已存在
}
