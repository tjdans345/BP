package com.spring.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("mdao")
public class MemberDAO {
	@Autowired
	private SqlSession sqlSession;

	public int addMember(MemberVO memberVO) {
		return sqlSession.insert("mapper.member.addMember", memberVO);
	}
	public List idCheck(String id) {
		return sqlSession.selectList("mapper.member.idcheck", id);
	}
	public MemberVO loginMember(String id) {
		return sqlSession.selectOne("mapper.member.loginMember", id);
	}
	//회원가입 성공 시 싱어페이지 추가
	public void addSinger(String id) {
		sqlSession.insert("mapper.member.addSinger", id);
		
	}

	
}
