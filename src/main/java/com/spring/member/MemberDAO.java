package com.spring.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class MemberDAO {
	@Autowired
	private SqlSession sqlSession;

	public void addMember(MemberVO memberVO) {
		sqlSession.insert("mapper.member.addMember", memberVO);
	}
	public List idCheck(String id) {
		return sqlSession.selectList("mapper.member.idcheck", id);
	}
	public List emailcheck(String email) {
		return sqlSession.selectList("mapper.member.emailcheck", email);
	}
	public MemberVO loginMember(String id) {
		return sqlSession.selectOne("mapper.member.loginMember", id);
	}


	
}
