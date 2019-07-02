package com.booking.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.booking.domain.User;
import com.booking.domain.enums.UserState;
import com.booking.service.UserService;
import com.booking.utils.RSA;
import com.booking.utils.RSAPubExepAndModulus;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

//js加密密码
//要引入的js有
//<script src="${pageContext.request.contextPath }/views/manageUser/js/rsa/base64.js" type="text/javascript"></script>
//<script src="${pageContext.request.contextPath }/views/manageUser/js/rsa/jsbn.js" type="text/javascript"></script>
//<script src="${pageContext.request.contextPath }/views/manageUser/js/rsa/jsbn2.js" type="text/javascript"></script>
//<script src="${pageContext.request.contextPath }/views/manageUser/js/rsa/prng4.js" type="text/javascript"></script>
//<script src="${pageContext.request.contextPath }/views/manageUser/js/rsa/rng.js" type="text/javascript"></script>
//<script src="${pageContext.request.contextPath }/views/manageUser/js/rsa/rsa.js" type="text/javascript"></script>
//<script src="${pageContext.request.contextPath }/views/manageUser/js/rsa/rsa2.js" type="text/javascript"></script>
//<script src="${pageContext.request.contextPath }/views/manageUser/js/rsa/encryptutils.js" type="text/javascript"></script>

//参数为未加密的密码
//function getPUBEXEP_MODULUS(passwd){
//	"use strict";
//	var url=projectName+"/user/getPUBEXEP_MODULUS";//请把projectName换成/项目名(例如 /booking)
//	$.ajax({
//		"url":url,
//		"dataType":"json",
//		"async":"true",
//		"type":"GET",
//		"success":function(jsonObj){
//			if(null!==jsonObj){
//				var modulus=jsonObj.modulus;
//				var pubExep=jsonObj.pubExep;
//				passwd=jsu_rsa(modulus,pubExep,passwd);//RSA加密，返回的passwd是已经加密好的
//				login2(passwd);	//把这个函数换成你自己的下一步操作
//			}
//			else{
//				alert("获取用户信息失败");
//			}
//		}
//	});
//}

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	ObjectMapper jackson=new ObjectMapper();
	
	//转到到个人中心
	@GetMapping("/")
	public String index(HttpSession session) {
		if(null==session.getAttribute("user")) {
			return "manageUser/sign_in";
		}
		return "user/index";
	}
	//转到用户管理中心
	@GetMapping("/manageUser")
	public String manageUser(HttpSession session) {
		if(null==session.getAttribute("user")) {
			return "manageUser/sign_in";
		}
		return "manageUser/index";
	}
	//转到管理员中心
	@GetMapping("/admin")
	public String admin(HttpSession session) {
		if(null==session.getAttribute("user")) {
			return "manageUser/sign_in";
		}
		return "admin/showAdmins";
	}
	//用户是否存在
	//参数：用户email
	//返回枚举类型，详细请看枚举UserState
	@PostMapping("/isExist")
	public @ResponseBody String isExist(@RequestParam String email) {
		try {
			return userService.existsByEmail(java.net.URLDecoder.decode(email, "UTF-8")).toString();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return UserState.GET_USER_INFO_FAILED.toString();
	}
	//获取rsa加密指数和模
	//返回json
	@GetMapping("/getPUBEXEP_MODULUS")
	public @ResponseBody RSAPubExepAndModulus getPUBEXEP_MODULUS(HttpSession session) {
		RSA rsa=new RSA();
		session.setAttribute("rsa", rsa);
		return rsa.getPubExepAndModulus();
	}
	//登陆
	//参数：用户email,使用getPUBEXEP_MODULUS获取的指数和模加密的密码(js加密过程请看顶部)
	//返回json格式的用户类型和枚举状态UserState
	@PostMapping("/login")
	public @ResponseBody String login(@RequestParam String email,@RequestParam String passwd,HttpSession session) {
		UserState temp=UserState.GET_USER_INFO_FAILED;
		temp = userService.login(email, passwd, session);
		session.removeAttribute("rsa");
		String result="";
		if(temp==UserState.SECCESS) {
			result="{\"type\":\""+((User)session.getAttribute("user")).getType();
			result+="\",\"state\":\"";
		}
		else {
			result+="{\"state\":\"";
		}
		result+=temp.toString();
		result+="\"}";
		return result;
	}
	//注册普通用户
	//参数：用户email,使用getPUBEXEP_MODULUS获取的指数和模加密的密码(js加密过程请看顶部)
	//返回枚举UserState
	@PostMapping("/register")
	public @ResponseBody String register(@RequestParam String email,@RequestParam String passwd,HttpSession session) {
		UserState temp=UserState.GET_USER_INFO_FAILED;
		temp = userService.register(email, passwd, session,2);
		session.removeAttribute("rsa");
		return temp.toString();
	}
	//注册用户管理员
	//参数：用户email,使用getPUBEXEP_MODULUS获取的指数和模加密的密码(js加密过程请看顶部)
	//返回枚举UserState
	@PostMapping("/registerManageUser")
	public @ResponseBody String registerManageUser(@RequestParam String email,@RequestParam String passwd,HttpSession session) {
		User user=(User) session.getAttribute("user");
		if(null==user) {
			return UserState.NOT_LOGIN.toString();
		}
		if(0!=user.getType()&&1!=user.getType()) {
			//没有权限
			return UserState.PERMISSION_DENIED.toString();
		}
		UserState temp = userService.register(email, passwd, session,1);
		session.removeAttribute("rsa");
		return temp.toString();
	}
	//注册管理员
	//参数：用户email,使用getPUBEXEP_MODULUS获取的指数和模加密的密码(js加密过程请看顶部)
	//返回枚举UserState
	@PostMapping("/registerAdmin")
	public @ResponseBody String registerAdmin(@RequestParam String email,@RequestParam String passwd,HttpSession session) {
		User user=(User) session.getAttribute("user");
		if(null==user) {
			return UserState.NOT_LOGIN.toString();
		}
		if(0!=user.getType()&&1!=user.getType()) {
			//没有权限
			return UserState.PERMISSION_DENIED.toString();
		}
		UserState temp = userService.register(email, passwd, session,0);
		session.removeAttribute("rsa");
		return temp.toString();
	}
	//转到登陆界面
	@GetMapping("/signin")
	public String signin() {
		return "manageUser/sign_in";
	}
	//退出登陆
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("user");
		return "manageUser/sign_in";
	}
	//转到注册
	@GetMapping("/logup")
	public String logup() {
		return "manageUser/sign_up";
	}
	//转到用户管理员注册用户
	@GetMapping("/logupByAdmin")
	public String logupByAdmin() {
		return "manageUser/sign_upByAdmin";
	}
	//转到忘记密码
	@GetMapping("/forgetPasswd")
	public String forgetPasswd() {
		return "manageUser/forgetPasswd";
	}
	//发送临时密码到邮箱
	@PostMapping("/sendEmailForPasswd")
	public @ResponseBody String sendEmailForPasswd(@RequestParam String email) {
		return userService.sendEmailForPasswd(email).toString();
	}
	
	//修改昵称
	@PostMapping("/change/nick")
	public @ResponseBody String changeNick(@RequestParam String nick,HttpSession session) {
		User user=(User) session.getAttribute("user");
		if(null==user) {
			return UserState.NOT_LOGIN.toString();
		}
		user.setUname(nick);
		return userService.changeNick(user).toString();
	}
	//修改密码
	@PostMapping("/change/passwd")
	public @ResponseBody String changePasswd(@RequestParam String newPasswd,@RequestParam String oldPasswd,HttpSession session) {
		User user=(User) session.getAttribute("user");
		if(null==user) {
			return UserState.NOT_LOGIN.toString();
		}
		UserState temp=userService.changePasswd(user, newPasswd,oldPasswd,session);
		session.removeAttribute("rsa");
		return temp.toString();
	}
	//切换状态
	@PostMapping("/change/state")
	public @ResponseBody String changeState(@RequestParam Long id, @RequestParam Boolean state,HttpSession session) {
		User user=(User) session.getAttribute("user");
		if(null==user) {
			return UserState.NOT_LOGIN.toString();
		}
		if(0!=user.getType()&&1!=user.getType()) {
			//没有权限
			return UserState.PERMISSION_DENIED.toString();
		}
		return userService.changeState(id,state).toString();
	}
	//修改手机号
	@PostMapping("/change/phone")
	public @ResponseBody String changePhone(@RequestParam String phone,HttpSession session) {
		User user=(User) session.getAttribute("user");
		if(null==user) {
			return UserState.NOT_LOGIN.toString();
		}
		return userService.changePhone(user,phone).toString();
	}
	//修改邮箱
	@PostMapping("/change/email")
	public @ResponseBody String changeEmail(@RequestParam String email,HttpSession session) {
		User user=(User) session.getAttribute("user");
		if(null==user) {
			return UserState.NOT_LOGIN.toString();
		}
		try {
			return userService.changeEmail(user, java.net.URLDecoder.decode(email, "UTF-8")).toString();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return UserState.FAILED.toString();
	}
	//修改头像
	@PostMapping("/change/avatar")
	public @ResponseBody String changeAvatar(@RequestParam MultipartFile avatar,HttpSession session) {
		return userService.changeAvatar(avatar,session).toString();
	}
	//删除用户
	@PostMapping("/manage/delete")
	public @ResponseBody String deleteUser(@RequestParam List<Long> ids, HttpSession session) {
		User user=(User) session.getAttribute("user");
		if(null==user) {
			return UserState.NOT_LOGIN.toString();
		}
		if(0!=user.getType()&&1!=user.getType()) {
			//没有权限
			return UserState.PERMISSION_DENIED.toString();
		}
		if(null==ids) {
			return UserState.ERROR.toString();
		}
		return userService.deleteAllById(ids).toString();
	}
	//获取所有用户
	@GetMapping("/manage/getUsers")
	public  @ResponseBody String getUsers(HttpSession session) {
		User user=(User) session.getAttribute("user");
		if(null==user) {
			return UserState.NOT_LOGIN.toString();
		}
		if(0!=user.getType()&&1!=user.getType()) {
			//没有权限
			return UserState.PERMISSION_DENIED.toString();
		}
		try {
			return jackson.writeValueAsString(userService.findAllPaging());
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return UserState.ERROR.toString();
	}
	//获取一页用户
	@GetMapping("/manage/getPageUsers")
	public @ResponseBody String getPageUser(Integer page, Integer limit, HttpSession session) {
		if(null!=page&&null!=limit) {
			User user=(User) session.getAttribute("user");
			if(null==user) {
				return UserState.NOT_LOGIN.toString();
			}
			if(0!=user.getType()&&1!=user.getType()) {
				//没有权限
				return UserState.PERMISSION_DENIED.toString();
			}
			if(page<1) {
				return UserState.ERROR.toString();
			}
			try {
				return jackson.writeValueAsString(userService.findAllPaging(page-1,limit));
			} catch (JsonProcessingException e) {
				e.printStackTrace();
			}
		}
		return UserState.ERROR.toString();
	}
	// 获取一个用户
	@GetMapping("/manage/getUser")
	public @ResponseBody String showUser(Long uid, HttpSession session) {
		if (null != uid) {
			User user = (User) session.getAttribute("user");
			if (null == user) {
				return UserState.NOT_LOGIN.toString();
			}
			if (0 != user.getType() && 1 != user.getType()) {
				// 没有权限
				return UserState.PERMISSION_DENIED.toString();
			}
			try {
				return jackson.writeValueAsString(userService.findById(uid));
			} catch (JsonProcessingException e) {
				e.printStackTrace();
			}
		}
		return UserState.ERROR.toString();
	}
	//显示一个用户的信息
	@GetMapping("/manage/showUser")
	public String getOneUser(Long uid, HttpSession session,Model model) {
		User user=(User) session.getAttribute("user");
		if(null==user) {
			model.addAttribute("error", UserState.NOT_LOGIN.toString());
			return "manageUser/error";
		}
		if(0!=user.getType()&&1!=user.getType()) {
			//没有权限
			model.addAttribute("error", UserState.PERMISSION_DENIED.toString());
			return "manageUser/error";
		}
		User showUser=userService.findById(uid);
		if(null==showUser) {
			model.addAttribute("error", UserState.USER_NOT_EXIST.toString());
			return "manageUser/error";
		}
		model.addAttribute("showUser", showUser);
		return "manageUser/showUser";
	}
}
