package com.booking.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.booking.dao.UserDao;
import com.booking.domain.User;

@Service
@Transactional
public class UserService {
	@Autowired
	private UserDao userDao;
	public void test() {
		Optional<User> user=userDao.findById(3L);
		System.out.println(user.get());
	}
}
