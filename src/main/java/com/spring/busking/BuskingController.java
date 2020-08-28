package com.spring.busking;

import java.io.IOException;
import java.net.URLEncoder;
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
	//버스킹 예약 페이지
	@RequestMapping(value = "/resbusking.b", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView resbusking(HttpServletRequest reqeust,
									HttpServletResponse response) {
		List Loc1List = buskingService.Loc1List();
		mav.addObject("Loc1List", Loc1List);
		mav.setViewName("singer/resbusking");
		return mav;
	}
	
	//버스킹 예약 페이지 - ajax 동 가져오기
	@RequestMapping(value = "/loc2.b", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public void loc2(@RequestParam(required = false) String loc1,
			HttpServletRequest reqeust,
			HttpServletResponse response) throws Exception {	
		List Loc2List = buskingService.Loc2List(loc1);
		JSONArray jSONArray = new JSONArray();
		for(int i=0; i<Loc2List.size(); i++) {
			BuskingVO buskingVO = (BuskingVO)Loc2List.get(i);
			JSONObject jSONObject = new JSONObject();			
			String loc2 = URLEncoder.encode(buskingVO.getLoc2(), "UTF-8");			//엔코딩
			jSONObject.put("loc2", loc2);
			jSONArray.add(jSONObject);
		}		
		response.getWriter().print(jSONArray);
	}
	//버스킹 예 약페이지 - ajax 장소 가져오기
	@RequestMapping(value = "/loc3.b", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public void loc3(@RequestParam(required = false) String loc1,
					@RequestParam(required = false) String loc2,
					HttpServletRequest reqeust,
					HttpServletResponse response) throws Exception {
		List Loc3List = buskingService.Loc3List(loc1,loc2);	

		JSONArray jSONArray = new JSONArray();
		for(int i=0; i<Loc3List.size(); i++) {
			BuskingVO buskingVO = (BuskingVO)Loc3List.get(i);
			JSONObject jSONObject = new JSONObject();			
			String loc3 = URLEncoder.encode(buskingVO.getLoc3(), "UTF-8");			//엔코딩
			jSONObject.put("loc3", loc3);
			jSONArray.add(jSONObject);
		}		
		response.getWriter().print(jSONArray);
	}
	//버스킹 예약 페이지 -ajax 시간 가져오기
	@RequestMapping(value = "/date.b", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public void date(@RequestParam(required = false) String date,
			HttpServletRequest reqeust,
			HttpServletResponse response) throws Exception {
		System.out.println(date);
		List resTime = buskingService.resTime(date);
		JSONArray jSONArray = new JSONArray();
		for(int i=0; i<resTime.size(); i++) {
			BuskingVO buskingVO = (BuskingVO)resTime.get(i);
			JSONObject jSONObject = new JSONObject();			
			int stime = buskingVO.getStime();
			System.out.println(stime);
			jSONObject.put("stime", stime);
			jSONArray.add(jSONObject);
		}		
		response.getWriter().print(jSONArray);
	}
	//버스킹 예약페이지 - 예약하기
	@RequestMapping(value = "/insertbusking.b", method = RequestMethod.POST)
	public ModelAndView addMember(@ModelAttribute BuskingVO buskingVO,
									HttpServletRequest request,
									HttpServletResponse response) {

		buskingService.insertBusking(buskingVO); 
		
//		int stime =buskingVO.getStime();
//		int etime =buskingVO.getEtime();
//		for(int i = stime;i<=etime;i++) {
//		buskingVO.setStime(i);	
//		buskingService.insertBusking(buskingVO);}  
		mav.setViewName("singer/resbusking");

		return mav;
	}
	
	//예약 버스킹 목록 페이지
	@RequestMapping(value = "/busking.b", method = RequestMethod.GET)
	public ModelAndView busking(Locale locale, Model model) {
		List resBusking = buskingService.resBusking();
		mav.addObject("resBusking", resBusking);
		mav.setViewName("busking/busking");

		
		return mav;
	}
	

}
