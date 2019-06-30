package com.booking.utils;

import java.security.GeneralSecurityException;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import com.sun.mail.util.MailSSLSocketFactory;


 //activation-jar
 //javax.mail-jar


public class SendEmail {

		//发送普通邮件,参数一:发送邮件的邮箱地址,参数二:发送邮件的用户名(邮箱地址),参数三发送邮件的邮箱的授权码:,参数四:要发送到的邮箱地址,参数五:发送邮件的标题,参数六:发送邮件的内容
		public static boolean sendSimple_163_Mail(String strFromMail, final String strUser, final String strLicenseCode,String strToMail,String strMailTitle, String strMailContent) {
			if(null==strFromMail||null==strUser||null==strLicenseCode||null==strToMail||null==strMailTitle||null==strMailContent) {
				return false;
			}
			final String strHost = "smtp.163.com";  				//邮件服务器, 指定发送邮件的主机为 smtp.163.com
	        Properties propertiesObj = System.getProperties();		// 获取系统属性
	        propertiesObj.setProperty("mail.smtp.host", strHost);	// 设置邮件服务器
	        propertiesObj.put("mail.smtp.auth", "true");
	        
	        MailSSLSocketFactory mailSSLSocketFactoryObj;
			try {
				mailSSLSocketFactoryObj = new MailSSLSocketFactory();//设置SSL加密
		        mailSSLSocketFactoryObj.setTrustAllHosts(true);
		        propertiesObj.put("mail.smtp.ssl.enable", "true");
		        propertiesObj.put("mail.smtp.ssl.socketFactory", mailSSLSocketFactoryObj);
		        
		        Session session = Session.getDefaultInstance(propertiesObj,new Authenticator(){// 获取默认session对象
		            public PasswordAuthentication getPasswordAuthentication()
		            {
		                return new PasswordAuthentication(strUser, strLicenseCode); //发件人邮件用户名、授权码
		            }
		        });
	            MimeMessage messageObj = new MimeMessage(session);		// 创建默认的 MimeMessage 对象
	            messageObj.setFrom(new InternetAddress(strFromMail));	// Set From: 头部头字段
	            messageObj.addRecipient(Message.RecipientType.CC, new InternetAddress(strFromMail));	//给自己抄送一份,防止报错554 DT:SPM
	            messageObj.addRecipient(Message.RecipientType.TO, new InternetAddress(strToMail));		// Set To: 头部头字段
	            messageObj.setSubject(strMailTitle);//,"GB2312");// Set Subject: 头部头字段GB2312
	            messageObj.setText(strMailContent);//,"text/plain;charset=GB2312");	// 设置消息体
	            
	            Transport.send(messageObj);// 发送消息
	            System.out.println("邮件成功发送");
	            return true;
	        }catch (MessagingException mex) {
	            mex.printStackTrace();
	        } catch (GeneralSecurityException e) {
				e.printStackTrace();
			}
			return false;
	    }
		
		//发送含有HTML内容的邮件,参数一:发送邮件的邮箱地址,参数二:发送邮件的用户名(邮箱地址),参数三发送邮件的邮箱的授权码:,参数四:要发送到的邮箱地址,参数五:发送邮件的标题,参数六:发送邮件的内容
		public static boolean sendHTML_163_Mail(String strFromMail, final String strUser, final String strLicenseCode,String strToMail,String strMailTitle, String strMailContent){
			if(null==strFromMail||null==strUser||null==strLicenseCode||null==strToMail||null==strMailTitle||null==strMailContent) {
				return false;
			}
			final String strHost = "smtp.163.com";  				//邮件服务器, 指定发送邮件的主机为smtp.163.com
		    Properties propertiesObj = System.getProperties();		// 获取系统属性
		    propertiesObj.setProperty("mail.smtp.host", strHost);	// 设置邮件服务器
		    propertiesObj.put("mail.smtp.auth", "true");
		    try {
			    MailSSLSocketFactory mailSSLSocketFactoryObj = new MailSSLSocketFactory();			//设置SSL加密
			    mailSSLSocketFactoryObj.setTrustAllHosts(true);
		        propertiesObj.put("mail.smtp.ssl.enable", "true");
		        propertiesObj.put("mail.smtp.ssl.socketFactory", mailSSLSocketFactoryObj);
		        
		        Session session = Session.getDefaultInstance(propertiesObj,new Authenticator(){		// 获取默认session对象
		            public PasswordAuthentication getPasswordAuthentication()
		            {
		                return new PasswordAuthentication(strUser, strLicenseCode); 				//发件人邮件用户名、授权码
		            }
		        });
	            MimeMessage messageObj = new MimeMessage(session);	// 创建默认的 MimeMessage 对象
	            messageObj.setFrom(new InternetAddress(strFromMail));// Set From: 头部头字段
	            messageObj.addRecipient(Message.RecipientType.CC, new InternetAddress(strFromMail));//给自己抄送一份,防止报错554 DT:SPM
	            messageObj.addRecipient(Message.RecipientType.TO, new InternetAddress(strToMail));	// Set To: 头部头字段
	            messageObj.setSubject(strMailTitle,"GB2312");				// Set Subject: 头部头字段
	            messageObj.setContent(strMailContent,"text/html;charset=GB2312");	// 发送 HTML 消息, 可以插入html标签
	            
	            Transport.send(messageObj);							// 发送消息
	            System.out.println("邮件成功发送");
	            return true;
	        }catch (MessagingException mex) {
	            mex.printStackTrace();
	        } catch (GeneralSecurityException e) {
				e.printStackTrace();
			}
		    return false;
	    }
		
		//发送含有HTML内容的邮件,参数一:发送邮件的邮箱地址,参数二:发送邮件的用户名(邮箱地址),参数三发送邮件的邮箱的授权码:,参数四:要发送到的邮箱地址,参数五:发送邮件的标题,参数六:发送邮件的内容,参数七:附件路径
		public static boolean sendAttachment_163_Mail(String strFromMail, final String strUser, final String strLicenseCode,String strToMail,String strMailTitle, String strMailContent, String strFilePath) {
			if(null==strFromMail||null==strUser||null==strLicenseCode||null==strToMail||null==strMailTitle||null==strMailContent||null==strFilePath) {
				return false;
			}
			final String strHost = "smtp.163.com";  				//邮件服务器, 指定发送邮件的主机为smtp.163.com
	        Properties propertiesObj = System.getProperties();		// 获取系统属性
	        propertiesObj.setProperty("mail.smtp.host", strHost);	// 设置邮件服务器
	        propertiesObj.put("mail.smtp.auth", "true");
				        
			MailSSLSocketFactory mailSSLSocketFactoryObj;
			try {
				mailSSLSocketFactoryObj = new MailSSLSocketFactory();//设置SSL加密
				mailSSLSocketFactoryObj.setTrustAllHosts(true);
				propertiesObj.put("mail.smtp.ssl.enable", "true");
				propertiesObj.put("mail.smtp.ssl.socketFactory", mailSSLSocketFactoryObj);
					        
				Session session = Session.getDefaultInstance(propertiesObj,new Authenticator(){	// 获取默认session对象
				public PasswordAuthentication getPasswordAuthentication()
				{
					  return new PasswordAuthentication(strUser, strLicenseCode); 			//发件人邮件用户名、授权码
				}
				});
				
				MimeMessage messageObj = new MimeMessage(session);		// 创建默认的 MimeMessage 对象
				messageObj.setFrom(new InternetAddress(strFromMail));	// Set From: 头部头字段
				messageObj.addRecipient(Message.RecipientType.CC, new InternetAddress(strFromMail));//给自己抄送一份,防止报错554 DT:SPM
				messageObj.addRecipient(Message.RecipientType.TO, new InternetAddress(strToMail));	// Set To: 头部头字段
				messageObj.setSubject(strMailTitle,"GB2312");					// Set Subject: 头部头字段
					            
				BodyPart messageBodyPart = new MimeBodyPart();			// 创建文本消息部分
				messageBodyPart.setText("This is message body"); 		// 消息
				Multipart multipartObj = new MimeMultipart();			// 创建多重消息
				multipartObj.addBodyPart(messageBodyPart); 				// 设置文本消息部分
					            
				messageBodyPart = new MimeBodyPart();					// 创建附件消息部分
				DataSource dataSourceObj = new FileDataSource(strFilePath);
				messageBodyPart.setDataHandler(new DataHandler(dataSourceObj));
				messageBodyPart.setFileName(getFileName(strFilePath));
				multipartObj.addBodyPart(messageBodyPart);
					            
				messageObj.setContent(multipartObj);// 发送完整消息
				Transport.send(messageObj);			// 发送消息
					            
				System.out.println("邮件成功发送");
				return true;
		}catch (MessagingException mex) {
			mex.printStackTrace();
		} catch (GeneralSecurityException e) {
			e.printStackTrace();
		}
		return false;
	}
					
	public static String getFileName(String strFilePath) {
		String strFilename=null;
		int iFilenameIndex=-1;
		if(null!=strFilePath) {
			strFilePath=strFilePath.replace(" ", "");//去除所有空格
			if(!"".equals(strFilePath)) {
				iFilenameIndex=strFilePath.lastIndexOf("\\");
				if(0<=iFilenameIndex) {
					strFilename=strFilePath.substring(iFilenameIndex+1);
				}
				else {
					strFilename=strFilePath;
				}
			}
		}
		System.out.println("strFilePath: "+strFilePath);
		System.out.println("strFilename: "+strFilename);
		return strFilename;
	}

}

//public void test163Email() {
//	try {
//		SendEmail.sendSimple_163_Mail("skyline_software@163.com", "skyline_software@163.com", "ep01918","1578579387@qq.com","This is message title","This is message body");
//		//SendEmail.sendHTML_163_Mail("skyline_software@163.com", "skyline_software@163.com", "ep01918","sudo_skyline@163.com","This is message title","<h1>This is message body</h1>");
//		//SendEmail.sendAttachment_163_Mail("skyline_software@163.com", "skyline_software@163.com", "ep01918","sudo_skyline@163.com","邮件标题","邮件内容","src\\main\\java\\cn\\skylinex\\utils\\message\\email\\code.txt");
//	} catch (Exception e) {
//		e.printStackTrace();
//	}
//}

//public class SendQQMailUtil {
//    
//    public static void main(String[] args) throws AddressException,MessagingException {
//        Properties properties = new Properties();
//        properties.put("mail.transport.protocol", "smtp");// 连接协议
//        properties.put("mail.smtp.host", "smtp.qq.com");// 主机名
//        properties.put("mail.smtp.port", 465);// 端口号
//        properties.put("mail.smtp.auth", "true");
//        properties.put("mail.smtp.ssl.enable", "true");// 设置是否使用ssl安全连接 ---一般都使用
//        properties.put("mail.debug", "true");// 设置是否显示debug信息 true 会在控制台显示相关信息
//        // 得到回话对象
//        Session session = Session.getInstance(properties);
//        // 获取邮件对象
//        Message message = new MimeMessage(session);
//        // 设置发件人邮箱地址
//        message.setFrom(new InternetAddress("xxx@qq.com"));
//        // 设置收件人邮箱地址 
//        message.setRecipients(Message.RecipientType.TO, new InternetAddress[]{new InternetAddress("xxx@qq.com"),new InternetAddress("xxx@qq.com"),new InternetAddress("xxx@qq.com")});
//        //message.setRecipient(Message.RecipientType.TO, new InternetAddress("xxx@qq.com"));//一个收件人
//        // 设置邮件标题
//        message.setSubject("xmqtest");
//        // 设置邮件内容
//        message.setText("邮件内容邮件内容邮件内容xmqtest");
//        // 得到邮差对象
//        Transport transport = session.getTransport();
//        // 连接自己的邮箱账户
//        transport.connect("xxx@qq.com", "xxxxxxxxxxxxx");// 密码为QQ邮箱开通的stmp服务后得到的客户端授权码
//        // 发送邮件
//        transport.sendMessage(message, message.getAllRecipients());
//        transport.close();
//    }
//}
