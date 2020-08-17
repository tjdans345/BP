package com.spring.mypage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	public int delmem(String id) {
		return sqlSession.delete("mapper.my.delmem",id);
	}
	
	public boolean checkpwd(String id, String password) {
		boolean result=false;
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("password", password);
		int count = sqlSession.selectOne("mapper.my.checkpwd", map);
		if(count == 1)result=true;
		return result;
	}
	
}
