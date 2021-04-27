package com.kk.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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
		
		MemberVO memberSession;
		
		// 세션이 존재한다면 email 할당, 존재하지 않으면 로그인 창으로 이동
		if(session.getAttribute("member")!=null) {		 
//			 member.setEmail((String) session.getAttribute("email"));
			 memberSession = (MemberVO) session.getAttribute("member");
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
	
	// 프로필 등록 페이지
	@RequestMapping("mypage/profile.do")
	public void profile(MemberVO vo) {
		System.out.println("profile 실행");
	}
	// 프로필 등록
	@RequestMapping("saveProfile.do")
	public String insertProfile(MemberVO vo) throws IOException {
		System.out.println("insertProfile 실행");
		memberService.insertMember(vo);
		return "redirect:/profile.do";
	}
//	// 프로필 수정
//	@RequestMapping("")
//	public void updateProfile(MemberVO vo){
//		System.out.println("updateProfile 실행");
//	}
//	// 프로필 삭제
//	@RequestMapping("")
//	public void deleteProfile(MemberVO vo){
//		System.out.println("deleteProfile 실행");
//	}
//	// 프로필 상세 조회
//	@RequestMapping("")
//	public void getProfile(MemberVO vo){
//		System.out.println("getProfile 실행");
//	}
	
}
