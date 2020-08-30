package com.spring.member;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

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
	
//	public void emailcheck(String email, HttpServletResponse response) throws 
//		Exception{
//		PrintWriter out = response.getWriter();
//		out.println(manager.emailcheck(email));
//		out.close();
//	}
	
		
}
