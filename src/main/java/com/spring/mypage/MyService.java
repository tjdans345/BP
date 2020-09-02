package com.spring.mypage;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.member.MemberVO;

@Service("mys")
public class MyService {
	@Autowired
	private MyDAO mydao;
	
	public MemberVO meminfo(String id) {
		return mydao.meminfo(id);
	}
	
	public int delmem(String id) {
		return mydao.delmem(id);
	}
	
	public String checkpwd(String id) {
		return mydao.checkpwd(id);
	}
	
	public void editmem(MemberVO memberVO) {
		mydao.editmem(memberVO);
	}

	public int passedit(String password2, String id) {
		HashMap map = new HashMap();
		map.put("password2", password2);
		map.put("id", id);
		return mydao.passedit(map);
	}

}
