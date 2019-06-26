package com.booking.utils;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class UploadFile {
	/**
	 * 保存文件到指定路径
	 * @param imageFile  上传的文件
	 * @param path 保存路径
	 * @return 返回新文件，以便存入数据库
	 */
	public static String uploadImage(MultipartFile imageFile,String path){
	        String newImageName = null;
	        if (!imageFile.isEmpty()) { 
		        String originalName = imageFile.getOriginalFilename();  
		        String uuidName = UUID.randomUUID().toString();//自动生成一串唯一的字符串
		        newImageName = uuidName + originalName.substring(originalName.lastIndexOf("."));//将唯一字符串与文件类型进行拼接形成新文件名
		        File file = new File(path,newImageName);//新建文件
			try {
				imageFile.transferTo(file);//保存文件到路径path
			} catch (Exception e) {
				e.printStackTrace();
			}
	    }
		return newImageName;
	}
}
