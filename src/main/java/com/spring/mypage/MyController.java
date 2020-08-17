package com.spring.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	public ModelAndView index(String id,
							  HttpServletRequest request,
							  HttpServletResponse response) {
		
		id = (String)request.getSession().getAttribute("id");
		mav.addObject("meminfo", mys.meminfo(id));
		mav.setViewName("mypage/mypageIndex");
		return mav;

	}
	
	@RequestMapping(value = "/info.my", method = RequestMethod.GET)
	public ModelAndView info(String id,
							 HttpServletRequest request,
							 HttpServletResponse response) {
		
		id = (String)request.getSession().getAttribute("id");
		mav.addObject("meminfo", mys.meminfo(id));
		mav.setViewName("mypage/info");

		return mav;

	}
	
	@RequestMapping(value = "/edit.my", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView edit(String id,
							 HttpServletRequest request,
							 HttpServletResponse response) {
		
		id = (String)request.getSession().getAttribute("id");		
		mav.addObject("meminfo", mys.meminfo(id));
		mav.setViewName("mypage/edit");
		return mav;

	}
	
	@RequestMapping(value = "/del.my", method = RequestMethod.GET)
	public ModelAndView del(String id,
							String password,
							HttpServletRequest request,
							HttpServletResponse response) {
		
		id = (String)request.getSession().getAttribute("id");
		boolean result = mys.checkpwd(id,password);
		if(result) {
			mys.delmem(id);
			mav.setViewName("mypage/mypageIndex");
			return mav;
		}else {
			mav.addObject("msg", "비밀번호가 일치하지 않습니다.");
			mav.addObject("delmem", mys.delmem(id));
			mav.setViewName("mypage/delete");
			return mav;
		}

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
