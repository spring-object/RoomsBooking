package com.booking.utils;

import java.util.List;

public class Paging<T> {
//	code\": 0\r\n" + 
//			"  ,\"msg\": \"\"\r\n" + 
//			"  ,\"count\": 3000000\r\n" + 
//			"  ,\"data\": [{\r\n" + 
//			"    \"id\": \"10001\"\r\n" + 
	private int code=0;
	private String msg="";
	private long count;
	private List<T> data;
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public long getCount() {
		return count;
	}
	public void setCount(long l) {
		this.count = l;
	}
	public List<T> getData() {
		return data;
	}
	public void setData(List<T> data) {
		this.data = data;
	}
	@Override
	public String toString() {
		return "Paging [code=" + code + ", msg=" + msg + ", count=" + count + ", data=" + data + "]";
	}
	
}
