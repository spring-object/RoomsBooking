package com.booking.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;

import com.booking.domain.Order;
import com.booking.domain.User;

public interface UserService {
//	CrudRepository接口：
	public void save(User entity);
	public void saveAll(List<User> entities);
	public User findById(Long id);
	public boolean existsById(Long id);
	public List<User> findAll();
	public List<User> findAllById(List<Long> ids);
	public long count();
	public void deleteById(Long id);
	public void delete(User entity);
	public void deleteAll(List<User> entities);
	public void deleteAll(Long[] ids);
//	PagingAndSortingRepository extends CrudRepository接口：
	public List<User> findAll(Sort sort);
	public Page<User> findAll(Pageable pageable);
	
	public Page<User> findAll(Specification<User> spec, Pageable pageable);
}
