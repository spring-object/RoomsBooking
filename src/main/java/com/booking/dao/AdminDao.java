package com.booking.dao;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.booking.domain.User;

@Repository
public interface AdminDao extends PagingAndSortingRepository<User, Long> {

}
