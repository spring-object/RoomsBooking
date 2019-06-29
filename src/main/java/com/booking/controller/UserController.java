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

import com.booking.domain.enums.UserState;
import com.booking.service.UserService;
import com.booking.utils.RSA;
import com.booking.utils.RSAPubExepAndModulus;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	
	@GetMapping("/")
	public String index(HttpSession session) {
		if(null==session.getAttribute("user")) {
			return "user/sign_in";
		}
		return "user/index";
	}
	
	@PostMapping("/isExist")
	public @ResponseBody String isExist(@RequestParam String email) {
		try {
			return userService.existsByEmail(java.net.URLDecoder.decode(email, "UTF-8")).toString();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return UserState.GET_USER_INFO_FAILED.toString();
	}
	
	@GetMapping("/getPUBEXEP_MODULUS")
	public @ResponseBody RSAPubExepAndModulus getPUBEXEP_MODULUS(HttpSession session) {
		RSA rsa=new RSA();
		session.setAttribute("rsa", rsa);
		return rsa.getPubExepAndModulus();
	}
	
	@PostMapping("/login")
	public @ResponseBody String login(@RequestParam String email,@RequestParam String passwd,HttpSession session) {
		UserState temp=UserState.GET_USER_INFO_FAILED;
		try {
			temp = userService.login(java.net.URLDecoder.decode(email, "UTF-8"), java.net.URLDecoder.decode(passwd, "UTF-8"), session);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		session.removeAttribute("rsa");
		return temp.toString();
	}
	
	@PostMapping("/register")
	public @ResponseBody String register(@RequestParam String email,@RequestParam String passwd,HttpSession session) {
		System.out.println("email="+email);
		System.out.println("passwd="+passwd);
		UserState temp=UserState.GET_USER_INFO_FAILED;
		try {
			temp = userService.register(java.net.URLDecoder.decode(email, "UTF-8"), java.net.URLDecoder.decode(passwd, "UTF-8"), session);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		session.removeAttribute("rsa");
		return temp.toString();
	}
	
	@GetMapping("/signin")
	public String signin() {
		return "user/sign_in";
	}
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("user");
		return "user/sign_in";
	}
	@GetMapping("/logup")
	public String logup() {
		return "user/sign_up";
	}
	@GetMapping("/forgetPasswd")
	public String forgetPasswd() {
		return "user/forgetPasswd";
	}
	////////////////////////////////////////
	@GetMapping("/info/show")
	public String showInfo() {
		return "user/show_info";
	}
	@GetMapping("/info/change")
	public String changeInfo() {
		return "user/change_info";
	}
	@GetMapping("/password/change")
	public String changePassword() {
		return "user/change_password";
	}
	@GetMapping("/order/show")
	public String showOrder() {
		return "user/order_list";
	}
	@GetMapping("/order/sta")
	public String staOrder() {
		return "user/order_sta";
	}

}
