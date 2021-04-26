package com.kk.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kk.domain.MemberVO;
import com.kk.service.MemberService;
import com.kk.service.NoticeService;

@Controller
public class MypageController {
	
	@Autowired
	private MemberService memberService;
	
	// 마이 페이지 클릭시 권한에 따라 분기
	@RequestMapping("mypage/enter.do")
	public String enterPage(HttpServletRequest request, HttpSession session) {
		System.out.println("MypageController : enterPage 실행");
		
		MemberVO member = new MemberVO();
		MemberVO memberSession;
		String email = "";
		
		// 세션이 존재한다면 email 할당, 존재하지 않으면 로그인 창으로 이동
		if(session.getAttribute("email")!=null) {		 
			 member.setEmail((String) session.getAttribute("email"));
			 memberSession = memberService.getMember(member);
			 session.setAttribute("member", memberSession);
		} else {
			return "redirect:/sign/signin.do";
		}
		
		// 게스트 권한 : 0 / 호스트 권한 : 1 / 관리자 권한 : 2 --> 분기
		if(memberSession.getAuth() == 0) {
			return "mypage/summary";
		} else if(memberSession.getAuth() == 1) {
			return "mypage/summary";
		} else if(memberSession.getAuth() == 2) {
			return "redirect:../admin/main.do";
		}
		
		return "redirect:../index.jsp";
		
	}
}
