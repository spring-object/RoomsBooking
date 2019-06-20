package com.booking.service;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.booking.domain.Hotel;
import com.booking.domain.Order;
import com.booking.domain.Room;
import com.booking.domain.User;

/*
 * 
 * 订单业务层的测试，目前仅测试了增删改查
 * 
 * */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {
		"classpath:applicationContext-core.xml",
		"classpath:applicationContext-jpa.xml"
})
public class TestOrderService {
	@Autowired
	private OrderServiceImpl orderServiceImpl;
	
	@Test
	public void testSave() {//增：增加100个订单
//		Hotel hotel = new Hotel();
//		hotel.setHid(1L);
//		User user = new User();
//		user.setUid(2L);
//		Room room = new Room();
//		room.setRid(3L);
		for(int i = 1; i <= 100; i++) {
			Order order = new Order();
			order.setCreate_time(new Date());
			order.setEnd_time(new Date());
//			order.setHotel(hotel);
			order.setRcount(i);
//			order.setRoom(room);
			order.setRprice(2*i + i);
			order.setStart_time(new Date());
			order.setStatus("已完成");
//			order.setUser(user);
			orderServiceImpl.save(order);
		}
	}
	
//	@Test
//	public void testDelete() {//删：删除所有订单
//		orderServiceImpl.deleteAll();
//		System.out.println("已删除所有order!!!!");
//	}
	
//	@Test
//	public void testUpdate() {//改：更新oid为101的订单
//		Order order = new Order();
//		order.setOid(101L);
//		order.setCreate_time(new Date());
//		order.setEnd_time(new Date());
//		order.setRcount(553);
//		order.setRprice(12580);
//		order.setStart_time(new Date());
//		order.setStatus("未使用");
//		orderServiceImpl.save(order);
//	}
	
//	@Test
//	public void testFindById() {//查：查询oid为101的订单
//		Order order = orderServiceImpl.findById(101L);
//		System.out.println(order);
//	}
}
