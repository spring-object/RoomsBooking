package com.booking.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {
		"classpath:applicationContext-core.xml",
		"classpath:applicationContext-jpa.xml"
})
@Transactional
public class TestUserService {
	@Autowired
	private UserService userService;
	@Test
	public void testExistsByEmail() {
		System.out.println(userService.existsByEmail("abe30@qq.com"));
	}
}