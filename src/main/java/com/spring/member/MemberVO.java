package com.spring.member;

import java.sql.Date;

public class MemberVO {
	private String name;
	private String id;
	private String password;
	private String email;
	private String phone;
	private String gender;
	private String location;
	private String profile_img;
	private int status;
	private String joindate;
	
	public MemberVO() {
		
	}
	
	public MemberVO(String name, String id, String password, String email, String phone, String gender, String location,
			String profile_img, int status, String joindate) {
		super();
		this.name = name;
		this.id = id;
		this.password = password;
		this.email = email;
		this.phone = phone;
		this.gender = gender;
		this.location = location;
		this.profile_img = profile_img;
		this.status = status;
		this.joindate = joindate;
	}

	public String getName() {
		return name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getProfile_img() {
		return profile_img;
	}

	public void setProfile_img(String profile_img) {
		this.profile_img = profile_img;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getjoindate() {
		return joindate;
	}

	public void setjoindate(String joindate) {
		this.joindate = joindate;
	}


}
