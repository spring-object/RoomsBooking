package com.booking.service;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.booking.dao.UserDTO;
import com.booking.dao.UserDao;
import com.booking.domain.User;
import com.booking.domain.enums.UserState;
import com.booking.utils.RSA;
import com.booking.utils.SHA2;
import com.booking.utils.Salt;
import com.booking.utils.SendEmail;

@Service
@Transactional(readOnly=true)
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao userDao;
	@Autowired
	private UserDTO userDTO;

	@Override
	public void save(User entity) {
		userDao.save(entity);
	}

	@Override
	public void saveAll(List<User> entities) {
		userDao.saveAll(entities);
	}

	@Override
	public User findById(Long id) {
		User user = userDao.findById(id).get();
		return user;
	}
	@Override
	public Optional<User> findByEmail(String email){
		userDTO.setKey(email);
		Specification<User> spec=UserDTO.getSpecification(userDTO);
		return userDao.findOne(spec);
	}
	@Override
	public boolean existsById(Long id) {
		return userDao.existsById(id);
	}
	
	@Override
	public UserState existsByEmail(String email) {
		userDTO.setKey(email);
		Specification<User> spec=UserDTO.getSpecification(userDTO);
		Optional<User> user=userDao.findOne(spec);
		if(user.isPresent()) {//not null
			return UserState.USER_EXIST;
		}
		return UserState.USER_NOT_EXIST;
	}

	@Override
	public List<User> findAll() {
		return (List<User>) userDao.findAll();
	}

	@Override
	public List<User> findAllById(List<Long> ids) {
		return (List<User>) userDao.findAllById(ids);
	}

	@Override
	public long count() {
		return userDao.count();
	}

	@Override
	public void deleteById(Long id) {
		userDao.deleteById(id);
	}

	@Override
	public void delete(User entity) {
		userDao.delete(entity);
	}

	@Override
	public void deleteAll(List<User> entities) {
		userDao.deleteAll(entities);
	}

	@Override
	public void deleteAll(Long[] ids) {
		ArrayList<Long> idList = new ArrayList<Long>(Arrays.asList(ids));
		List<User> users = (List<User>) userDao.findAllById(idList);
		if(users!=null) {
			userDao.deleteAll(users);
		}
	}

	@Override
	public List<User> findAll(Sort sort) {
		return (List<User>) userDao.findAll(sort);
	}

	@Override
	public Page<User> findAll(Pageable pageable) {
		return userDao.findAll(pageable);
	}

	@Override
	public Page<User> findAll(Specification<User> spec, Pageable pageable) {
		return userDao.findAll(spec, pageable);
	}

	@Override
	public UserState login(String email,String passwd,HttpSession session) {
		RSA rsa=(RSA) session.getAttribute("rsa");
		if(null==rsa) {
			return UserState.GET_USER_INFO_FAILED;
		}
		try {
			email=java.net.URLDecoder.decode(email, "UTF-8");passwd=java.net.URLDecoder.decode(passwd, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		passwd=rsa.getStrDecryptionText(passwd);
		//System.out.println("passwd="+passwd);
		Optional<User> optional=this.findByEmail(email);
		if(!optional.isPresent()) {
			return UserState.GET_USER_INFO_FAILED;
		}
		User user=optional.get();
		if(null==user||false==user.getEnable()) {
			return UserState.DISABLE;
		}
		if(user.getUpassword().equals(SHA2.getEncryptionText(passwd, user.getSalt(), "SHA-512"))) {
			session.setAttribute("user", user);
			return UserState.LOGIN_SECCESS;
		}
		return UserState.PASSWD_ERROR;
	}
	
	@Override
	public UserState register(String email,String passwd,HttpSession session,int type) {
		if(null==email||null==passwd) {
			return UserState.FORMAT_ERROR;
		}
		try {
			email=java.net.URLDecoder.decode(email, "UTF-8");
			passwd=java.net.URLDecoder.decode(passwd, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		if(UserState.USER_EXIST==this.existsByEmail(email)) {
			return UserState.USER_EXIST;
		}
		RSA rsa=(RSA) session.getAttribute("rsa");
		if(null==rsa) {
			return UserState.GET_USER_INFO_FAILED;
		}
		passwd=rsa.getStrDecryptionText(passwd);
		if(null==passwd) {
			return UserState.REGISTER_FAILED;
		}
		//System.out.println("passwd="+passwd);
		String salt=Salt.getSalt(33, 94);
		passwd=SHA2.getEncryptionText(passwd, salt, "SHA-512");
		User user=new User();
		user.setEmail(email);
		user.setUpassword(passwd);
		user.setSalt(salt);
		if(type>2||type<0) {
			type=2;
		}
		user.setType(type);
		userDao.save(user);
		return UserState.REGISTER_SECCESS;
	}
	@Override
	public UserState sendEmailForPasswd(String email) {
		try {
			email=java.net.URLDecoder.decode(email, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		Optional<User> optional=this.findByEmail(email);
		if(!optional.isPresent()) {
			return UserState.USER_NOT_EXIST;
		}
		User user=optional.get();
		String newpasswd=Salt.getSalt(33, 16);
		String salt=Salt.getSalt(33, 94);
		String passwd=SHA2.getEncryptionText(newpasswd, salt, "SHA-512");
		user.setUpassword(passwd);
		user.setSalt(salt);
		if(SendEmail.sendSimple_163_Mail("skyline_software@163.com", "skyline_software@163.com", "ep01918",email,"找回密码","临时密码为:"+newpasswd)) {
			userDao.save(user);
			return UserState.SEND_EMAIL_SECCESS;
		}
		return UserState.SEND_EMAIL_FAILED;
	}
	@Override
	public UserState changeNick(User user){
		userDao.save(user);
		return UserState.CHANGE_SECCESS;
	}
	@Override
	public UserState changePasswd(User user,String newPasswd,String oldPasswd,HttpSession session){
		if(null==oldPasswd||null==newPasswd) {
			return UserState.FORMAT_ERROR;
		}
		try {
			newPasswd=java.net.URLDecoder.decode(newPasswd, "UTF-8");
			oldPasswd=java.net.URLDecoder.decode(oldPasswd, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		RSA rsa=(RSA) session.getAttribute("rsa");
		if(null==rsa) {
			return UserState.GET_USER_INFO_FAILED;
		}
		newPasswd=rsa.getStrDecryptionText(newPasswd);
		oldPasswd=rsa.getStrDecryptionText(oldPasswd);
		if(null==oldPasswd||null==newPasswd) {
			return UserState.CHANGE_FAILED;
		}
		oldPasswd=SHA2.getEncryptionText(oldPasswd, user.getSalt(), "SHA-512");
		if(!user.getUpassword().equals(oldPasswd)) {
			return UserState.PASSWD_ERROR;
		}
		String salt=Salt.getSalt(33, 94);
		newPasswd=SHA2.getEncryptionText(newPasswd, salt, "SHA-512");
		user.setUpassword(newPasswd);
		user.setSalt(salt);
		userDao.save(user);
		return UserState.CHANGE_SECCESS;
	}
	@Override
	public UserState changeState(User user){
		user.setEnable(user.getEnable()?false:true);
		userDao.save(user);
		return UserState.CHANGE_SECCESS;
	}
	@Override
	public UserState changePhone(User user,String phone){
		//验证号码是否正确
		user.setTelephone(phone);
		userDao.save(user);
		return UserState.CHANGE_SECCESS;
	}
	@Override
	public UserState changeEmail(User user,String email){
		//验证email是否正确
		user.setEmail(email);
		userDao.save(user);
		return UserState.CHANGE_SECCESS;
	}
//	@Override
//	public UserState changeAvatar(){
//		return UserState.SEND_EMAIL_FAILED;
//	}
}
