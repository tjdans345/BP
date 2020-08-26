package com.spring.singer;

import java.sql.Timestamp;

public class SingerContentVO {
	private int num;
	private String id;
	private String introduce;
	private Timestamp date;
	
	//getter setter 메소드 
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	
	

}
