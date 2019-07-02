package com.booking.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;

import com.booking.domain.Room;

public interface RoomService {
//	CrudRepository接口：
	public void save(Room entity);
	public void saveAll(List<Room> entities);
	public Room findById(Long id);
	public boolean existsById(Long id);
	public List<Room> findAll();
	public List<Room> findAllById(List<Long> ids);
	public long count();
	public void deleteById(Long id);
	public void delete(Room entity);
	public void deleteAll(List<Room> entities);
	public void deleteAll(Long[] ids);
//	PagingAndSortingRepository extends CrudRepository接口：
	public List<Room> findAll(Sort sort);
	public Page<Room> findAll(Pageable pageable);
	
	public Page<Room> findAll(Specification<Room> spec, Pageable pageable);
}
