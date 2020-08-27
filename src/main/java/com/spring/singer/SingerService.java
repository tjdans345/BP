package com.spring.singer;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.member.MemberVO;
import com.spring.mypage.MyDAO;

@Service
public class SingerService {
	@Autowired
	private SingerDAO singerDAO;
	
	
	public String mainContent(String id) {
		
		
		
		return singerDAO.mainContent(id);
	}

	public void ContentWrite(String id, String introduce) {

		SingerContentVO scv = new SingerContentVO();
		scv.setId(id);
		scv.setIntroduce(introduce);
		singerDAO.ContentWrite(scv);
	}


}
