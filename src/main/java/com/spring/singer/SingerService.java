package com.spring.singer;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.member.MemberVO;
import com.spring.mypage.MyDAO;

@Service("singerService")
public class SingerService {
	@Autowired
	private SingerDAO singerDAO;
	
	public SingerVO mainContent(String id) {
		
		return singerDAO.mainContent(id);
	}

	public void ContentWrite(String id, String introduce) {

		SingerVO scv = new SingerVO();
		scv.setId(id);
		scv.setIntroduce(introduce);
		singerDAO.ContentWrite(scv);
	}
	
	public MemberVO meminfo(String id) {
		return singerDAO.meminfo(id);
	}

	public List<SingerVO> singerList() {
		
		return singerDAO.singerList();
	}

	@SuppressWarnings("unchecked")
	public Object introduce_modify(SingerVO singerVO) {

		
		JSONObject jSONObject = new JSONObject();
		//수정 한 글을 result에 담음
		SingerVO result = singerDAO.introduce_modify(singerVO);
		String introduce = result.getIntroduce();
		System.out.println(" introduce "+ introduce);
		jSONObject.put("introduce", introduce);
		return jSONObject;
		
	}
	


}
