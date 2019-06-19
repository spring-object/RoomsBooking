package com.booking.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {
		"classpath:applicationContext-core.xml",
		"classpath:applicationContext-jpa.xml"
})
public class TestUserController {
	@Autowired
	private UserController userController;
	@Test
	public void test() {
		System.out.println("test");
	}
}
