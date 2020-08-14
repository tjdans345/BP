package com.spring.busking;

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


/**
 * Handles requests for the application home page.
 */
@Controller
public class BuskingController {
	
	
	@Autowired
	private BuskingService buskingService;
	private ModelAndView mav = new ModelAndView();
	
	@RequestMapping(value = "/resbusking.b", method = RequestMethod.GET)
	public ModelAndView login() {
		mav.setViewName("singer/resbusking");
		return mav;
	}
	
	
	@RequestMapping(value = "/insertbusking.b", method = RequestMethod.POST)
	public ModelAndView addMember(@ModelAttribute BuskingVO buskingVO,
									HttpServletRequest request,
									HttpServletResponse response) {
		buskingService.insertBusking(buskingVO);
		//mav.setViewName("redirect:/resbusking.b"); 
		mav.setViewName("index"); 

		return mav;
	}
	
	
	@RequestMapping(value = "/busking.b", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		return "busking/busking";
	}
	

}
