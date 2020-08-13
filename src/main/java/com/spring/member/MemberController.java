package com.spring.member;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MemberController {
	@Autowired
	private MemberService ms;
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/login.mem", method = RequestMethod.GET)
	public ModelAndView login() {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("member/login");
		mav.addObject("name", ms.name());
		
		
		return mav;
	}
	
	@RequestMapping(value = "/signup.mem", method = RequestMethod.GET)
	public String signup(Locale locale, Model model) {
		
		return "member/signup";
	}
	
}
