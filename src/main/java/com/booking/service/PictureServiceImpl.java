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

import com.booking.dao.PictureDao;
import com.booking.domain.Picture;

@Service
public class PictureServiceImpl implements PictureService {
	
	@Autowired
	private PictureDao pictureDao;
	
//实现自定义查询
	//根据房间id查询图片
	@Override
	public List<Picture> findRoomPictures(Long id) {
		return pictureDao.findRoomPictures(id);
	}

	@Override
	public void save(Picture entity) {
		pictureDao.save(entity);
	}

	@Override
	public void saveAll(List<Picture> entities) {
		pictureDao.saveAll(entities);
	}

	@Override
	public Picture findById(Long id) {
		Picture picture = pictureDao.findById(id).get();
		return picture;
	}

	@Override
	public boolean existsById(Long id) {
		return pictureDao.existsById(id);
	}

	@Override
	public List<Picture> findAll() {
		return (List<Picture>) pictureDao.findAll();
	}

	@Override
	public List<Picture> findAllById(List<Long> ids) {
		return (List<Picture>) pictureDao.findAllById(ids);
	}

	@Override
	public long count() {
		return pictureDao.count();
	}

	@Override
	public void deleteById(Long id) {
		pictureDao.deleteById(id);
	}

	@Override
	public void delete(Picture entity) {
		pictureDao.delete(entity);
	}

	@Override
	public void deleteAll(List<Picture> entities) {
		pictureDao.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		pictureDao.deleteAll();
	}

	@Override
	public void deleteAll(Long[] ids) {
		ArrayList<Long> idsList = new ArrayList<Long>(Arrays.asList(ids));
		Iterable<Picture> pictures = pictureDao.findAllById(idsList);
		if(pictures!=null) {
			pictureDao.deleteAll(pictures);
		}
	}

	@Override
	public List<Picture> findAll(Sort sort) {
		return (List<Picture>) pictureDao.findAll(sort);
	}

	@Override
	public Page<Picture> findAll(Pageable pageable) {
		return pictureDao.findAll(pageable);
	}

	@Override
	public Page<Picture> findAll(Specification<Picture> spec, Pageable pageable) {
		return pictureDao.findAll(spec, pageable);
	}
}
