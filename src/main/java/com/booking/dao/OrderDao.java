package com.booking.dao;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.booking.domain.Order;

@Repository
public interface OrderDao extends PagingAndSortingRepository<Order, Long>, JpaSpecificationExecutor<Order> {

}
