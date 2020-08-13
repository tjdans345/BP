package com.spring.busking;

import java.sql.Timestamp;

public class BuskingVO {

	private int num;
	private String sid, loc1,loc2,loc3,content;
	private Timestamp stime, etime;
	
	
	
	public BuskingVO(int num, String sid, String loc1, String loc2, String loc3, String content, Timestamp stime,
			Timestamp etime) {
		super();
		this.num = num;
		this.sid = sid;
		this.loc1 = loc1;
		this.loc2 = loc2;
		this.loc3 = loc3;
		this.content = content;
		this.stime = stime;
		this.etime = etime;
	}
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getLoc1() {
		return loc1;
	}
	public void setLoc1(String loc1) {
		this.loc1 = loc1;
	}
	public String getLoc2() {
		return loc2;
	}
	public void setLoc2(String loc2) {
		this.loc2 = loc2;
	}
	public String getLoc3() {
		return loc3;
	}
	public void setLoc3(String loc3) {
		this.loc3 = loc3;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getStime() {
		return stime;
	}
	public void setStime(Timestamp stime) {
		this.stime = stime;
	}
	public Timestamp getEtime() {
		return etime;
	}
	public void setEtime(Timestamp etime) {
		this.etime = etime;
	}
	
	
	
}
