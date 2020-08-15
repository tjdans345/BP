package com.spring.mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.member.MemberVO;

@Service
public class MyService {
	@Autowired
	private MyDAO mydao;
	
	public MemberVO meminfo(String id) {
		return mydao.meminfo(id);
	}

}
