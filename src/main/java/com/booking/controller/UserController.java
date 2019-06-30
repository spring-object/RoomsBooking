package com.booking.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.booking.domain.User;
import com.booking.domain.enums.UserState;
import com.booking.service.UserService;
import com.booking.utils.RSA;
import com.booking.utils.RSAPubExepAndModulus;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	
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
	//参数：用户email,使用getPUBEXEP_MODULUS获取的指数和模加密的密码
	//返回json格式的用户类型和枚举状态UserState
	@PostMapping("/login")
	public @ResponseBody String login(@RequestParam String email,@RequestParam String passwd,HttpSession session) {
		UserState temp=UserState.GET_USER_INFO_FAILED;
		temp = userService.login(email, passwd, session);
		session.removeAttribute("rsa");
		String result="";
		if(temp==UserState.LOGIN_SECCESS) {
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
	//参数：用户email,使用getPUBEXEP_MODULUS获取的指数和模加密的密码
	//返回枚举UserState
	@PostMapping("/register")
	public @ResponseBody String register(@RequestParam String email,@RequestParam String passwd,HttpSession session) {
		UserState temp=UserState.GET_USER_INFO_FAILED;
		temp = userService.register(email, passwd, session,2);
		session.removeAttribute("rsa");
		return temp.toString();
	}
	//注册用户管理员
	//参数：用户email,使用getPUBEXEP_MODULUS获取的指数和模加密的密码
	//返回枚举UserState
	@PostMapping("/registerManageUser")
	public @ResponseBody String registerManageUser(@RequestParam String email,@RequestParam String passwd,HttpSession session) {
		UserState temp=UserState.GET_USER_INFO_FAILED;
		temp = userService.register(email, passwd, session,1);
		session.removeAttribute("rsa");
		return temp.toString();
	}
	//注册管理员
	//参数：用户email,使用getPUBEXEP_MODULUS获取的指数和模加密的密码
	//返回枚举UserState
	@PostMapping("/registerAdmin")
	public @ResponseBody String registerAdmin(@RequestParam String email,@RequestParam String passwd,HttpSession session) {
		UserState temp=UserState.GET_USER_INFO_FAILED;
		temp = userService.register(email, passwd, session,0);
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
	//转到忘记密码
	@GetMapping("/forgetPasswd")
	public String forgetPasswd() {
		return "manageUser/forgetPasswd";
	}

}
