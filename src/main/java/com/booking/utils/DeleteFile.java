package com.booking.utils;

import java.io.File;
import java.util.List;

import com.booking.domain.Picture;

public class DeleteFile {
	/**
	 * 删除图片时把本地图片也删除
	 * @param pictures 要删除的图片
	 * @param path 图片文件夹路径
	 */
	public static void deleteFile(List<Picture> pictures,String path) {
		String src = null;
		String realPath = null;
		for (Picture picture : pictures) {
			src = picture.getSrc();
			realPath = path+"/"+src;
			File file = new File(realPath);
			System.out.println(file.exists());
			if(file.exists()) {
				file.delete();//删除本地图片
			}
		}
	}
}
