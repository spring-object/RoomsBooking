package com.booking.service;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.web.multipart.MultipartFile;

import com.booking.domain.User;
import com.booking.domain.enums.UserState;

public interface UserService {
//	CrudRepository接口：
	public void save(User entity);
	public void saveAll(List<User> entities);
	public User findById(Long id);
	public boolean existsById(Long id);
	public List<User> findAll();
	public List<User> findAllById(List<Long> ids);
	public long count();
	public void deleteById(Long id);
	public void delete(User entity);
	//public void deleteAll(List<User> entities);
	public void deleteAll(Long[] ids);
//	PagingAndSortingRepository extends CrudRepository接口：
	public List<User> findAll(Sort sort);
	public Page<User> findAll(Pageable pageable);
	
	public Page<User> findAll(Specification<User> spec, Pageable pageable);
	
	public Optional<User> findByEmail(String email);
	public UserState existsByEmail(String email);
	public List<User> findAll(Integer pageIndex,Integer pageSize);
	public UserState login(String email,String passwd,HttpSession session);
	public UserState register(String email,String passwd,HttpSession session,int type);
	public UserState sendEmailForPasswd(String email);

	public UserState changeNick(User user);
	public UserState changePasswd(User user,String newPasswd,String oldPasswd,HttpSession session);
	public UserState changeState(User user);
	public UserState changeAvatar(MultipartFile avatar,HttpSession session);
	public UserState changePhone(User user,String phone);
	public UserState changeEmail(User user,String email);
	public UserState deleteAll(List<Long> ids);
}
