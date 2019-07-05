package com.booking.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.booking.domain.Order;
import com.booking.dao.OrderDTO;
import com.booking.service.OrderServiceImpl;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired
	private OrderServiceImpl orderServiceImpl;
	
	/*
	 * 功能：显示一页订单
	 * 参数：pageNo：当前页
	 * 		length：每页长度
	 * 		draw：没有特别作用，前台传来什么就返回什么，没有则返回1
	 * 		extraSerach：查询条件 	
	 * 返回值：json数据，包含一页订单的数据、draw、总记录数
	 */
	@PostMapping(value="/listOrder")
	public @ResponseBody String listOrder(@RequestParam Integer pageNo, Integer length, Integer draw, String extraSerach) {
		OrderDTO orderQueryDto = new OrderDTO();
		orderQueryDto.setKey(extraSerach);//设置查询条件
		
		Pageable pageable = PageRequest.of(pageNo, length, Direction.DESC, "status");//未完成的订单优先显示
		Page<Order> page = orderServiceImpl.findAll(OrderDTO.getSpecification(orderQueryDto), pageable);//根据条件获取一页订单
		
		HashMap<String, Object> result = new HashMap<>();//定义返回值键值对
		List<Order> orders = new ArrayList<Order>();
		for(Order order : page.getContent()) {//防止用户信息泄露
			order.getUser().setSalt(null);
			order.getUser().setUpassword(null);
			order.setTotalPrice();//设置订单总价
			orders.add(order);
		}
		result.put("data", orders);
		result.put("draw", draw);
		result.put("recordsTotal", page.getTotalElements());
		result.put("recordsFiltered", page.getTotalElements());//查询过滤后的总记录数，跟recordsTotal保持一致，前台会根据数据自动进行显示
		
		ObjectMapper jsonObject = new ObjectMapper();
		String json = "";
		try {
			json = jsonObject.writeValueAsString(result);//把键值对转换成json类型的字符串
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		
		return json;
	}
	
	/*
	 * 功能：详细显示一个订单的具体信息
	 * 参数：map，前台json数据，格式为{["oid":"xxx"]}
	 * 返回值：Order类型的json数据，返回一个order的具体信息
	 */
	@PostMapping(value="/showAOrder")
	public @ResponseBody Order showAOrder(@RequestParam Map<String,String> map) {
		Long oid = null;
		//获取map里的oid数据并把值转化为Long
		if(map.containsKey("oid")) {
	        oid = Long.parseLong(map.get("oid"));
	    }
		
		Order order = orderServiceImpl.findById(oid);

		return order;
	}
	
	/*
	 * 功能：更新订单
	 * 参数：map，前台json数据
	 * 返回值：success或者fail，json数据，格式为{"result":"xxx"}
	 */
	@PostMapping(value="/update")
	public @ResponseBody String changeStatus(HttpServletRequest request) {
		Long oid = Long.parseLong(request.getParameter("oid"));//获取订单id
		
		Order order = orderServiceImpl.findById(oid);
		//更新订单信息
		if(order != null) {
			order.setStatus(Integer.parseInt(request.getParameter("status")));
			order.getUser().setTelephone(request.getParameter("telephone"));
			order.setRcount(Integer.parseInt(request.getParameter("rcount")));
			order.setTotalPrice();
			orderServiceImpl.save(order);  //更改后保存修改
			return "{\"result\":\"success\"}";
		}else {
			return "{\"result\":\"fail\"}";
		}
	}
	
	/*
	 * 功能：删除一个订单，通过订单id
	 * 参数：map，前台json数据，格式为{"oid":"xxx"}
	 * 返回值：无
	 * */
	@PostMapping(value="/deleteAOrder")
	public @ResponseBody void deleteAOrder(@RequestBody Map<String,String> map) {
		Long oid = null;
		//获取map里的oid数据并把值转化为Long
		if(map.containsKey("oid")) {
	        oid = Long.parseLong(map.get("oid"));
	    }
		//查找oid并解除其的多对一关系
		Order order = orderServiceImpl.findById(oid);
		order.setHotel(null);
		order.setRoom(null);
		order.setUser(null);
		orderServiceImpl.save(order); //保存修改
		//删除
		orderServiceImpl.deleteById(oid);
	}
	
	/*
	 * 功能：批量删除订单，通过订单ids
	 * 参数：map，前台json数据，格式为{"ids":"xxx,xxx,xxx,..."}
	 * 返回值：无
	 */
	@PostMapping(value="/deleteByIds")
	public @ResponseBody void deleteByIds(@RequestBody Map<String,String> map) {
		String[] strIds = map.get("ids").split(",");//将数据ids转换成string数组
		List<Long> ids = new ArrayList<Long>();
		//将ids的string数组转换成List<Long>数组，方便直接调用系统函数
		for(int i = 0; i < strIds.length; i++) {
			ids.add(i, Long.parseLong(strIds[i]));
		}
		//解除每个订单的多对一关系
		List<Order> orders = orderServiceImpl.findAllById(ids);  
		for(int i = 0; i < orders.size(); i++) {
			orders.get(i).setHotel(null);
			orders.get(i).setRoom(null);
			orders.get(i).setUser(null);
			orderServiceImpl.save(orders.get(i));//保存
		}
		//删除
		orderServiceImpl.deleteAll(orders);
	}

}
