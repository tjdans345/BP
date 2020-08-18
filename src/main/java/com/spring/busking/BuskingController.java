package com.spring.busking;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
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

import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;


/**
 * Handles requests for the application home page.
 */
@Controller
public class BuskingController {
	
	
	@Autowired
	private BuskingService buskingService;
	private ModelAndView mav = new ModelAndView();
	

//	
//	@RequestMapping(value = "/resbusking.b", method = {RequestMethod.GET, RequestMethod.POST})
//	public ModelAndView resbusking(){
//		
//		
//		List Loc1List = buskingService.Loc1List();
//		//List Loc2List = buskingService.Loc2List("부산");
//		mav.addObject("Loc1List", Loc1List);
//		//mav.addObject("Loc2List", Loc2List);
//		mav.setViewName("singer/resbusking");
//		return mav;
//	}
	

	
	@RequestMapping(value = "/resbusking.b", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public ModelAndView resbusking(@RequestParam(required = false,defaultValue = "서울") String loc1,
			HttpServletRequest reqeust,
			HttpServletResponse response){
		
		System.out.println(loc1);

		List Loc1List = buskingService.Loc1List();
		List Loc2List = buskingService.Loc2List(loc1);
		
		System.out.println("확인용 " + Loc1List);
		System.out.println("확인용2 " + Loc2List);
		
		JSONArray jSONArray = new JSONArray();
		for(int i=0; i<Loc2List.size(); i++) {
			BuskingVO buskingVO = (BuskingVO)Loc2List.get(i);
			System.out.println(i+"="+Loc2List.get(i));
			JSONObject jSONObject = new JSONObject();
			jSONObject.put("data", buskingVO.getLoc2());
			jSONArray.add(jSONObject);
		}
		

		System.out.println("확인용3 " + jSONArray);

		
		mav.addObject("Loc1List", Loc1List);
		//mav.addObject(jSONArray);	

		mav.setViewName("singer/resbusking");
		return mav;
	}
	
	
	
	
	@RequestMapping(value = "/insertbusking.b", method = RequestMethod.POST)
	public ModelAndView addMember(@ModelAttribute BuskingVO buskingVO,
									HttpServletRequest request,
									HttpServletResponse response) {
		buskingService.insertBusking(buskingVO); 
		mav.setViewName("singer/resbusking"); 

		return mav;
	}
	
	
	@RequestMapping(value = "/busking.b", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		return "busking/busking";
	}
	

}
