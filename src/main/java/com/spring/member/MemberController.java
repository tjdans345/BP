package com.spring.member;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class MemberController {
	
	@Autowired
	private MemberService ms;
	private ModelAndView mav = new ModelAndView();
	
	@RequestMapping(value = "/login.mem", method = RequestMethod.GET)
	public ModelAndView login() {
		mav.setViewName("member/login");
		mav.addObject("name", ms.name());
		
		return mav;
	}
	
	
	
	@RequestMapping(value = "/signup.mem", method = RequestMethod.GET)
	public String signup(Locale locale, Model model) {
		
		return "member/signup";
	}
	
	@RequestMapping(value = "/addMember.mem", method = RequestMethod.GET)
	public ModelAndView addMember(@ModelAttribute MemberVO memberVO,
									HttpServletRequest request,
									HttpServletResponse response) {
		ms.addMember(memberVO);
		mav.setViewName("redirect:/index.do");

		return mav;
	}
	
   @RequestMapping(value = "/logout.mem", method = RequestMethod.GET)
   public ModelAndView logout(HttpServletRequest request) {
      request.getSession().removeAttribute("id");
      mav.setViewName("redirect:/index.do");
  
      return mav;
   }   

   @RequestMapping(value = "/loginCheck", method = RequestMethod.POST)
   public ModelAndView loginCheck(@ModelAttribute MemberVO memberVO,
		   					HttpServletRequest request,
		   					HttpServletResponse response) {
	   
	   String msg = ms.loginMember(memberVO);
	   
	   if(msg.equals("login")) {
			request.getSession().setAttribute("id", memberVO.getId());
			mav.setViewName("redirect:/index.do");
	   }else {
		   mav.addObject("msg", msg);
		   mav.setViewName("member/login");
	   }
	   return mav;
	}   
   
}
