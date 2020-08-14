package com.spring.busking;

import java.sql.Timestamp;


import org.springframework.stereotype.Component;

//@Component
public class BuskingVO {

	private int num;
	private String sid, loc1,loc2,loc3,content;
	private String stime, etime;

	

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
	public String getStime() {
		return stime;
	}
	public void setStime(String stime) {
		this.stime = stime;
	}
	public String getEtime() {
		return etime;
	}
	public void setEtime(String etime) {
		this.etime = etime;
	}
	
	
	
}
