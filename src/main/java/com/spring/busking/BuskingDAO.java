package com.spring.busking;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("buskingDAO")
public class BuskingDAO {
	@Autowired
	private SqlSession sqlSession;
	
	
	public void insertBusking(BuskingVO buskingVO) {
		sqlSession.insert("mapper.busking.insertBusking", buskingVO);
	}
	
	public List Loc1List(HashMap hashMap) {
		return sqlSession.selectList("mapper.busking.Loc1List", hashMap);
	}
	public List Loc2List(HashMap hashMap) {
		return sqlSession.selectList("mapper.busking.Loc2List", hashMap);
	}public List Loc3List(HashMap hashMap) {
		return sqlSession.selectList("mapper.busking.Loc3List", hashMap);
	}public List resTime(HashMap hashMap) {
		return sqlSession.selectList("mapper.busking.resTime", hashMap);
	}
}
