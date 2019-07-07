package com.booking.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;

import com.booking.domain.Order;

public interface OrderService {
	
	//自定义查询
	
	//根据房间id查询图片
	public List<Order> findOrders(Long id);
	
//	CrudRepository接口：
	public void save(Order entity);
	public void saveAll(List<Order> entities);
	public Order findById(Long id);
	public boolean existsById(Long id);
	public List<Order> findAll();
	public List<Order> findAllById(List<Long> ids);
	public long count();
	public void deleteById(Long id);
	public void delete(Order entity);
	public void deleteAll(List<Order> entities);
	public void deleteAll();
	public void deleteAll(Long[] ids);
//	PagingAndSortingRepository extends CrudRepository接口：
	public List<Order> findAll(Sort sort);
	public Page<Order> findAll(Pageable pageable);
	
	public Page<Order> findAll(Specification<Order> spec, Pageable pageable);
}
