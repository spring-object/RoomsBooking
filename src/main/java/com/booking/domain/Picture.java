package com.booking.domain;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/*
 * 图片实体类
 */
@Entity
@Table(name="t_picture")
public class Picture {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long pid;				//图片id
	
	@ManyToOne(fetch=FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinColumn(name="hid") 		//设置外键
	private Hotel hotel;			//酒店id
	
	@ManyToOne(fetch=FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinColumn(name="cid") 		//设置外键
	private Comment comment;        //评论id
	
	@ManyToOne(fetch=FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinColumn(name="rid") 		//设置外键
	private Room room;          	//房间id
	
	private String src;       		//资源地址

	public Long getPid() {
		return pid;
	}

	public void setPid(Long pid) {
		this.pid = pid;
	}

	public Hotel getHotel() {
		return hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}

	public Comment getComment() {
		return comment;
	}

	public void setComment(Comment comment) {
		this.comment = comment;
	}

	public Room getRoom() {
		return room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}

	public String getSrc() {
		return src;
	}

	public void setSrc(String src) {
		this.src = src;
	}

	@Override
	public String toString() {
		return "Picture [pid=" + pid + ", hotel=" + hotel + ", comment=" + comment + ", room=" + room + ", src=" + src
				+ "]";
	}
	
}
