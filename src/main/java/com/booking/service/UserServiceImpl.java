package com.booking.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.booking.dao.UserDao;
import com.booking.domain.User;

@Service
@Transactional(readOnly=true)
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao userDao;

	@Override
	public void save(User entity) {
		userDao.save(entity);
	}

	@Override
	public void saveAll(List<User> entities) {
		userDao.saveAll(entities);
	}

	@Override
	public User findById(Long id) {
		User user = userDao.findById(id).get();
		return user;
	}

	@Override
	public boolean existsById(Long id) {
		return userDao.existsById(id);
	}

	@Override
	public List<User> findAll() {
		return (List<User>) userDao.findAll();
	}

	@Override
	public List<User> findAllById(List<Long> ids) {
		return (List<User>) userDao.findAllById(ids);
	}

	@Override
	public long count() {
		return userDao.count();
	}

	@Override
	public void deleteById(Long id) {
		userDao.deleteById(id);
	}

	@Override
	public void delete(User entity) {
		userDao.delete(entity);
	}

	@Override
	public void deleteAll(List<User> entities) {
		userDao.deleteAll(entities);
	}

	@Override
	public void deleteAll(Long[] ids) {
		ArrayList<Long> idList = new ArrayList<Long>(Arrays.asList(ids));
		List<User> users = (List<User>) userDao.findAllById(idList);
		if(users!=null) {
			userDao.deleteAll(users);
		}
	}

	@Override
	public List<User> findAll(Sort sort) {
		return (List<User>) userDao.findAll(sort);
	}

	@Override
	public Page<User> findAll(Pageable pageable) {
		return userDao.findAll(pageable);
	}

	@Override
	public Page<User> findAll(Specification<User> spec, Pageable pageable) {
		return userDao.findAll(spec, pageable);
	}
}
