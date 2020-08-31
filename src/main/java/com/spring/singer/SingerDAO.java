package com.spring.singer;

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

	public List<SingerVO> singerList() {
		
		return sqlSession.selectList("mapper.singer.singerList");
	}

	
}
