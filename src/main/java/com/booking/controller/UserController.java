package com.booking.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.booking.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	
	@GetMapping("/test")
	public @ResponseBody String test() {
		userService.test();
		return "test";
	}
	@GetMapping("/")
	public String index() {
		return "user/index";
	}
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
	@GetMapping("/login")
	public String login() {
		return "user/sign_in";
	}
	@GetMapping("/logout")
	public String logout() {
		return "user/sign_in";
	}
	@GetMapping("/logup")
	public String logup() {
		return "user/sign_up";
	}

}
