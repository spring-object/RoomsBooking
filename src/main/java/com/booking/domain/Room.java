package com.booking.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/*
 * 房间实体类
 * */
@Entity
@Table(name="t_room")
public class Room {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long rid;				//房间id
	
	private String rname;			//房间名称
	private float price;			//房间价格
	private String type;			//房间类型
	private String info;			//简介
	private String equipment;		//设备
	
	public Long getRid() {
		return rid;
	}
	public void setRid(Long rid) {
		this.rid = rid;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
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
	
	@Override
	public String toString() {
		return "Room [rid=" + rid + ", rname=" + rname + ", price=" + price + ", type=" + type + ", info=" + info
				+ ", equipment=" + equipment + "]";
	}
	
}
