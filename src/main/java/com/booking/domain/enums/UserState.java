package com.booking.domain.enums;

public enum UserState {
	GET_USER_INFO_FAILED,//0获取用户信息失败
	PASSWD_ERROR,//1密码错误
	USER_EXIST,//2用户存在
	USER_NOT_EXIST,//3用户不存在
	FORMAT_ERROR,//5邮箱/密码格式错误
	DISABLE,//8帐号不可用
	NOT_LOGIN,//11用户未登陆
	EMAIL_EXIST,//14email已存在
	SECCESS,//15成功
	FAILED,//16失败
	ERROR,//发生错误
	PERMISSION_DENIED//没有权限
}
