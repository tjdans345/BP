package com.spring.mypage;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MyDAO {
	@Autowired
	private SqlSession sqlSession;
	
}
