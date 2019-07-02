package com.booking.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import com.booking.dao.RoomDao;
import com.booking.domain.Room;

@Service
public class RoomServiceImpl implements RoomService {
	@Autowired
	private RoomDao roomDao;

	@Override
	public void save(Room entity) {
		roomDao.save(entity);
	}

	@Override
	public void saveAll(List<Room> entities) {
		roomDao.saveAll(entities);
	}

	@Override
	public Room findById(Long id) {
		Room room = roomDao.findById(id).get();
		return room;
	}

	@Override
	public boolean existsById(Long id) {
		return roomDao.existsById(id);
	}

	@Override
	public List<Room> findAll() {
		return (List<Room>) roomDao.findAll();
	}

	@Override
	public List<Room> findAllById(List<Long> ids) {
		return (List<Room>) roomDao.findAllById(ids);
	}

	@Override
	public long count() {
		return roomDao.count();
	}

	@Override
	public void deleteById(Long id) {
		roomDao.deleteById(id);
	}

	@Override
	public void delete(Room entity) {
		roomDao.delete(entity);
	}

	@Override
	public void deleteAll(List<Room> entities) {
		roomDao.deleteAll(entities);
	}

	@Override
	public void deleteAll(Long[] ids) {
		ArrayList<Long> idsList = new ArrayList<Long>(Arrays.asList(ids));
		List<Room> rooms = (List<Room>) roomDao.findAllById(idsList);
		if(rooms!=null) {
			roomDao.deleteAll(rooms);
		}
	}

	@Override
	public List<Room> findAll(Sort sort) {
		return (List<Room>) roomDao.findAll(sort);
	}

	@Override
	public Page<Room> findAll(Pageable pageable) {
		return roomDao.findAll(pageable);
	}

	@Override
	public Page<Room> findAll(Specification<Room> spec, Pageable pageable) {
		return roomDao.findAll(spec, pageable);
	}

}
