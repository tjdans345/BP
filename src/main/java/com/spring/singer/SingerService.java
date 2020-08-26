package com.spring.singer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SingerService {
	
	@Autowired
	private SingerDAO singerDAO;
	
	public void ContentWrite(String id, String introduce, int num) {
		
		SingerContentVO scv = new SingerContentVO();
		scv.setId(id);
		scv.setIntroduce(introduce);
		scv.setNum(num);
		singerDAO.ContentWrite(scv);
	}


	
	
}
