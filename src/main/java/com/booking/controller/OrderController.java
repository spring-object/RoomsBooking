package com.booking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.booking.domain.Order;
import com.booking.service.OrderServiceImpl;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired
	private OrderServiceImpl orderServiceImpl;
	
	@PostMapping(value="/showAOrder")
	public @ResponseBody Order selectAOrder(@RequestParam Long oid) {
		Order order = orderServiceImpl.findById(oid);
//		if(order == null)
//			return null;
		
		return order;
	}
	
	@PostMapping(value="/listAPage")
	public @ResponseBody Page<Order> orderList(@RequestParam Integer currentPage, Integer pageSize, String sortBy) {
		Pageable pageable = PageRequest.of(currentPage, pageSize, Direction.DESC, sortBy);
		Page<Order> orders = orderServiceImpl.findAll(pageable);
		
		return orders;
	}	
	
	@PostMapping(value="/deletAOrder")
	public @ResponseBody Integer deleteAOrder(@RequestParam Long oid) {
//		if(oid == null)
//			return 0;
//		
		orderServiceImpl.deleteById(oid);
		
		return 1;
	}

}
