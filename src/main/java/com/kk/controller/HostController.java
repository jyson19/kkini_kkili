package com.kk.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kk.domain.BookmarkVO;
import com.kk.domain.CmtVO;
import com.kk.domain.HostVO;
import com.kk.domain.MemberVO;
import com.kk.service.BookmarkService;
import com.kk.service.CmtService;
import com.kk.service.MemberService;
import com.kk.service.ProfileService;

// 호스트 프로필 관련 controller
@Controller
public class HostController {
	
	@Autowired
	private CmtService cmtSerivce;
	
	@Autowired
	private ProfileService profileSerivce;
	
	@Autowired
	private MemberService memeberService;
	
	@Autowired
	private BookmarkService bookmarkService;
	
	// 프로필 상세 조회 접속시
	@RequestMapping("host/hostList.do")
	public ModelAndView moveToHostListPage() { // 들어오는 파라미터 값은 hostId
		// 접속확인
		System.out.println("HostController.moveToHostListPage");
		
		// 뷰 객체로 넘기기 위한 선언
		ModelAndView mv = new ModelAndView();
		
		// 호스트 정보 가져와서 뷰로 넘겨주기
		mv.addObject("hostInfo", profileSerivce.getHostInfo());
		
		return mv;		
	};
	
	// 프로필 상세 조회 접속시 - 즐겨찾기도 같이 가져오는 걸로
	@RequestMapping("host/profile.do")
	public ModelAndView moveToProfilePage(HostVO hostVO, HttpSession session) { // 들어오는 파라미터 값은 hostId
		// 접속확인
		System.out.println("HostController.moveToProfilePage");
		
		// 뷰 객체로 넘기기 위한 선언
		ModelAndView mv = new ModelAndView();
		BookmarkVO bookmark = new BookmarkVO();
		MemberVO member = new MemberVO();
		
		member.setMemberId(hostVO.getHostId());
		
		// 해당 호스트 아이디를 멤버로 가져와서 권한 확인후
		if( memeberService.getMember(member).getAuth() == 1 ) {
			// 1 : 호스트이면 호스트 정보, 멤버 정보 담기
			mv.addObject("hostVO", profileSerivce.getProfile(hostVO));
			mv.addObject("hostInfo", memeberService.getMember(member));
		};
		
		// 로그인이 되어 있으면
		if( session.getAttribute("member") != null) {
			// 즐겨찾기 가져오기
			bookmark.setHostId(hostVO.getHostId());
			bookmark.setGuestId( ((MemberVO) session.getAttribute("member")).getMemberId() );
			if(bookmarkService.selectBookmark(bookmark)!=null) {
				mv.addObject("bookmark", "1");				
			}
		}
		
		// 호스트 내용 가져와서 뷰 페이지로 뿌려주기
		return mv;		
	};
	
	
	// 호스트 프로필 페이지에서 댓글 저장
	@RequestMapping("host/saveCmt.do")
	@ResponseBody
	public List<HashMap<String, String>> saveCmt(String cmt, int hostId, HttpSession session) { // 들어오는 파라미터 값은 hostId
		System.out.println("HostController.saveCmt 요청");
		
		// 로그인하지 않을시 댓글 못남김
		if(session.getAttribute("member")!=null) {
			
			CmtVO cmtVO = new CmtVO();
			
			cmtVO.setHostId(hostId); // 호스트 아이디 담기
			cmtVO.setContent(cmt); // 메세지 내용 담기
			cmtVO.setGuestId(((MemberVO) session.getAttribute("member")).getMemberId());
			
			System.out.println(hostId + " / " + cmtVO.getGuestId() + "/" + cmt + " / " + session.getAttribute("member"));
			
			cmtSerivce.insertCmt(cmtVO);
			return cmtSerivce.getCmtList(cmtVO);
		}
		
		return null;
		
	};
	
	// 호스트 프로필 페이지에서 댓글 삭제
	@RequestMapping("host/deleteCmt.do")
	@ResponseBody
	public String deleteCmt(CmtVO cmtVO, HttpSession session) {
		System.out.println("HostController.deleteCmt 요청");
		
		String result = "0";
		
		// 로그인하지 않을시 댓글 삭제 불가
		if(session.getAttribute("member")!=null) {
			
			// 세션으로 게스트 아이디 지정하기
			cmtVO.setGuestId( ((MemberVO) session.getAttribute("member")).getMemberId() );
			
			System.out.println(cmtVO);
			
			if(cmtSerivce.deleteCmt(cmtVO)==1) {
				result = "1"; // 성공적으로 삭제했음을 알림
			};
		}
		
		return result;
		
	};
	
	// 호스트 프로필 페이지에서 댓글 조회
	@RequestMapping("host/getCmtList.do")
	@ResponseBody
	public List<HashMap<String, String>> getCmtList(String cmt, int hostId, HttpSession session) { // 들어오는 파라미터 값은 hostId
		System.out.println("HostController.getCmtList 요청");
		
		CmtVO cmtVO = new CmtVO();
		
		cmtVO.setHostId(hostId); // 호스트 아이디 담기
		return cmtSerivce.getCmtList(cmtVO);

	};
}
