package com.booking.dao;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.booking.domain.Hotel;

@Repository
public interface HotelDao extends PagingAndSortingRepository<Hotel, Long>, JpaSpecificationExecutor<Hotel> {

}
