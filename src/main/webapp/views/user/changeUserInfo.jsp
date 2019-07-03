<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//ZH" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>更改个人信息</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/views/user/css/changeUserInfo.css">
<script src="${pageContext.request.contextPath }/views/manageUser/js/rsa/base64.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/manageUser/js/rsa/jsbn.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/manageUser/js/rsa/jsbn2.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/manageUser/js/rsa/prng4.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/manageUser/js/rsa/rng.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/manageUser/js/rsa/rsa.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/manageUser/js/rsa/rsa2.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/manageUser/js/rsa/encryptutils.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/user/js/jquery-3.4.1.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/views/user/js/changeUserInfo.js" type="text/javascript"></script>

</head>
<body>
<input type="hidden" id="projectContextPath" value="${pageContext.request.contextPath }"/>
<div class="box">
	<div class="left">
		<div class="title">
			<strong class="title">修改密码</strong>
			<div>
				<input class="inputItem" placeholder="旧密码" type="password" id="oldPasswd"/><br/>
				<strong></strong>
				<input class="inputItem" placeholder="新密码" type="password" id="newPasswd"/><br/>
				<strong></strong> 
				<input class="inputItem" placeholder="确认密码" type="password" id="confirmPasswd"/><br/>
				<button id="subPasswd" type="button" class="btm">修改密码</button>
			</div>
		</div>
		<br/>
		<div class="title">
			<strong class="title">修改信息</strong>
			<div>
				<input class="inputItem" placeholder="昵称" type="password" id="nick"/><br/>
				<button id="subNick" class="btm" type="button">修改昵称</button><br/>
				<input class="inputItem" placeholder="电话" type="password" id="phone"/><br/>
				<button id="subPhone" class="btm" type="button">修改电话</button><br/>
				<input class="inputItem" placeholder="邮箱" type="password" id="email"/><br/>
				<button id="subEmail" class="btm" type="button">修改邮箱</button>
			</div>
		</div>
	</div>

	<div class="right">
		<strong class="title">修改头像</strong> 
		<div>
			<div class="title">
				<input title="选择文件" type="file" id="paersonal_info_inputAvatar" />
			</div>
			<p></p>
			<img src="${pageContext.request.contextPath }/views/images/avatar/default_avatar.png" width="300" height="300" alt=""
				id="change_paersonal_info_avatar" />
			<p></p>
			<button id="subAvatar" class="btm" type="button">修改头像</button>
		</div>
	</div>
</div>
</body>
</html>