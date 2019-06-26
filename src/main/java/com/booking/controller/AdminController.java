package com.booking.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.multipart.support.MultipartFilter;

import com.booking.domain.User;
import com.booking.domain.UserQueryDto;
import com.booking.service.UserService;
import com.booking.utils.UploadFile;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
	@Autowired
	private UserService userService;
	
	/**
	 * 实现修改用户数据
	 * @param request 客户端请求对象
	 * @param multipartRequest 文件上传请求对象，客户端上传文件时enctype属性的必须属性值设为multipart/form-data；不过由于客户端使用bootstrap框架，好像默认就是了
	 * @return
	 */
	@PostMapping(value="update")
	public @ResponseBody String updateUser(HttpServletRequest request, MultipartHttpServletRequest multipartRequest) {
		String uname = request.getParameter("uname");
		String telephone = request.getParameter("telephone");
		String email = request.getParameter("email");
		Long uid = Long.parseLong(request.getParameter("uid"));
		User user = userService.findById(uid);
		String uicon = null;
		//判断是否有文件上传（根据客户端判断后的结果）
		if (Boolean.parseBoolean(request.getParameter("isMultipart"))) {
            MultipartFile file = multipartRequest.getFile("file");//获取上传文件
            String path = request.getSession().getServletContext().getRealPath("/views/admin/images/userIcon/");//文件存放路径
    		uicon = UploadFile.uploadImage(file,path);//保存文件
		}
		if(user!=null) {
			user.setUname(uname);
			user.setTelephone(telephone);
			user.setEmail(email);
			if(uicon!=null) {
				user.setUicon(uicon);
			}
			userService.save(user);
			return "{\"result\":\"success\"}";
		}else {
			return "{\"result\":\"fail\"}";
		}
	}
	/**
	 * 实现批量删除用户
	 * @param map 接受前台json数据
	 */
	@PostMapping(value="deleteByIds")
	public @ResponseBody void deleteByUids(@RequestBody Map<String,String> map) {
		String[] strIds = map.get("ids").split(",");//将数据ids转换成string数组
		Long[] ids = new Long[strIds.length];
		//将ids的string数组转换成Long数组，方便直接调用系统函数
		for(int i=0;i<strIds.length;i++) {
			ids[i] = Long.parseLong(strIds[i]);
		}
		if(ids!=null) {
			userService.deleteAll(ids);
		}
	}
	/**
	 * 实现删除当个用户
	 * @param map 接收前台json数据
	 */
	@PostMapping(value="delete")
	public @ResponseBody void deleteByUid(@RequestBody Map<String,String> map) {
		Long uid = null;
		if(map.containsKey("uid")){
	        uid = Long.parseLong(map.get("uid"));
	    }
		userService.deleteById(uid);
	}
	
	/**
	 * 实现用户状态的修改
	 * @param map 接收前台json数据
	 * @return
	 */
	@PostMapping(value="changeEnable")
	public @ResponseBody String changeEnable(@RequestBody Map<String, String> map) {
		Long uid = null;
		Boolean newEnable = null;
		if(map.containsKey("uid")){
	        uid = Long.parseLong(map.get("uid"));
	    }
	    if(map.containsKey("newEnable")){
	        newEnable =Boolean.parseBoolean(map.get("newEnable"));
	    }
		User user = userService.findById(uid);
		if(user!=null) {
			user.setEnable(newEnable);
			userService.save(user);
			return "{\"result\":\"success\"}";
		}else {
			return "{\"result\":\"fail\"}";
		}
		
	}
	/**
	 * 实现管理员分页、查询管理
	 * @param pageNo 当前页
	 * @param length 每页的长度
	 * @param draw 没有特别作用，前台传来什么就返回什么，没有则返回1
	 * @param extraSerach 查询条件，实现模糊查询
	 * @return
	 */
	@PostMapping(value="showPage")
	public @ResponseBody String showPage(@RequestParam Integer pageNo,Integer length,Integer draw,String extraSerach) {
		UserQueryDto queryDto = new UserQueryDto();
		queryDto.setKey(extraSerach);
		PageRequest pageable = PageRequest.of(pageNo, length, Direction.ASC, "uid");
		Page<User> userPage = userService.findAll(UserQueryDto.getSpecification(queryDto), pageable);
		HashMap<String, Object> result = new HashMap<>();
		List<User> data = new ArrayList<User>();
		for (User user : userPage.getContent()) {
			user.setSalt(null);
			user.setUpassword(null);
			user.setType(null);
			data.add(user);
		}
		result.put("data", data);//用户数据
		result.put("draw", draw);
		result.put("recordsTotal", userPage.getTotalElements());//总记录数
		result.put("recordsFiltered", userPage.getTotalElements());//查询过滤后的总记录数，跟recordsTotal保持一致，前台会根据数据自动进行显示
		ObjectMapper jsonObject = new ObjectMapper();
		String json = null;
		try {
			json = jsonObject.writeValueAsString(result);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return json;
	}
}
