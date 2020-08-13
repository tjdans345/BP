package com.spring.busking;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class BuskingService {
	@Autowired
	private BuskingDAO buskingDAO;
	public void insertBusking(BuskingVO buskingVO) {
		buskingDAO.insertBusking(buskingVO);
	}
}
