package com.kk.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.kk.domain.MemberVO;
import com.kk.service.MemberService;

// 회원 관련 controller
@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;

	// id check를 위한 메서드
	@RequestMapping(value = "main/member/idCheck.do", produces = "application/text; charset=utf8")
	@ResponseBody
	public String getEmail(String email) {
		System.out.println("MemberController : idCheck");
		String result = "1"; // 기본적으로 해당 메일 사용불가

		MemberVO vo = new MemberVO();

		vo.setEmail(email);

		if (memberService.getMember(vo) == null) { // DB에 없으면 해당 메일 사용 가능
			result = "0";
		}

		return result;
	}

	// 회원가입 sumbit -> Member Insert를 위한 메소드
	@RequestMapping(value = "main/signUp.do", produces = "application/text; charset=utf8")
	public String insertMember(MemberVO vo) {

		// 한번 더 유효성 검사
		if (vo.getEmail() != null && vo.getName() != null && vo.getPassword() != null && vo.getTel() != 0) {
			System.out.println("MemberController : insertMember - 가입 진행");
			memberService.insertMember(vo);
		}

		return "redirect:../index.jsp";
	}

	@RequestMapping(value = "/sign/signin.do", method = RequestMethod.GET)
	public void signin(MemberVO member, HttpServletRequest request) {
		System.out.println("signin 메소드 호출");
		// 이전 페이지를 변수에 저장하기
		String referrer = request.getHeader("Referer");
		System.out.println(referrer);
		// 이전 페이지가 로그인 페이지가 아니면 세션에 저장하기
		if (!referrer.contains("sign")) {
			request.getSession().setAttribute("prevPage", referrer);
			System.out.print("이전 페이지 : ");
			System.out.println(request.getSession().getAttribute("prevPage"));
		}
	}

	@RequestMapping(value = "/sign/signinattempt.do", method = RequestMethod.POST)
	public String signinAttempt(MemberVO member, HttpServletRequest request, HttpSession session) {
		System.out.println("signinAttempt 메소드 호출");
		// 이전 페이지를 세션에서 불러오기
		String prevPage = (String) request.getSession().getAttribute("prevPage");
		String memberId = request.getParameter("memberId");
		System.out.println("memberId : " + memberId);
		
		// qr코드를 통한 로그인시
		if(memberId != null && memberService.memberSigninService(member) != null) {
			MemberVO mem = (MemberVO) memberService.memberSigninService(member);
			if(Integer.parseInt(memberId) == mem.getMemberId()) {
				System.out.println("qr인증");
			}
			return "redirect:/sign/signin.do";
			
		} else if (memberId == null && memberService.memberSigninService(member) != null) {
			session.setAttribute("member", (MemberVO) memberService.memberSigninService(member));
			System.out.println(session.getAttribute("member"));
//			session.setAttribute("member", (MemberVO) memberService.getMember(member));
			
			return "redirect:" + prevPage;
		} else {
			return "redirect:/sign/signin.do";
		}
	}
	
	// 로그아웃시 세션 제거
	@RequestMapping(value = "/sign/logout.do")
	public String logout(MemberVO member, HttpServletRequest request, HttpSession session) {
//		session.removeAttribute("email");			
		session.removeAttribute("member");			
		return "redirect:../index.jsp";
	}
	
	// 예외처리
	@RequestMapping(value = "/sign/null")
	public String nullException() {
		return "redirect:../index.jsp";
	}
}
