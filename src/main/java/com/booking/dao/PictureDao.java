package com.booking.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.booking.domain.Picture;

@Repository
public interface PictureDao extends PagingAndSortingRepository<Picture, Long>,JpaSpecificationExecutor<Picture> {
//自定义查询
	//根据房间id获取图片
	@Query("from Picture p left outer join fetch p.room where p.room.rid = ?1")
	public List<Picture> findRoomPictures(Long rid);
}
