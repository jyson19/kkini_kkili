package com.kk.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kk.dao.BookmarkDAOImpl;
import com.kk.domain.BookmarkVO;
import com.kk.domain.HostVO;
import com.kk.domain.MemberVO;
import com.kk.service.BookmarkService;
import com.kk.service.MemberService;
import com.kk.service.NoticeService;
import com.kk.service.ProfileService;

@Controller
public class MypageController {

	@Autowired
	private ProfileService profileService;
	
	@Autowired
	private BookmarkService bookmarkService;
	
	// 관련 페이지로 이동
	@RequestMapping("mypage/{step}.do")
	public String movingPage(@PathVariable("step") String step) {
		System.out.println("MypageController : " + step + "페이지로 이동 요청");
		return "mypage/" + step;
	}
		

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
	public String deleteBookmark(String hostId, HttpSession session) {
		
		// 로그인했다면
		if(session.getAttribute("member")!=null) {
			
			BookmarkVO bookmark = new BookmarkVO(Integer.parseInt(hostId), ((MemberVO) session.getAttribute("member")) .getMemberId());
			if(bookmarkService.deleteBookmark(bookmark)==1) {
				return "1";
			};
			
		}
		return "0";
	}
	
	// 주목하기 추가
	@RequestMapping("mypage/insertInterest.do")
	@ResponseBody
	public String insertBookmark(String hostId, HttpSession session) {
		
		// 로그인했다면
		if(session.getAttribute("member")!=null) {
			
			BookmarkVO bookmark = new BookmarkVO(Integer.parseInt(hostId), ((MemberVO) session.getAttribute("member")) .getMemberId());
			System.out.println("bookmark");
			if(bookmarkService.insertBookmark(bookmark)==1) {
				return "1";
			};
			
		}
		return "0";
	}
		
	// 프로필 등록
	@RequestMapping(value = "mypage/saveProfile.do")
	public String insertProfile(HostVO vo, HttpSession session) throws IOException {
		vo.setHostId( ((MemberVO)session.getAttribute("member")).getMemberId() ); 
		System.out.println("insertProfile 실행" + vo);
		profileService.insertProfile(vo);
		return "redirect:/mypage/viewProfile.do";
	}
//	// 프로필 수정
//	@RequestMapping("updateProfile.do")
//	public void updateProfile(MemberVO vo){
//		System.out.println("updateProfile 실행");
//	}
//	// 프로필 삭제
//	@RequestMapping("")
//	public void deleteProfile(MemberVO vo){
//		System.out.println("deleteProfile 실행");
//	}
	// 프로필 상세 조회
	@RequestMapping("mypage/viewProfile")
	public String getProfile(HostVO vo, Model m){
		System.out.println("getProfile 실행" + vo);
		m.addAttribute("host", profileService.getProfile(vo));
		return "mypage/viewProfile";
	}
	
}
