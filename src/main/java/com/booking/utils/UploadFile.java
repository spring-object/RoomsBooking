package com.booking.utils;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class UploadFile {
	public static String uploadImage(MultipartFile imageFile,String path){
	        String newImageName = null;
	        if (!imageFile.isEmpty()) { 
	       // String realPath = "D:\\sts-bundle\\workplace\\RoomsBooking\\views\\admin\\images\\userIcon\\";  
	        String originalName = imageFile.getOriginalFilename();  
	        String uuidName = UUID.randomUUID().toString(); 
	        newImageName = uuidName + originalName.substring(originalName.lastIndexOf("."));  
	        File file = new File(path,newImageName);
	        System.out.println(path + newImageName);
			try {
				imageFile.transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
			}
	    }
		return newImageName;
	}
}
