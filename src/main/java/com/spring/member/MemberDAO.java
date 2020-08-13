package com.spring.member;

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
	
	public int insertMember(MemberVO memberVO) {
		return sqlSession.insert("mapper.member.insertMember", memberVO);
	}	
}
