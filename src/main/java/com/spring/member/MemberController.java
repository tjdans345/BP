package com.spring.member;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MemberController {
	@Autowired
	private MemberService ms;
	private ModelAndView mav = new ModelAndView();

	@RequestMapping(value = "/beforejoin.mem", method = RequestMethod.GET)
	public ModelAndView beforejoin() {
		mav.setViewName("member/beforejoin");
		return mav;
	}
	@RequestMapping(value = "/login.mem", method = RequestMethod.GET)
	public ModelAndView login() {
		mav.setViewName("member/login");
		return mav;
	}	
	@RequestMapping(value = "/join1.mem", method = RequestMethod.GET)
	public ModelAndView join1(HttpServletRequest request,
							  HttpServletResponse response) {
		HttpSession session = request.getSession(); String status = "1";
		session.setAttribute("status", status);
		mav.setViewName("member/join");		
		return mav;
	}
	@RequestMapping(value = "/join0.mem", method = RequestMethod.GET)
	public ModelAndView join0(HttpServletRequest request,
							  HttpServletResponse response) {
		HttpSession session = request.getSession(); String status = "0";
		session.setAttribute("status", status);
		mav.setViewName("member/join");		
		return mav;
	}	
	@RequestMapping(value = "/addMember.mem", method = RequestMethod.POST)
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
   @RequestMapping(value = "/test.mem", method = RequestMethod.GET)
   public ModelAndView test(HttpServletRequest request) {
	   mav.setViewName("member/test");
	   return mav;
   } 
   @RequestMapping(value = "/doplus.mem", method = RequestMethod.GET)
   @ResponseBody
   String plus(int num1, int num2) {
	   
	   String msg = "더하기에 성공하였습니다.";
	   
	   int rs = num1 + num2;
	   
	   return rs + "/" + msg;
   }
   
   @RequestMapping(value = "/idcheck.mem",method = {RequestMethod.GET, RequestMethod.POST})
   @ResponseBody
   public void idcheck(@RequestParam String id,
		   		  HttpServletRequest request,
				  HttpServletResponse response)throws Exception{
	   String idcheck = ms.idcheck(id);
	   JSONObject jSONObject = new JSONObject();		
	   jSONObject.put("idcheck", idcheck);
	   
	   response.getWriter().print(jSONObject);
   }
}
