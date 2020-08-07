package com.spring.member;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/login.mem", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		
		return "member/login";
	}
	
	@RequestMapping(value = "/signup.mem", method = RequestMethod.GET)
	public String signup(Locale locale, Model model) {
		
		return "member/signup";
	}
	
}
