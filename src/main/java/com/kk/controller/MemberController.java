package com.kk.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kk.domain.MemberVO;
import com.kk.service.MemberService;

// 회원 관련 controller
@Controller
@RequestMapping("/sign")
public class MemberController {

	@Autowired
	MemberService memberService;

	@RequestMapping(value = "signin.do", method = RequestMethod.GET)
	public void signin(MemberVO member, HttpServletRequest request) {
		System.out.println("signin 메소드 호출");
		// 이전 페이지를 변수에 저장하기
		String referrer = request.getHeader("Referer");
		System.out.println(referrer);
		// 이전 페이지가 로그인 페이지가 아니면 세션에 저장하기
		if(!referrer.contains("sign")) {
			request.getSession().setAttribute("prevPage", referrer);
			System.out.println(request.getSession().getAttribute("prevPage"));
		}
	}

	@RequestMapping(value = "signinattempt.do", method = RequestMethod.POST)
	public String signinAttempt(MemberVO member, HttpServletRequest request, HttpSession session) {
		System.out.println("signinAttempt 메소드 호출");
		// 이전 페이지를 세션에서 불러오기
		String prevPage = (String) request.getSession().getAttribute("prevPage");
		if (memberService.memberSigninService(member) != null) {
			session.setAttribute("email", memberService.memberSigninService(member).getEmail().trim());
			System.out.println(session.getAttribute("email"));
			return "redirect:" + prevPage;
		} else {
			return "redirect:/sign/signin.do";
		}
	}
}
