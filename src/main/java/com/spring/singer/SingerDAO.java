package com.spring.singer;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SingerDAO {

	@Autowired
	SqlSession sqlSession;
	
	public int ContentWrite(SingerContentVO scv) {
		
		return sqlSession.insert("mapper.singer.ContentWrite", scv);
		
	}

}
