package com.spring.singer;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class SingerController {
	
	
	@Autowired
	private SingerService singerService;
	private ModelAndView mav = new ModelAndView();
	
	//싱어 메인페이지 이동
	@RequestMapping(value = "/singerMain.sin", method = RequestMethod.GET)
	public ModelAndView index() {
		
		mav.setViewName("singer/singerMain");
		return mav;
	}
	
	//싱어 메인페이지 글 작성
	@RequestMapping(value = "/singerWrite.sin", method = RequestMethod.POST)
	public ModelAndView SingerMainWrite(@RequestParam String introduce, HttpServletRequest request) {
		System.out.println(request.getSession().getAttribute("id"));
		System.out.println(introduce);
		String id = (String)request.getSession().getAttribute("id");
		int num = 3;
		
		singerService.ContentWrite(id, introduce, num);
		
		mav.setViewName("singer/singerMain");
		return mav;
	}
	
}
