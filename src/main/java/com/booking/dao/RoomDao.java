package com.booking.dao;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.booking.domain.Room;

@Repository
public interface RoomDao extends PagingAndSortingRepository<Room, Long>,JpaSpecificationExecutor<Room>{

}
