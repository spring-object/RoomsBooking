package com.booking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="/test")
public class TestController {
	@PostMapping(value="showPage")
	public @ResponseBody String showPage(@RequestParam Integer pageNo,Integer length,Integer draw){
		System.out.println(pageNo+length+draw);
		return "成功";
	}
}
