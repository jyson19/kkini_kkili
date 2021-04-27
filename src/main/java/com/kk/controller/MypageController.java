package com.kk.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kk.dao.BookmarkDAOImpl;
import com.kk.domain.BookmarkVO;
import com.kk.domain.MemberVO;
import com.kk.service.BookmarkService;
import com.kk.service.MemberService;
import com.kk.service.NoticeService;

@Controller
public class MypageController {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private BookmarkService bookmarkService;

	// 마이 페이지 클릭시 권한에 따라 분기
	@RequestMapping("mypage/enter.do")
	public String enterPage(HttpServletRequest request, HttpSession session) {
		System.out.println("MypageController : enterPage 실행");

		MemberVO memberSession;

		// 세션이 존재한다면 member 할당, 존재하지 않으면 로그인 창으로 이동
		if (session.getAttribute("member") != null) {
			memberSession = (MemberVO) session.getAttribute("member");
			session.setAttribute("member", memberSession);
		} else {
			return "redirect:/sign/signin.do";
		}

		// 게스트 권한 : 0 / 호스트 권한 : 1 / 관리자 권한 : 2 --> 분기
		if (memberSession.getAuth() == 0) {
			return "mypage/summary";
		} else if (memberSession.getAuth() == 1) {
			return "mypage/summary";
		} else if (memberSession.getAuth() == 2) {
			return "redirect:../admin/main.do";
		}

		return "redirect:../index.jsp";

	}

	// 관심 목록 접속시 - 내가 찜한 호스트 목록 가져오기
	@RequestMapping("mypage/interest.do")
	public ModelAndView interestPage(HttpSession session) {
		System.out.println("MypageController : " + "interest" + "페이지로 이동 요청");

		ModelAndView mv = new ModelAndView();
		
		// 세션이 존재한다면 member를 이용해서 DB 정보 가져오기, 존재하지 않으면 로그인 창으로 이동
		if (session.getAttribute("member") != null) {
			
			BookmarkVO bookmark = new BookmarkVO();

			bookmark.setHostId( ((MemberVO) session.getAttribute("member")).getMemberId() );
			
			mv.addObject("memberList", bookmarkService.getMemberListByHostId(bookmark));
			mv.setViewName("mypage/interest");
			
		} else {
			mv.setViewName("/sign/signin");
		}
		
		return mv;
	}

	// 나를 주목하는 사람 목록 - 나를 찜한 게스트 목록 가져오기
	@RequestMapping("mypage/interestReverse.do")
	public ModelAndView interstReversePage(HttpSession session) {
		System.out.println("MypageController : " + "interstReverse" + "페이지로 이동 요청");
		
		ModelAndView mv = new ModelAndView();
		
		// 세션이 존재한다면 member를 이용해서 DB 정보 가져오기, 존재하지 않으면 로그인 창으로 이동
		if (session.getAttribute("member") != null) {
			
			BookmarkVO bookmark = new BookmarkVO();

			bookmark.setHostId( ((MemberVO) session.getAttribute("member")) .getMemberId() );
			
			mv.addObject("memberList", bookmarkService.getMemberListByGuestId(bookmark));
			mv.setViewName("mypage/interestReverse");
			
		} else {
			mv.setViewName("sign/signin.do");
		}
		
		return mv;
	}
	
	// 주목하기 삭제
	@RequestMapping("mypage/deleteInterest.do")
	@ResponseBody
	public String deleteBookmark(String guestId, HttpSession session) {
		
		BookmarkVO bookmark = new BookmarkVO(((MemberVO) session.getAttribute("member")) .getMemberId(), Integer.parseInt(guestId));
		if(bookmarkService.deleteBookmark(bookmark)==1) {
			return "1";
		};
		
		return "0";
		
	}
}
