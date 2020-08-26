package com.spring.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
	@Autowired
	private MemberDAO mdao;
	public void addMember(MemberVO memberVO) {
		mdao.addMember(memberVO);
	}
	public String loginMember(MemberVO memberVO) {
		
		String msg = "";
<<<<<<< HEAD
		List list = mdao.idCheck(memberVO.getId());
		if(list.size() == 0) {
			msg="아이디를 입력하세요";
=======
		List list = mdao.idCheck(memberVO.getId()); 
		if(list.size()==0) {
			msg="아이디를 확인해주세요";
>>>>>>> da0298bc38d2ef1e0f96959560024922c1571e09
		}else {
			MemberVO VO = mdao.loginMember(memberVO.getId());
			if(memberVO.getPassword().equals(VO.getPassword())) {
				msg = "login";
			}else {
				msg = "비밀번호를 확인해주세요";
			}
		}
		
		return msg;
	}
	
	
		
}
