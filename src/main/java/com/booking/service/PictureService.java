package com.booking.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;

import com.booking.domain.Picture;

public interface PictureService {
//自定义查询
	
	//根据房间id查询图片
	public List<Picture> findRoomPictures(Long id);
	
//	CrudRepository接口：
	public void save(Picture entity);
	public void saveAll(List<Picture> entities);
	public Picture findById(Long id);
	public boolean existsById(Long id);
	public List<Picture> findAll();
	public List<Picture> findAllById(List<Long> ids);
	public long count();
	public void deleteById(Long id);
	public void delete(Picture entity);
	public void deleteAll(List<Picture> entities);
	public void deleteAll();
	public void deleteAll(Long[] ids);
//	PagingAndSortingRepository extends CrudRepository接口：
	public List<Picture> findAll(Sort sort);
	public Page<Picture> findAll(Pageable pageable);
	
	public Page<Picture> findAll(Specification<Picture> spec, Pageable pageable);
}
