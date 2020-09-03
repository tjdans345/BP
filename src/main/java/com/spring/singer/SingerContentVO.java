package com.spring.singer;

import java.sql.Timestamp;

public class SingerContentVO {
	private int num;
	private String content;
	private Timestamp writedate;
	private String userid;
	private String singerid;
	private int slike;
	
	//getter setter 메소드
	public int getUnm() {
		return num;
	}
	public void setUnm(int num) {
		this.num = num;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getWritedate() {
		return writedate;
	}
	public void setWritedate(Timestamp writedate) {
		this.writedate = writedate;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getSingerid() {
		return singerid;
	}
	public void setSingerid(String singerid) {
		this.singerid = singerid;
	}
	public int getSlike() {
		return slike;
	}
	public void setSlike(int slike) {
		this.slike = slike;
	}
	
	
	

}
