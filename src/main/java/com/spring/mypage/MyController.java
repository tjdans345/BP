package com.spring.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.member.MemberVO;

@Controller
public class MyController {
	@Autowired
	private MyService mys = new MyService();
	private ModelAndView mav = new ModelAndView();
	
	//마이페이지 메인
	@RequestMapping(value = "/mypage.my", method = RequestMethod.GET)
	public ModelAndView index(String id,
							  HttpServletRequest request,
							  HttpServletResponse response) {
		
		id = (String)request.getSession().getAttribute("id");
		mav.addObject("meminfo", mys.meminfo(id));
		mav.setViewName("mypage/mypageIndex");
		return mav;

	}
	
	//회원정보
	@RequestMapping(value = "/info.my", method = RequestMethod.GET)
	public ModelAndView info(String id,
							 HttpServletRequest request,
							 HttpServletResponse response) {
		
		id = (String)request.getSession().getAttribute("id");
		mav.addObject("meminfo", mys.meminfo(id));
		mav.setViewName("mypage/info");

		return mav;

	}	
	
	//회원정보 수정/탈퇴(비밀번호 체크페이지)
	@RequestMapping(value = "/edit.my", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView edit(String id,
							 HttpServletRequest request,
							 HttpServletResponse response,
							 MemberVO membervo) {
		
		id = (String)request.getSession().getAttribute("id");		
		mav.setViewName("mypage/editpass");
		return mav;

	}
	
	//회원정보 수정/탈퇴(비밀번호 체크 후 페이지)
	@RequestMapping(value = "/edit2.my", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView edit2(String id,
					   String password,
					   MemberVO membervo,
					   HttpServletRequest request,
					   HttpServletResponse response) {
		id = (String)request.getSession().getAttribute("id");
		mav.addObject("checkpwd", mys.checkpwd(id));

		if(mys.checkpwd(id).equals(password)) {
			mav.addObject("meminfo", mys.meminfo(id));
			mav.setViewName("mypage/edit");
			return mav;

		}else {	
			mav.setViewName("mypage/editpass");
			return mav;
		}
	}
	
	
	/*
	 * //회원탈퇴
	 * 
	 * @RequestMapping(value = "/del.my", method = RequestMethod.GET) public
	 * ModelAndView del(String id, String password, HttpServletRequest request,
	 * HttpServletResponse response) {
	 * 
	 * id = (String)request.getSession().getAttribute("id");
	 * 
	 * 
	 * }
	 */
	
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
