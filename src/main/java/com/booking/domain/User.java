package com.booking.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

//CREATE TABLE `t_user` (
//`uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
//`uname` varchar(255) DEFAULT NULL,
//`upassword` varchar(255) NOT NULL,
//`salt` varchar(255) NOT NULL,
//`enable` int(1) NOT NULL DEFAULT '0',
//`uicon` varchar(255) DEFAULT NULL,
//`telephone` varchar(11) DEFAULT NULL,
//`email` varchar(255) DEFAULT NULL,
//`create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
//`type` int(11) NOT NULL,
//PRIMARY KEY (`uid`)
//) ENGINE=InnoDB DEFAULT CHARSET=utf8;

@Entity
@Table(name="t_user")
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long uid;
	private String uname;
	@Size(min=128)
	private String upassword;
	private String salt;
	private Boolean enable=false;
	private String uicon="/views/manageUser/images/default_avatar.png";
	@Size(min=11,max=11)
	private String telephone;
	private String email;
	@DateTimeFormat(pattern="yy/MM/dd HH:mm:ss")
	@JsonFormat(pattern="yy/MM/dd HH:mm:ss")
	@Column(columnDefinition="timestamp default current_timestamp comment '创建时间'") 
	private Date create_time=new Date();
	private Integer type=0;//0管理员 1用户管理员 2普通用户
	public Long getUid() {
		return uid;
	}
	public void setUid(Long uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	public Boolean getEnable() {
		return enable;
	}
	public void setEnable(Boolean enable) {
		this.enable = enable;
	}
	public String getUicon() {
		return uicon;
	}
	public void setUicon(String uicon) {
		this.uicon = uicon;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getCreate_time() {
		return create_time;
	}
	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", upassword=" + upassword + ", salt=" + salt + ", enable="
				+ enable + ", uicon=" + uicon + ", telephone=" + telephone + ", email=" + email + ", create_time="
				+ create_time + ", type=" + type + "]";
	}
	
}
