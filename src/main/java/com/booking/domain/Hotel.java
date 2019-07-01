package com.booking.domain;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;

/*
 * 酒店实体类
 * */
@Entity
@Table(name="t_hotel")
public class Hotel {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long hid;               //酒店id
	
	private String hname;			//酒店名称
	private String address;			//地址
	private String info;			//简介
	private String equipment;		//设备
	
	@OneToMany(fetch=FetchType.EAGER,mappedBy="hotel",cascade=CascadeType.ALL)
	@JsonBackReference
	private Set<Picture> pictures = new HashSet<Picture>();//酒店图片
	
	public Long getHid() {
		return hid;
	}
	public void setHid(Long hid) {
		this.hid = hid;
	}
	public String getHname() {
		return hname;
	}
	public void setHname(String hname) {
		this.hname = hname;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getEquipment() {
		return equipment;
	}
	public void setEquipment(String equipment) {
		this.equipment = equipment;
	}
	public Set<Picture> getPictures() {
		return pictures;
	}
	public void setPictures(Set<Picture> pictures) {
		this.pictures = pictures;
	}
	@Override
	public String toString() {
		return "Hotel [hid=" + hid + ", hname=" + hname + ", address=" + address + ", info=" + info + ", equipment="
				+ equipment + "]";
	}
	
}
