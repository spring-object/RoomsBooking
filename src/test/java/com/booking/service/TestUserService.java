package com.booking.service;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.booking.domain.User;
import com.booking.domain.enums.UserState;
import com.booking.utils.RSA;

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
	//修改昵称
	@Test
	@Rollback(true)
	public void changeNick() {
		Optional<User> optional = userService.findByEmail("sudo_skyline@163.com");
		User user=optional.get();
		if (null == user) {
			System.out.println(UserState.NOT_LOGIN.toString());
		}
		user.setUname("manage");
		System.out.println(userService.changeNick(user).toString());
	}

	// 修改密码
	@Test
	@Rollback(true)
	public void changePasswd() {
		Optional<User> optional = userService.findByEmail("sudo_skyline@163.com");
		User user=optional.get();
		if (null == user) {
			System.out.println(UserState.NOT_LOGIN.toString());
		}
		RSA rsa=new RSA();
		String oldPasswd=rsa.getStrEncryptionText("*.-,&0'#+$%/!()\"");
		String newPasswd=rsa.getStrEncryptionText("123456");
		//System.out.println(userService.changePasswd(user, newPasswd, oldPasswd, rsa));
	}

	// 切换状态
	@Test
	@Rollback(true)
	public void changeState() {
		Optional<User> optional = userService.findByEmail("sudo_skyline@163.com");
		User user=optional.get();
		if (null == user) {
			System.out.println(UserState.NOT_LOGIN.toString());
		}
		System.out.println(userService.changeState(user).toString());
	}

	// 修改手机号
	@Test
	@Rollback(true)
	public void changePhone() {
		Optional<User> optional = userService.findByEmail("sudo_skyline@163.com");
		User user=optional.get();
		if (null == user) {
			System.out.println(UserState.NOT_LOGIN.toString());
		}
		System.out.println(userService.changePhone(user, "phone").toString());
	}

	// 修改邮箱
	@Test
	public void changeEmail() {
		Optional<User> optional = userService.findByEmail("sudo_skyline@163.com");
		User user=optional.get();
		if (null == user) {
			System.out.println(UserState.NOT_LOGIN.toString());
		}
		System.out.println(userService.changeEmail(user, "abc@abc.com").toString());
	}
}