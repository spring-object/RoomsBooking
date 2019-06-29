package com.booking.utils;

import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.util.Date;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

import org.apache.commons.codec.binary.Base64;

//生成密钥对，获取密钥，加密/解密

public class RSA {

	private KeyPairGenerator m_keyPairGen=null;
	private PrivateKey m_privateKey=null;
	private PublicKey m_publicKey=null;
	private RSAPublicKey m_RSAPublicKey=null;
	private static final int M_SF_KEYLENGTH=1024;
	
	public RSA() {
		keyPairGenerator();
	}

	//生成密钥对
	private void keyPairGenerator() {//返回值:无
		try {
			m_keyPairGen = KeyPairGenerator.getInstance("RSA");
			SecureRandom secureRandom = new SecureRandom();
			secureRandom.setSeed(new Date().getTime());
			m_keyPairGen.initialize(M_SF_KEYLENGTH, secureRandom);

			KeyPair keyPair=m_keyPairGen.generateKeyPair();
			
			m_publicKey=keyPair.getPublic();
			m_privateKey=keyPair.getPrivate();
			
			X509EncodedKeySpec x509KeySpecObj=new X509EncodedKeySpec(m_publicKey.getEncoded());
			KeyFactory keyFactoryObj=KeyFactory.getInstance("RSA");
			m_RSAPublicKey=(RSAPublicKey) keyFactoryObj.generatePublic(x509KeySpecObj);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (InvalidKeySpecException e) {
			e.printStackTrace();
		}
	}
	
	public String getStrPublicExponent() {
		if(null==m_RSAPublicKey) {
			return null;
		}
		return m_RSAPublicKey.getPublicExponent().toString(16);
	}
	
	public String getStrModulus() {
		if(null==m_RSAPublicKey) {
			return null;
		}
		return m_RSAPublicKey.getModulus().toString(16);
	}
	
	//获取字符串类型公钥
	public String getStrPublicKey() {//返回值:字符串类型公钥
		if(null==m_publicKey) {
			return null;
		}
		try {
			return new String(Base64.encodeBase64(m_publicKey.getEncoded()), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return null;
	}
	
/*	//获取字符串类型密钥
	public String getStrPrivateKey() {//返回值:字符串类型私钥
		if(null == m_privateKey) {
			return null;
		}
		try {
			return new String(Base64.encodeBase64(m_privateKey.getEncoded()), "utf-8");
		} catch (UnsupportedEncodingException e) {
			Log.writeErrLog(e);
		}
		return null;
	}*/
	
	//获取字符串类型的加密文本
	//返回值:字符串类型的加密文本,参数一:要加密的字符串文本,参数二:公钥字符串
	public String getStrEncryptionText(String strData) {
		if(null==strData) {
			return null;
		}
		try {
			byte[] bytesData=strData.getBytes("utf-8");
			X509EncodedKeySpec x509KeySpec=new X509EncodedKeySpec(m_publicKey.getEncoded());
			KeyFactory keyFactory=KeyFactory.getInstance("RSA");
			Key publicKey=keyFactory.generatePublic(x509KeySpec);

			Cipher cipher=Cipher.getInstance(keyFactory.getAlgorithm());
			cipher.init(Cipher.ENCRYPT_MODE, publicKey);
			return new String(Base64.encodeBase64(cipher.doFinal(bytesData)),"utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (InvalidKeySpecException e) {
			e.printStackTrace();
		} catch (NoSuchPaddingException e) {
			e.printStackTrace();
		} catch (InvalidKeyException e) {
			e.printStackTrace();
		} catch (IllegalBlockSizeException e) {
			e.printStackTrace();
		} catch (BadPaddingException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	//获取解密后的字符串文本
	//返回值:解密后的字符串文本,参数一:要解密的字符串文本,参数二:私钥字符串
	public String getStrDecryptionText(String strEncryData) {//解密
		if(null==strEncryData) {
			return null;
		}
		try {
			byte[] bytesEncryData=strEncryData.getBytes("utf-8");
			bytesEncryData=Base64.decodeBase64(bytesEncryData);
			PKCS8EncodedKeySpec pkcs8KeySpec=new PKCS8EncodedKeySpec(m_privateKey.getEncoded());
			KeyFactory keyFactory=KeyFactory.getInstance("RSA");
			Key privateKey=keyFactory.generatePrivate(pkcs8KeySpec);
			
			Cipher cipher=Cipher.getInstance(keyFactory.getAlgorithm());
			cipher.init(Cipher.DECRYPT_MODE, privateKey);
			return new String(cipher.doFinal(bytesEncryData),"utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (InvalidKeySpecException e) {
			e.printStackTrace();
		} catch (NoSuchPaddingException e) {
			e.printStackTrace();
		} catch (InvalidKeyException e) {
			e.printStackTrace();
		} catch (IllegalBlockSizeException e) {
			e.printStackTrace();
		} catch (BadPaddingException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public RSAPubExepAndModulus getPubExepAndModulus() {
		RSAPubExepAndModulus pubExepAndModulus=new RSAPubExepAndModulus();
		pubExepAndModulus.setModulus(m_RSAPublicKey.getModulus().toString(16));
		pubExepAndModulus.setPubExep(m_RSAPublicKey.getPublicExponent().toString(16));
		return pubExepAndModulus;
	}
	/*public static void main(String[] args) {
		RSA rsa=new RSA();
		String e1=rsa.getStrEncryptionText("abcdefg");
		String e2=rsa.getStrEncryptionText("abcdefg");
		System.out.println(e1);
		System.out.println(e2);
	}*/
}
