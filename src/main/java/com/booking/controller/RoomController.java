package com.booking.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.booking.domain.Picture;
import com.booking.domain.Room;
import com.booking.domain.RoomQueryDto;
import com.booking.domain.User;
import com.booking.service.PictureService;
import com.booking.service.RoomService;
import com.booking.utils.UploadFile;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.json.JsonWriteContext;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping(value="/room")
public class RoomController {
	@Autowired
	private RoomService roomService;
	@Autowired
	private PictureService pictureService;
	
	/**
	 * 根据pid删除已上传的图片并返回房间id重新加载已上传图片
	 * @param map
	 * @return
	 */
	@PostMapping(value="deletePicture")
	public @ResponseBody String deletePicture(@RequestBody Map<String,String> map,HttpServletRequest request) {
		Long pid = null;
		if(map.containsKey("pid")) {
			pid = Long.parseLong(map.get("pid"));
		}
		Picture picture = pictureService.findById(pid);
		String src = picture.getSrc();
		Long rid = picture.getRoom().getRid();
		picture.setRoom(null);//解除关联关系，还要保存到数据库才生效，不然删不了图片
		pictureService.save(picture);
		String realPath = "/views/admin/images/rooms/"+src;
		String picturePath = request.getSession().getServletContext().getRealPath(realPath);//图片存放路径
		File file = new File(picturePath);
		if(file.exists()) {
			file.delete();//删除本地图片
		}
		pictureService.deleteById(pid);//删除数据库的图片
		HashMap<String, Object> data = new HashMap<String,Object>();
        data.put("rid", rid);//返回房间id重新加载删除后的已上传图片
		ObjectMapper om = new ObjectMapper();
		String json = null;
		try {
			json = om.writeValueAsString(data);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return json;
	}
	
	/**
	 * 展示房间图片
	 * @param map
	 * @return
	 */
	@PostMapping(value="showPictures")
	public @ResponseBody String showPictures(@RequestBody Map<String,String> map) {
		Long rid = null;
		if(map.containsKey("rid")) {
			rid = Long.parseLong(map.get("rid"));
		}
		List<Picture> pictures = pictureService.findRoomPictures(rid);
		HashMap<String, Object> data = new HashMap<String,Object>();
		ObjectMapper om = new ObjectMapper();
		String json = null;
		if(!pictures.isEmpty()) {
			data.put("pictures", pictures);
			data.put("result", "success");
		}else {
			data.put("result", "fail");
		}
		try {
			json = om.writeValueAsString(data);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return json;
	}
	
	/**
	 * 更新房间图片
	 * @param request
	 * @param response
	 * @return
	 */
	@PostMapping(value="upload")
	public @ResponseBody String uploadPicture(HttpServletRequest request,HttpServletResponse response) {
		Long rid = Long.parseLong(request.getParameter("rid"));
		Room room = roomService.findById(rid);
		System.out.println("更新rid="+rid+"的图片");
        MultipartHttpServletRequest Murequest = (MultipartHttpServletRequest)request;
        Map<String, MultipartFile> files = Murequest.getFileMap();//得到文件map对象
        String path = request.getSession().getServletContext().getRealPath("/views/admin/images/rooms/");//文件存放路径
        File dir = new File(path);
        System.out.println(path);
        if(!dir.exists()) {//目录不存在则创建
            dir.mkdirs();
        }
        for(MultipartFile file :files.values()){
        	String roomPictureSrc = UploadFile.uploadImage(file,path);//保存文件
        	Picture p = new Picture();
        	p.setSrc(roomPictureSrc);
        	p.setRoom(room);
        	pictureService.save(p);
        }
        HashMap<String, Object> data = new HashMap<String,Object>();
        data.put("rid", rid);
		ObjectMapper om = new ObjectMapper();
		String json = null;
		try {
			json = om.writeValueAsString(data);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return json;
	}
	
	/**
	 * 添加房间，返回添加结果
	 * @param map
	 * @return
	 */
	@PostMapping(value="addRoom")
	public @ResponseBody String addRomm(@RequestBody Map<String,String> map) {
		Room room = new Room();
		if(map.containsKey("rname")) {
			room.setRname(map.get("rname"));
		}
		if(map.containsKey("type")) {
			room.setType(map.get("type"));
		}
		if(map.containsKey("info")) {
			room.setInfo(map.get("info"));
		}
		if(map.containsKey("equipment")) {
			room.setEquipment(map.get("equipment"));
		}
		if(map.containsKey("price")) {
			room.setPrice(Float.parseFloat(map.get("price")));
		}
		roomService.save(room);
		HashMap<String, String> data = new HashMap<String,String>();
		data.put("result", "success");
		ObjectMapper om = new ObjectMapper();
		String json = null;
		try {
			json = om.writeValueAsString(data);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return json;
	}
	
	/**
	 * 实现修改房间数据
	 * @param request 客户端请求对象
	 * @return
	 */
	@PostMapping(value="update")
	public @ResponseBody String updateRoom(@RequestBody Map<String, String> map) {
		Long rid = null;
		String rname = null;
		String type = null;
		String info = null;
		String equipment = null;
		Float price = null;
		if(map.containsKey("rid")) {
			rid = Long.parseLong(map.get("rid"));
		}
		if(map.containsKey("rname")) {
			rname = map.get("rname");
		}
		if(map.containsKey("type")) {
			type = map.get("type");
		}
		if(map.containsKey("info")) {
			info = map.get("info");
		}
		if(map.containsKey("equipment")) {
			equipment = map.get("equipment");
		}
		if(map.containsKey("price")) {
			price = Float.parseFloat(map.get("price"));
		}
		Room room = roomService.findById(rid);
		System.out.println("接收数据:"+rname+rid+type+info+equipment+price);
		if(room!=null) {
			room.setRname(rname);
			room.setType(type);
			room.setInfo(info);
			room.setEquipment(equipment);
			room.setPrice(price);
			roomService.save(room);
			return "{\"result\":\"success\"}";
		}else {
			return "{\"result\":\"fail\"}";
		}
	}
	
	
	/**
	 * 实现批量删除房间并删除相应房间的图片
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
			roomService.deleteAll(ids);
			pictureService.deleteAll(ids);
		}
	}
	
	/**
	 * 根据rid删除单个房间并删除相应房间的图片
	 * @param map
	 */
	@PostMapping(value="/delete")
	public @ResponseBody void deleteByRid(@RequestBody Map<String,Long> map) {
		Long rid = map.get("rid");
		if(rid!=null) {
			roomService.deleteById(rid);
			pictureService.deleteById(rid);
		}
	}
	
	
	/**
	 * 实现房间分页、查询管理
	 * @param pageNo 当前页
	 * @param length 每页的长度
	 * @param draw 没有特别作用，前台传来什么就返回什么，没有则返回1
	 * @param extraSerach 查询条件，实现模糊查询
	 * @return
	 */
	@PostMapping(value="showPage")
	public @ResponseBody String showPage(@RequestParam Integer pageNo,Integer length,Integer draw,String extraSerach) {
		RoomQueryDto roomQueryDto = new RoomQueryDto();
		roomQueryDto.setKey(extraSerach);
		Specification<Room> specification = roomQueryDto.getSpecification(roomQueryDto);
		PageRequest pageable = PageRequest.of(pageNo, length, Direction.ASC, "rid");
		Page<Room> page = roomService.findAll(specification, pageable);
		HashMap<String, Object> map = new HashMap<String, Object>();
		ArrayList<Room> data = new ArrayList<Room>();
		for (Room room : page.getContent()) {
			data.add(room);
		}
		map.put("data", data);
		map.put("draw", draw);
		map.put("recordsTotal",page.getTotalElements());
		map.put("recordsFiltered",page.getTotalElements());
		ObjectMapper om = new ObjectMapper();
		String json = null;
		try {
			json = om.writeValueAsString(map);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return json;
	}
}
