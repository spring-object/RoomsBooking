package com.booking.utils;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;


//支持SHA256 384 512 不支持SHA1 224

public class SHA2 {

	//检查是否支持该版本SHA2
	//返回值(boolean):支持返回true，不支持抛出异常RuntimeExceptionProcess,参数一(String):SHA2的版本
	//若不支持该版本HMAC抛出异常RuntimeExceptionProcess
	public static boolean versionControl(String strSHAVersion)  {
		if("SHA-256".equals(strSHAVersion)||"SHA-384".equals(strSHAVersion)||"SHA-512".equals(strSHAVersion)) {
			return true;
		}
		return false;
	}
	
	//获取字节码加密文本
	//返回值:字节码加密文本,参数一(byte[]):待加密的字节码文本,参数二(String)SHA的版本
	public static byte[] getEncryptionText(byte[] bytesData, String strSHAVersion)   {
		if(null==bytesData||null==strSHAVersion) {
			return null;
		}
		if(!versionControl(strSHAVersion)) {
			return null;
		}
		try {
			return (MessageDigest.getInstance(strSHAVersion)).digest(bytesData);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	//获取字符串加密文本
	//返回值:字符串加密文本,参数一(String):待加密的字符串文本,参数二(String)SHA的版本
	public static String getEncryptionText(String strData, String strSHAVersion)   {
		if(null==strData||null==strSHAVersion) {
			return null;
		}
		try {
			BigInteger biEncryData=new BigInteger(getEncryptionText(strData.getBytes("utf-8"),strSHAVersion));
			return biEncryData.toString(16);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	//获取加盐的字符串加密文本
	//返回值:字符串加密文本,参数一(String):待加密的字符串文本,参数二(String):字符串盐,参数三(String):SHA的版本
	public static String getEncryptionText(String strData,String strSalt, String strSHAVersion)   {
		if(null==strData||null==strSalt||null==strSHAVersion) {
			return null;
		}
		try {
			byte[] bytesData=getEncryptionText(strData.getBytes("utf-8"),strSHAVersion);
			byte[] bytesSalt=strSalt.getBytes("utf-8");
			int iDataLen=bytesData.length;
			int iSaltLen=bytesSalt.length;
			int i=0,j=0;
			byte[] bytesNewData=new byte[iDataLen+iSaltLen];
			for(;i<iDataLen;i++) {
				bytesNewData[i]=bytesData[i];
			}
			for(;j<iSaltLen;j++) {
				bytesNewData[i+j]=bytesSalt[j];
			}
			BigInteger biEncryData=new BigInteger(getEncryptionText(bytesNewData,strSHAVersion));
			return biEncryData.toString(16);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return null;
	}
}
