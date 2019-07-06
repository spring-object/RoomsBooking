package com.booking.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;

import com.booking.domain.Hotel;


public interface HotelService {
//	CrudRepository接口：
	public void save(Hotel entity);
	public void saveAll(List<Hotel> entities);
	public Hotel findById(Long id);
	public boolean existsById(Long id);
	public List<Hotel> findAll();
	public List<Hotel> findAllById(List<Long> ids);
	public long count();
	public void deleteById(Long id);
	public void delete(Hotel entity);
	public void deleteAll(List<Hotel> entities);
	public void deleteAll();
	public void deleteAll(Long[] ids);
//	PagingAndSortingRepository extends CrudRepository接口：
	public List<Hotel> findAll(Sort sort);
	public Page<Hotel> findAll(Pageable pageable);
	
	public Page<Hotel> findAll(Specification<Hotel> spec, Pageable pageable);
}
