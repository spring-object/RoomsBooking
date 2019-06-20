package com.booking.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.booking.service.OrderServiceImpl;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired
	private OrderServiceImpl orderServiceImpl;
	
	public String testController() {
		System.out.println("test Controller!!!");
		return "test Controller!!!";
	}
}
