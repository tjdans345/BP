package com.spring.singer;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.member.MemberVO;
import com.spring.mypage.MyDAO;
import com.spring.mypage.MyService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class SingerController {

	@Autowired
	private SingerService singerService;
	private ModelAndView mav = new ModelAndView();

	// 싱어페이지 이동 (싱어가 접속)
	@RequestMapping(value = "/singerMain.sin", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView SingerPage(HttpServletRequest request) {

		String id = (String) request.getSession().getAttribute("id");
		System.out.println(id);

		SingerVO test = singerService.mainContent(id);

		System.out.println("소개글" + test.getIntroduce());
		// 회원상태 조회
		mav.addObject("meminfo", singerService.meminfo(id));
		// 싱어 메인페이지 소개글 조회
		mav.addObject("mainContent", singerService.mainContent(id));
		System.out.println();
		mav.setViewName("singer/singerMain");
		return mav;
	}

	// 싱어 메인페이지 이동 (유저가 접속)
	@RequestMapping(value = "/user.sin", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView singer_pageUser(@RequestParam String id, HttpServletRequest request) {

		// 싱어 메인페이지 소개글 조회
		mav.addObject("mainContent", singerService.mainContent(id));
		// 회원상태 조회
		mav.addObject("meminfo", singerService.meminfo(id));
		mav.setViewName("singer/singerMain");
		return mav;
	}

	// 싱어 메인페이지 글 작성
	@RequestMapping(value = "/singerWrite.sin", method = RequestMethod.POST)
	public ModelAndView singermain_write(@RequestParam String introduce, HttpServletRequest request) {

		String id = (String) request.getSession().getAttribute("id");

		singerService.ContentWrite(id, introduce);

		mav.setViewName("singer/singerMain");
		return mav;
	} 

	// 싱어페이지 이동
	@RequestMapping(value = "/test.sin", method = RequestMethod.GET)
	public ModelAndView gotothe_singerPage(HttpServletRequest request) {

		mav.addObject("singerList", singerService.singerList());
		mav.setViewName("singer/test");
		return mav;

	}
	
	//소개글(인사말) 수정
	@ResponseBody
	@RequestMapping(value = "/introducemodify.sin", method = RequestMethod.POST)
	public void introduce_modify(SingerVO singerVO, HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		
		response.getWriter().print(singerService.introduce_modify(singerVO));
		
	}

}
