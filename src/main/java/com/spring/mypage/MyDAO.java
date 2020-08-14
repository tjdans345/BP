package com.spring.mypage;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.member.MemberVO;

@Repository
public class MyDAO {
	@Autowired
	private SqlSession sqlSession;
	
	public MemberVO meminfo(String id) {
		return sqlSession.selectOne("mapper.my.meminfo", id);
	}
	
}
