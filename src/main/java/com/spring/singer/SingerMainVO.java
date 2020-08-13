package com.spring.singer;

import java.sql.Date;

public class SingerMainVO {

	private int num; //댓글 번호
	private String id; //사용자 아이디
	private String content; //댓글 내용
	private String introduce; //간단 소개글 (싱어 전용)
	private Date date; //글 작성 날짜
	
	//getter setter; 메소드
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	
	
}
