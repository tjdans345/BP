package com.spring.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("ms")
public class MemberService {
	@Autowired
	private MemberDAO mdao;
	public void addMember(MemberVO memberVO) {
		
		int rs = mdao.addMember(memberVO);
		//회원가입 성공 시 (싱어일때 /추가해야함 준호가 회원가입시 싱어랑 리스너 구분짓는거 구현 예정) 싱어페이지 생성 구문
		if(rs==1) {
			String id = memberVO.getId();
			mdao.addSinger(id);
		}
	}
	
	public String loginMember(MemberVO memberVO) {
		
		String msg = "";

		List list = mdao.idCheck(memberVO.getId()); 
		if(list.size()==0) {
			msg="아이디를 확인해주세요";
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
