package com.spring.mypage;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.member.MemberVO;

@Repository
public class MyDAO {
	@Autowired
	private SqlSession sqlSession;
	
	//회원정보
	public MemberVO meminfo(String id) {
		return sqlSession.selectOne("mapper.my.meminfo", id);
	}
	
	//회원탈퇴
	public int delmem(String id) {
		return sqlSession.delete("mapper.my.delmem",id);
	}
	
	//회원정보수정(비밀번호체크)
	public String checkpwd(String id) {
		return sqlSession.selectOne("mapper.my.checkpwd", id);
	}
	
	//회원정보수정
	public void editmem(MemberVO memberVO) {
		int rs = sqlSession.update("mapper.my.editmem", memberVO);
		System.out.println("DAO 성공여부 " + rs);
		System.out.println(memberVO.getName());
		System.out.println(memberVO.getLocation());
	}
}
