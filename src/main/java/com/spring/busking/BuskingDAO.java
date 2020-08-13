package com.spring.busking;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BuskingDAO {
	@Autowired
	private SqlSession sqlSession;
	
	
	public int insertBusking(BuskingVO buskingVO) {
		return sqlSession.insert("mapper.busking.insertBusking", buskingVO);
	}	
}
