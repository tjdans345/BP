package com.spring.mem;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class memberController {
	
	private static final Logger logger = LoggerFactory.getLogger(memberController.class);
	
	
	@RequestMapping(value = "/about.mem", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, Model model) {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("member/about-us");
		
		return mav;
	}
	
	
	
	
}
