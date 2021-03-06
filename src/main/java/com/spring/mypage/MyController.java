package com.spring.mypage;

import java.awt.Window;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.member.MemberVO;

@Controller
public class MyController {
	@Autowired
	private MyService mys;
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
	@RequestMapping(value = "/info.my", method =  {RequestMethod.GET, RequestMethod.POST})
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
		String msg = "";
		mav.addObject("msg", msg);
		mav.setViewName("mypage/editpass");
		return mav;
	}
	
	//회원정보 수정/탈퇴(비밀번호 체크 후 페이지)
	@RequestMapping(value = "/edit2.my", method = RequestMethod.POST)
	public ModelAndView edit2(String id,
					   String password,
					   MemberVO membervo,
					   HttpServletRequest request,
					   HttpServletResponse response) {
		id = (String)request.getSession().getAttribute("id");
		String msg = "";
		mav.addObject("checkpwd", mys.checkpwd(id));
		
		if(mys.checkpwd(id).equals(password)) {
			mav.addObject("meminfo", mys.meminfo(id));
			mav.setViewName("mypage/edit");
			return mav;

		}else {		
			msg="비밀번호가 틀렸습니다.";
			mav.addObject("msg",msg);
			mav.setViewName("mypage/editpass");
			return mav;
		}
	}
	
	//회원정보수정
	@RequestMapping(value = "/editmem.my", method = RequestMethod.POST)
	public ModelAndView editmem(
					   MemberVO memberVO,
					   HttpServletRequest request,
					   HttpServletResponse response,
					   HttpSession session ) {
		
		
		String id = (String)session.getAttribute("id");
		mav.addObject("meminfo", mys.meminfo(id));
		mys.editmem(memberVO);
		mav.setViewName("forward:info.my");
		return mav;
	}
	
	//회원탈퇴	  
	@RequestMapping(value = "/del.my", method = RequestMethod.POST)
    public ModelAndView del(String id,  
    						HttpServletRequest request,
    						HttpServletResponse response) {
	  
	  id = (String)request.getSession().getAttribute("id");
	  mys.delmem(id);
      request.getSession().removeAttribute("id");
	  mav.setViewName("index");
	  return mav;  
	  }
	
	//비밀번호 수정페이지로 이동
	@RequestMapping(value = "/passedit.my", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView passedit(HttpSession session) {
		String id = (String)session.getAttribute("id");
		String msg = "";
		mav.addObject("msg", msg);
		mav.addObject("meminfo", mys.meminfo(id));
		mav.setViewName("mypage/passedit");
		return mav;
	}
	
	//비밀번호 수정 처리
	@RequestMapping(value = "/passedit2.my", method = RequestMethod.POST)
	public ModelAndView passedit2(HttpSession session, @RequestParam("password") String password,
								  @RequestParam("password2") String password2) {		
		String id = (String)session.getAttribute("id");
		String msg = "";
		
		if(mys.checkpwd(id).equals(password)) {
			int rs = mys.passedit(password2, id);
			if(rs==1) {
			session.removeAttribute("id");
			msg="비밀번호 수정이 완료되었습니다.";
			mav.addObject("msg", msg);
			mav.setViewName("member/login");
			return mav;
			}else {
				msg="비밀번호 수정에 실패하였습니다.";
				mav.addObject("msg",msg);
				mav.setViewName("mypage/passedit");
				return mav;
			}
		}
			msg="현재 비밀번호가 틀렸습니다. 다시 입력해주세요.";
			mav.addObject("msg",msg);
			mav.setViewName("mypage/passedit");
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
