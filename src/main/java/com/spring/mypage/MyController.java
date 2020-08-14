package com.spring.mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyController {
	@Autowired
	private MyService mys = new MyService();
	private ModelAndView mav = new ModelAndView();

	@RequestMapping(value = "/mypage.my", method = RequestMethod.GET)
	public ModelAndView index() {
		
		mav.setViewName("mypage/mypageIndex");
		return mav;

	}
	
	@RequestMapping(value = "/info.my", method = RequestMethod.GET)
	public ModelAndView info() {
		
		mav.setViewName("mypage/info");
		return mav;

	}
	
	@RequestMapping(value = "/edit.my", method = RequestMethod.GET)
	public ModelAndView edit() {
		
		mav.setViewName("mypage/edit");
		return mav;

	}
	
	@RequestMapping(value = "/del.my", method = RequestMethod.GET)
	public ModelAndView del() {
		
		mav.setViewName("mypage/delete");
		return mav;

	}
	
	@RequestMapping(value = "/likesin.my", method = RequestMethod.GET)
	public ModelAndView likesin() {
		
		mav.setViewName("mypage/likesin");
		return mav;

	}
	
	@RequestMapping(value = "/likecon.my", method = RequestMethod.GET)
	public ModelAndView likecon() {
		
		mav.setViewName("mypage/likecon");
		return mav;

	}
	
	@RequestMapping(value = "/chat.my", method = RequestMethod.GET)
	public ModelAndView chat() {
		
		mav.setViewName("mypage/chat");
		return mav;

	}
	
	@RequestMapping(value = "/sup.my", method = RequestMethod.GET)
	public ModelAndView sup() {
		
		mav.setViewName("mypage/sup");
		return mav;

	}
}
