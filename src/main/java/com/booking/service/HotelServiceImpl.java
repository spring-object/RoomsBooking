package com.booking.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.booking.dao.HotelDao;
import com.booking.domain.Hotel;

@Service
@Transactional(readOnly=true)
public class HotelServiceImpl implements HotelService {
	@Autowired
	private HotelDao hotelDao;
	
	@Transactional
	public void save(Hotel entity) {
		// TODO Auto-generated method stub

	}

	@Transactional
	public void saveAll(List<Hotel> entities) {
		// TODO Auto-generated method stub

	}

	@Transactional
	public Hotel findById(Long id) {
		// TODO Auto-generated method stub
		return hotelDao.findById(id).get();
	}

	@Transactional
	public boolean existsById(Long id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Transactional
	public List<Hotel> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public List<Hotel> findAllById(List<Long> ids) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public long count() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Transactional
	public void deleteById(Long id) {
		// TODO Auto-generated method stub

	}

	@Transactional
	public void delete(Hotel entity) {
		// TODO Auto-generated method stub

	}

	@Transactional
	public void deleteAll(List<Hotel> entities) {
		// TODO Auto-generated method stub

	}

	@Transactional
	public void deleteAll() {
		// TODO Auto-generated method stub

	}

	@Transactional
	public void deleteAll(Long[] ids) {
		// TODO Auto-generated method stub

	}

	@Transactional
	public List<Hotel> findAll(Sort sort) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public Page<Hotel> findAll(Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public Page<Hotel> findAll(Specification<Hotel> spec, Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}

}
