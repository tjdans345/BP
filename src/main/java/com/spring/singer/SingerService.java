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
	
	//싱어 페이지 메인 정보 조회
	public SingerVO mainContent(String id) {
		
		return singerDAO.mainContent(id);
	}

	//싱어페이지 인사말 등록
	public void ContentWrite(String id, String introduce) {

		SingerVO scv = new SingerVO();
		scv.setId(id);
		scv.setIntroduce(introduce);
		singerDAO.ContentWrite(scv);
	}
	
	//회원정보 조회
	public MemberVO meminfo(String id) {
		return singerDAO.meminfo(id);
	}

	public List<SingerVO> singerList() {
		
		return singerDAO.singerList();
	}
	
	//싱어회원 리스트 조회
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

	//싱어페이지 댓글 조회
	public Object content(String id) {

		return singerDAO.content(id);
	}
	


}
