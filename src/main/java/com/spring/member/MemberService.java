package com.spring.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
	@Autowired
	private MemberDAO cc;
	public String dd() {
		return cc.aa();
	}
}
