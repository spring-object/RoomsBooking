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
	
	
	@PostMapping(value="update")
	public @ResponseBody String updateUser(HttpServletRequest request, @RequestParam("file") MultipartFile file) {
		String uname = request.getParameter("uname");
		String telephone = request.getParameter("telephone");
		String email = request.getParameter("email");
		Long uid = Long.parseLong(request.getParameter("uid"));
		User user = userService.findById(uid);
		String path = request.getSession().getServletContext().getRealPath("/views/admin/images/userIcon/");
		String uicon = UploadFile.uploadImage(file,path);
		System.out.println("uid:"+uid+",uname:"+uname+",telephone:"+telephone+",email:"+email+",uicon:"+uicon);
		if(user!=null) {
			user.setUname(uname);
			user.setTelephone(telephone);
			user.setEmail(email);
			user.setUicon(uicon);
			userService.save(user);
			return "{\"result\":\"success\"}";
		}else {
			return "{\"result\":\"fail\"}";
		}
	}
	
	@PostMapping(value="deleteByIds")
	public @ResponseBody void deleteByUids(@RequestBody Map<String,String> map) {
		String[] strIds = map.get("ids").split(",");
		Long[] ids = new Long[strIds.length];
		for(int i=0;i<strIds.length;i++) {
			ids[i] = Long.parseLong(strIds[i]);
		}
		if(ids!=null) {
			userService.deleteAll(ids);
		}
	}
	
	@PostMapping(value="delete")
	public @ResponseBody void deleteByUid(@RequestBody Map<String,String> map) {
		Long uid = null;
		if(map.containsKey("uid")){
	        uid = Long.parseLong(map.get("uid"));
	    }
		userService.deleteById(uid);
	}
	
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
		result.put("data", data);
		result.put("draw", draw);
		result.put("recordsTotal", userPage.getTotalElements());
		result.put("recordsFiltered", userPage.getTotalElements());
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
