package com.booking.dao;


import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.booking.domain.Order;

@Repository
public interface OrderDao extends PagingAndSortingRepository<Order, Long>, JpaSpecificationExecutor<Order> {
	//自定义查询
		//根据房间id获取图片
		@Query("from Order o left outer join fetch o.room where o.room.rid = ?1")
		public List<Order> findOrders(Long rid);
}
