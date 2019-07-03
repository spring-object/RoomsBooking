package com.booking.dao;

import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.Optional;
import java.util.Set;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.booking.domain.Hotel;
import com.booking.domain.Order;
import com.booking.domain.Picture;
import com.booking.domain.Room;
import com.booking.domain.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {
		"classpath:applicationContext-core.xml",
		"classpath:applicationContext-jpa.xml"
})
@Transactional
public class TestUserDao {
	@Autowired
	private UserDao userDao;
	@Autowired
	private UserDTO userDTO;
	//Comment
//	private Long cid;               //评论id
//	private User user;				//用户id
//	private Hotel hotel;			//酒店id
//	private Order order;			//订单id
//	private String msg;				//评论内容
//	private Date create_time;		//评论时间
//	private Set<Picture> pictures = new HashSet<Picture>();//评论图片
	
	//Picture
//	private Long pid;				//图片id
//	private Hotel hotel;			//酒店id
//	private Comment comment;        //评论id
//	private Room room;          	//房间id
//	private String src;       		//资源地址
	
	//Hotel
//	private Long hid;               //酒店id
//	private String hname;			//酒店名称
//	private String address;			//地址
//	private String info;			//简介
//	private String equipment;		//设备
//	private Set<Picture> pictures = new HashSet<Picture>();//酒店图片
	
	//Room
//	private Long rid;				//房间id
//	private String rname;			//房间名称
//	private float price;			//房间价格
//	private String type;			//房间类型
//	private String info;			//简介
//	private String equipment;		//设备
	
	//Order
//	private User user;          //用户id
//	private Hotel hotel;        //酒店id
//	private Room room;          //房间id
//	private Date create_time;   //下单时间
//	private Date start_time;    //入住时间
//	private Date end_time;      //离开时间
//	private float rprice;       //房间价格
//	private int rcount;        	//房间数量
//	private int status;			//0为已完成（可评价）、1为未使用（已付款）、2为待付款（可取消）
	@Test
	@Rollback(false)
	public void testSaveUserOrder() {
		Optional<User> user=userDao.findById(16L);
		if(user.isPresent()) {
				
			Set<Order> order=user.get().getOrders();
			
			//Picture cp1=new Picture();
			//cp1.setSrc("/views/manageUser/images/default_avatar.png");
//			Comment c1=new Comment();
//			c1.setCreate_time(new Date());
//			c1.setMsg("评论1");
//			c1.getPictures().add(cp1);
//			c1.setPictures(c1.getPictures());
			
			Picture hp1=new Picture();
			hp1.setSrc("/views/images/hotel/hotel_1.jpg");
			Hotel h1=new Hotel();
			h1.setAddress("酒店1地址");
			h1.setEquipment("酒店1设备");
			h1.setHname("酒店1名字");
			h1.setInfo("酒店1信息");
			hp1.setHotel(h1);
			h1.getPictures().add(hp1);
			h1.setPictures(h1.getPictures());
			
			Picture rp1=new Picture();
			rp1.setSrc("/views/images/rooms/room_1.jpg");
			Room r1=new Room();
			r1.setRname("room1");
			r1.setPrice(20.5f);
			r1.setType("大床房");
			r1.setInfo("大床房简介");
			r1.setEquipment("大床房设备");
			rp1.setRoom(r1);
			r1.getPictures().add(rp1);
			r1.setPictures(r1.getPictures());
			
			Order o1=new Order();
			o1.setUser(user.get());
			o1.setHotel(h1);
			o1.setRoom(r1);
			o1.setCreate_time(new Date());
			o1.setStart_time(new Date());
			o1.setEnd_time(new Date());
			o1.setRprice(50.0f);
			o1.setRcount(2);
			o1.setStatus(0);
			
//			hp1.setComment(c1);
//			hp1.setHotel(h1);
//			hp1.setRoom(r1);
//			cp1.setComment(c1);
//			cp1.setHotel(h1);
//			cp1.setRoom(r1);
			
			order.add(o1);
			
			user.get().setOrders(order);
			
			userDao.save(user.get());
		}
	}
	
	@Test
	public void testSet() {
		Set<String> set=new HashSet<String>();
		set.add("1");
		set.add("2");
		set.add("3");
		Object[] objects=set.toArray();
		System.out.println(objects[0]); 
	}
	
	@Test
	@Rollback(true)
	public void testGetUserOrder() {
		Optional<User> user=userDao.findById(16L);
		Set<Order> order=user.get().getOrders();
		for (Order o : order) {  
		      System.out.println(o);  
		}
	}
	
	@Test
	@Rollback(false)
	public void testDeleteOneUser() {
		userDao.deleteById(10L);
	}
	
	@Test
	@Rollback(true)
	public void testDelete() {
		int pageIndex=1;//第几页
		int pageSize=2;//每页多少条
		Sort sort=Sort.by(Direction.DESC, "uid");
		PageRequest pageable=PageRequest.of(pageIndex, pageSize, sort);
		Page<User> page=(Page<User>) userDao.findAll(pageable);
		System.out.println("PageNumber:"+page.getNumber());//第几页0开始
		System.out.println("CurrentPageCount:"+page.getNumberOfElements());//当前页条数
		System.out.println("PerPageCount:"+page.getSize());//每页多少条
		System.out.println("TotalCount:"+page.getTotalElements());
		System.out.println("TotalPage:"+page.getTotalPages());
		for(User user:page.getContent()) {
			System.out.println(user);
		}
	}
	@Test
	@Rollback(true)
	public void testReadPage() {
		int pageIndex=1;//第几页
		int pageSize=2;//每页多少条
		Sort sort=Sort.by(Direction.DESC, "uid");
		PageRequest pageable=PageRequest.of(pageIndex, pageSize, sort);
		Page<User> page=(Page<User>) userDao.findAll(pageable);
		System.out.println("PageNumber:"+page.getNumber());//第几页0开始
		System.out.println("CurrentPageCount:"+page.getNumberOfElements());//当前页条数
		System.out.println("PerPageCount:"+page.getSize());//每页多少条
		System.out.println("TotalCount:"+page.getTotalElements());
		System.out.println("TotalPage:"+page.getTotalPages());
		for(User user:page.getContent()) {
			System.out.println(user);
		}
	}
	@Test
	@Rollback(true)
	public void testReadOne() {
		Optional<User> user=userDao.findById(3L);
		System.out.println(user.get());
	}
	
	@Test
	@Rollback(true)
	public void testReadOneByEmail() {
		
//		String email="abe3@qq.com";
//		Specification<User> spec=new Specification<User>() {
//		public Predicate toPredicate(Root<User> root, CriteriaQuery<?> query,CriteriaBuilder cb) {
//              Predicate predicate1 = cb.equal(root.get("email").as(String.class), email);
//
//              // 2个检索条件同时使用
//              query.where(predicate1);
//              return query.getRestriction();
//			} 
//		};
		userDTO.setKey("abc@abc.com");
		Specification<User> spec=UserDTO.getSpecification(userDTO);
		Optional<User> user=userDao.findOne(spec);
		System.out.println(user.isPresent());
		System.out.println(user.get());
	}
	
//	int pageIndex=0;//第几页
//	int pageSize=2;//每页多少条
//	String uid="1";
//	Date date=new Date();
//	@SuppressWarnings("serial")
//	Specification<Order> spec=new Specification<Order>() {
//		public Predicate toPredicate(Root<Order> root, CriteriaQuery<?> query,CriteriaBuilder cb) {
//              Predicate predicate1 = cb.equal(root.get("uid").as(String.class), uid);
//              Predicate predicate2 = cb.lessThan(root.get("date").as(Date.class), date);
//
//              // 2个检索条件同时使用
//              query.where(cb.and(predicate1,predicate2));
//              return query.getRestriction();
//		} 
//	};
//	PageRequest pageable=PageRequest.of(pageIndex, pageSize, Direction.DESC, "date");//3
//	
//	Page<Order> page=(Page<Order>) orderDao.findAll(spec,pageable);
//	
//	System.out.println("PageNumber:"+page.getNumber());//第几页0开始
//	System.out.println("CurrentPageCount:"+page.getNumberOfElements());//当前页条数
//	System.out.println("PerPageCount:"+page.getSize());//每页多少条
//	System.out.println("TotalCount:"+page.getTotalElements());
//	System.out.println("TotalPage:"+page.getTotalPages());
//	for(Order order:page.getContent()) {
//		System.out.println(order);
//	}
	
	@Test
	@Rollback(false)
	public void testSave() {
		User user1=new User();
		User user2=new User();
		User user3=new User();
		User user4=new User();
		User user5=new User();
		User user6=new User();
		User user7=new User();
		User user8=new User();
		User user9=new User();
		User user10=new User();
		user1.setCreate_time(new Date());
		user1.setEmail("abe@qq.com");
		user1.setEnable(false);
		user1.setSalt("salt");
		user1.setTelephone("telephone");
		user1.setType(0);
		user1.setUicon("uicon");
		user1.setUname("1");
		user1.setUpassword("upassword");
		
		user2.setCreate_time(new Date());
		user2.setEmail("abe@qq.com");
		user2.setEnable(false);
		user2.setSalt("salt");
		user2.setTelephone("telephone");
		user2.setType(0);
		user2.setUicon("uicon");
		user2.setUname("2");
		user2.setUpassword("upassword");
		
		user3.setCreate_time(new Date());
		user3.setEmail("abe@qq.com");
		user3.setEnable(false);
		user3.setSalt("salt");
		user3.setTelephone("telephone");
		user3.setType(0);
		user3.setUicon("uicon");
		user3.setUname("3");
		user3.setUpassword("upassword");
		
		user4.setCreate_time(new Date());
		user4.setEmail("abe@qq.com");
		user4.setEnable(false);
		user4.setSalt("salt");
		user4.setTelephone("telephone");
		user4.setType(0);
		user4.setUicon("uicon");
		user4.setUname("4");
		user4.setUpassword("upassword");
		
		user5.setCreate_time(new Date());
		user5.setEmail("abe@qq.com");
		user5.setEnable(false);
		user5.setSalt("salt");
		user5.setTelephone("telephone");
		user5.setType(0);
		user5.setUicon("uicon");
		user5.setUname("5");
		user5.setUpassword("upassword");
		
		user6.setCreate_time(new Date());
		user6.setEmail("abe@qq.com");
		user6.setEnable(false);
		user6.setSalt("salt");
		user6.setTelephone("telephone");
		user6.setType(0);
		user6.setUicon("uicon");
		user6.setUname("6");
		user6.setUpassword("upassword");
		
		user7.setCreate_time(new Date());
		user7.setEmail("abe@qq.com");
		user7.setEnable(false);
		user7.setSalt("salt");
		user7.setTelephone("telephone");
		user7.setType(0);
		user7.setUicon("uicon");
		user7.setUname("7");
		user7.setUpassword("upassword");
		
		user8.setCreate_time(new Date());
		user8.setEmail("abe@qq.com");
		user8.setEnable(false);
		user8.setSalt("salt");
		user8.setTelephone("telephone");
		user8.setType(0);
		user8.setUicon("uicon");
		user8.setUname("8");
		user8.setUpassword("upassword");
		
		user9.setCreate_time(new Date());
		user9.setEmail("abe@qq.com");
		user9.setEnable(false);
		user9.setSalt("salt");
		user9.setTelephone("telephone");
		user9.setType(0);
		user9.setUicon("uicon");
		user9.setUname("9");
		user9.setUpassword("upassword");
		
		user10.setCreate_time(new Date());
		user10.setEmail("abe@qq.com");
		user10.setEnable(false);
		user10.setSalt("salt");
		user10.setTelephone("telephone");
		user10.setType(0);
		user10.setUicon("uicon");
		user10.setUname("10");
		user10.setUpassword("upassword");
		
		userDao.save(user1);
		userDao.save(user2);
		userDao.save(user3);
		userDao.save(user4);
		userDao.save(user5);
		userDao.save(user6);
		userDao.save(user7);
		userDao.save(user8);
		userDao.save(user9);
		userDao.save(user10);
	}
}
