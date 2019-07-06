package com.booking.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.booking.domain.Hotel;
import com.booking.domain.Order;
import com.booking.domain.Picture;
import com.booking.domain.Room;
import com.booking.domain.User;
import com.booking.domain.enums.UserState;
import com.booking.dao.OrderDTO;
import com.booking.service.HotelServiceImpl;
import com.booking.service.OrderServiceImpl;
import com.booking.service.PictureService;
import com.booking.service.PictureServiceImpl;
import com.booking.service.RoomServiceImpl;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired
	private OrderServiceImpl orderServiceImpl;
	@Autowired
	private RoomServiceImpl roomServiceImpl;
	@Autowired
	private PictureServiceImpl pictureServiceImpl;
	@Autowired
	private HotelServiceImpl hotelServiceImpl;
	
	/*
	 * 功能：给未付款的订单付款
	 * 参数：oid:订单id
	 * 返回值：跳转到/user/index.jsp页面
	 */
	@GetMapping(value="pay")
	public String pay(@RequestParam Long oid) {
		Order order = orderServiceImpl.findById(oid);
		order.setStatus(1);
		orderServiceImpl.save(order);
		
		return "user/index";
	}
	
	/*
	 * 功能：马上支付，确认订单
	 * 参数：rid: 房间id
	 * 		 status：订单状态
	 * 		 startTime：入住时间
	 * 		 endTime：离开时间
	 * 返回值：success
	 */
	@PostMapping(value="/confirmOrder")
	public @ResponseBody String confirmOrder(@RequestParam Long rid, int status, String startTime, String endTime, int rcount, HttpSession session) throws ParseException {
		User user=(User) session.getAttribute("user");
		Order order = new Order();
		Room room = roomServiceImpl.findById(rid);
		Hotel hotel = hotelServiceImpl.findById(5L);      //自定义酒店
		//转换日期格式，将前端传来的MM/dd/yyyy格式转换成yyyy-MM-dd
		String[] startTemp = startTime.split("/");
		String[] endTemp = endTime.split("/");
		String start = startTemp[2] + "-" + startTemp[0] + "-" + startTemp[1];
		String end = endTemp[2] + "-" + endTemp[0] + "-" + endTemp[1];
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date startDate = formatter.parse(start);
		Date endDate = formatter.parse(end);
		//封装order
		order.setHotel(hotel);
		order.setStatus(status);
		order.setRcount(rcount);
		order.setUser(user);
		order.setRoom(room);
		order.setRprice(room.getPrice());
		order.setTotalPrice();
		order.setStart_time(startDate);
		order.setEnd_time(endDate);
		order.setCreate_time(new Date());
		orderServiceImpl.save(order);//保存
		
		return "{\"result\":\"success\"}";
	}
	
	/*
	 * 功能：预定房间，付款界面
	 * 参数：rid: 房间id
	 * 		startTime: 入住时间
	 * 		endTime: 离开时间
	 * 返回值：跳转到order.jsp界面
	 */
	@GetMapping(value="/checkout")
	public String checkout(@RequestParam Long rid, String startTime, String endTime, Model model, HttpSession session) {
		User user=(User) session.getAttribute("user");
		
		if(null == user) {//判断是否登录
			return "manageUser/sign_in";
		}else {
			Room room = roomServiceImpl.findById(rid);
			List<Picture> pictures = pictureServiceImpl.findRoomPictures(rid);
			
			model.addAttribute("room", room);
			model.addAttribute("pictures", pictures);
			model.addAttribute("startTime", startTime);
			model.addAttribute("endTime", endTime);
			model.addAttribute("result", "success");
		}
		
		return "order";
	}
	
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
