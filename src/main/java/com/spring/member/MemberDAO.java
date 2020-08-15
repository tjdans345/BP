package com.spring.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class MemberDAO {
	@Autowired
	private SqlSession sqlSession;
	
	public String selectname() {
		return sqlSession.selectOne("mapper.member.selectname");
	}
	public int addMember(MemberVO memberVO) {
		return sqlSession.insert("mapper.member.addMember", memberVO);
	}
	public List idCheck(String id) {
		return sqlSession.selectList("mapper.member.idcheck", id);
	}
	public MemberVO loginMember(String id) {
		return sqlSession.selectOne("mapper.member.loginMember",id);
	}	
}
