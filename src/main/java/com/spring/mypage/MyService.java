package com.spring.mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyService {
	@Autowired
	private MyDAO mydao;

}
