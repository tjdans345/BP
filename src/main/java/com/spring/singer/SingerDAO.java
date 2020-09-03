package com.spring.singer;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.member.MemberVO;

@Repository("singerDAO")
public class SingerDAO {

	@Autowired
	private SqlSession sqlSession;

	//싱어페이지 인사 글 조회
	public SingerVO mainContent(String id) {

		return sqlSession.selectOne("mapper.singer.mainContent", id);
	}

	//싱어페이지 인사 글 등록
	public int ContentWrite(SingerVO scv) {

		return sqlSession.insert("mapper.singer.ContentWrite", scv);

	}

	// 회원정보 조회 후 필요 데이터 담아오기 
	public MemberVO meminfo(String id) {
		return sqlSession.selectOne("mapper.singer.meminfo", id);
	}
	
	//싱어리스트 조회
	public List<SingerVO> singerList() {
		return sqlSession.selectList("mapper.singer.singerList");
	}
	
	//인사말 수정
	public SingerVO introduce_modify(SingerVO singerVO) {
		SingerVO result = null;
		int update = sqlSession.update("mapper.singer.introduce_modify", singerVO);
		
		//인사말 업데이트 성공 후 인사말 출력
		if(update == 1) {
			result = sqlSession.selectOne("mapper.singer.mainContent", singerVO);
		}
		return result;
	}

	//싱어페이지 댓글 조회
	public Object content(String id) {
		System.out.println("DAO 컨텐트" + id);
		HashMap map = new HashMap();
		map.put("id", id);
		System.out.println(sqlSession.selectList("mapper.singer.content", map).toString());
		return sqlSession.selectList("mapper.singer.content", map);
	}

	
}
