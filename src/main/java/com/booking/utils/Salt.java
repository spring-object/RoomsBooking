package com.booking.utils;

import java.util.LinkedList;
import java.util.Random;
//最大长度94，开始ascll 33
public class Salt {

	public static String getSalt(final int fiAscllStart,int iSaltLen){
		if(0>=iSaltLen) {
			return "";
		}
		StringBuffer bufStrSalt=new StringBuffer();
		LinkedList<String> listSaltOrigin=getSaltOrigin(fiAscllStart,iSaltLen);
		Random randomObj=new Random();
		int iRandomNum=0;
		for(;iSaltLen>0;iSaltLen--) {
			iRandomNum=randomObj.nextInt()%iSaltLen;
			iRandomNum=iRandomNum<0?-iRandomNum:iRandomNum;
			bufStrSalt.append(listSaltOrigin.get(iRandomNum));
			listSaltOrigin.remove(iRandomNum);
		}
		return bufStrSalt.toString();
	}

	private static LinkedList<String> getSaltOrigin(final int fiAscllStart,final int fiSaltLen){
		LinkedList<String> list =new LinkedList<String>();
		char temp=0;
		for(int i=0;i<fiSaltLen;i++) {
			temp=(char) (i+fiAscllStart);
			list.add(String.valueOf(temp));
		}
		return list;
	}
	
	/*public static void main(String[] args) {
		String strSalt=getSalt(33,10);
		System.out.println(strSalt);
		System.out.println(strSalt.length());
		strSalt=getSalt(33,94);
		System.out.println(strSalt);
		System.out.println(strSalt.length());
	}*/

}
