package com.booking.dao;

import java.util.Date;
import java.util.Optional;

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
