package com.spring.busking;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class BuskingService {
	@Autowired
	private BuskingDAO buskingDAO;
	public void insertBusking(BuskingVO buskingVO) {
		buskingDAO.insertBusking(buskingVO);
	}
	public List Loc1List() {
		HashMap hashMap = new HashMap();
		return buskingDAO.Loc1List(hashMap);
	}
	
	public List Loc2List(String loc1) {
		HashMap hashMap = new HashMap();
		hashMap.put("loc1", loc1);
		return buskingDAO.Loc2List(hashMap);
	}
//	public List Loc3Licst(String loc1,String loc2) {
//		HashMap hashMap = new HashMap();
//		hashMap.put("loc1", loc1);
//		hashMap.put("loc2", loc2);
//		return buskingDAO.Loc3List(hashMap);
//	}
	public List Loc3List(String loc1,String loc2) {
		HashMap hashMap = new HashMap();
		hashMap.put("loc1", loc1);
		hashMap.put("loc2", loc2);
		return buskingDAO.Loc3List(hashMap);
	}
}
