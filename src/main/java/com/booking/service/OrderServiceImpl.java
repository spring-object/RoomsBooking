package com.booking.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.booking.dao.OrderDao;
import com.booking.domain.Order;

/*
 * 
 * 订单业务层
 * 
 */
@Service
@Transactional(readOnly=true)
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderDao orderDao;
	
	//自定义查询，通过房间id找订单
	public List<Order> findOrders(Long id){
		return orderDao.findOrders(id);
	}
	
	@Transactional
	public void save(Order entity) {
		// TODO Auto-generated method stub
		orderDao.save(entity);
	}

	@Transactional
	public void saveAll(List<Order> entities) {
		// TODO Auto-generated method stub
		orderDao.saveAll(entities);
	}

	@Transactional
	public Order findById(Long id) {
		// TODO Auto-generated method stub
		return orderDao.findById(id).get();
	}

	@Transactional
	public boolean existsById(Long id) {
		// TODO Auto-generated method stub
		return orderDao.existsById(id);
	}

	@Transactional
	public List<Order> findAll() {
		// TODO Auto-generated method stub
		return (List<Order>) orderDao.findAll();
	}

	@Transactional
	public List<Order> findAllById(List<Long> ids) {
		// TODO Auto-generated method stub
		return (List<Order>) orderDao.findAllById(ids);
	}

	@Transactional
	public long count() {
		// TODO Auto-generated method stub
		return orderDao.count();
	}

	@Transactional
	public void deleteById(Long id) {
		// TODO Auto-generated method stub
		orderDao.deleteById(id);
	}

	@Transactional
	public void delete(Order entity) {
		// TODO Auto-generated method stub
		orderDao.delete(entity);
	}

	@Transactional
	public void deleteAll(List<Order> entities) {
		// TODO Auto-generated method stub
		orderDao.deleteAll(entities);
	}

	@Transactional
	public void deleteAll() {
		// TODO Auto-generated method stub
		orderDao.deleteAll();
	}

	@Transactional
	public void deleteAll(Long[] ids) {
		// TODO Auto-generated method stub
		
	}

	@Transactional
	public List<Order> findAll(Sort sort) {
		// TODO Auto-generated method stub
		return (List<Order>) orderDao.findAll(sort);
	}

	@Transactional
	public Page<Order> findAll(Pageable pageable) {
		// TODO Auto-generated method stub
		return orderDao.findAll(pageable);
	}

	@Transactional
	public Page<Order> findAll(Specification<Order> spec, Pageable pageable) {
		// TODO Auto-generated method stub
		return orderDao.findAll(spec, pageable);
	}

}
