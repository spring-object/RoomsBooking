package com.booking.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

/*
 * 订单实体类
 * */
@Entity
@Table(name="t_order")
public class Order implements Serializable {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long oid;           //订单id
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="uid") 	//设置外键
	private User user;          //用户id
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="hid") 	//设置外键
	private Hotel hotel;        //酒店id
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="rid") 	//设置外键
	private Room room;          //房间id
	
	@DateTimeFormat(pattern = "yyyy/MM/dd HH:mm:ss")
	@Column(columnDefinition="timestamp default current_timestamp comment '创建时间'")
	private Date create_time;   //下单时间
	
	@DateTimeFormat(pattern = "yyyy/MM/dd HH:mm:ss")
	private Date start_time;    //入住时间
	
	@DateTimeFormat(pattern = "yyyy/MM/dd HH:mm:ss")
	private Date end_time;      //离开时间

	private float rprice;       //房间价格
	private int rcount;        	//房间数量
	private float totalPrice;   //订单总价
	private int status;      	//订单状态，共3个：0为已完成（可评价）、1为未使用（已付款）、2为待付款（可取消）
	
	public Long getOid() {
		return oid;
	}
	public void setOid(Long oid) {
		this.oid = oid;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Hotel getHotel() {
		return hotel;
	}
	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}
	public Room getRoom() {
		return room;
	}
	public void setRoom(Room room) {
		this.room = room;
	}
	public float getRprice() {
		return rprice;
	}
	public void setRprice(float rprice) {
		this.rprice = rprice;
	}
	
	@JsonFormat(pattern = "yyyy/MM/dd HH:mm:ss",timezone = "GMT+8")
	public Date getCreate_time() {
		return create_time;
	}
	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}
	public int getRcount() {
		return rcount;
	}
	public void setRcount(int rcount) {
		this.rcount = rcount;
	}
	
	@JsonFormat(pattern = "yyyy/MM/dd HH:mm:ss",timezone = "GMT+8")
	public Date getStart_time() {
		return start_time;
	}
	public void setStart_time(Date start_time) {
		this.start_time = start_time;
	}
	
	@JsonFormat(pattern = "yyyy/MM/dd HH:mm:ss",timezone = "GMT+8")
	public Date getEnd_time() {
		return end_time;
	}
	public void setEnd_time(Date end_time) {
		this.end_time = end_time;
	}
	
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	public float getTotalPrice() {
		return totalPrice;
	}
	
	public void setTotalPrice() {
		this.totalPrice = this.rprice * this.rcount;
	}
	
	@Override
	public String toString() {
		return "Order [oid=" + oid + ", user=" + user + ", hotel=" + hotel + ", room=" + room + ", create_time="
				+ create_time + ", start_time=" + start_time + ", end_time=" + end_time + ", rprice=" + rprice
				+ ", rcount=" + rcount + ", status=" + status + "]";
	}
	
}
