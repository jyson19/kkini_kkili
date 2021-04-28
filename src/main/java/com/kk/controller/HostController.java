package com.kk.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kk.domain.CmtVO;
import com.kk.domain.HostVO;
import com.kk.domain.MemberVO;
import com.kk.service.CmtService;

// 호스트 프로필 관련 controller
@Controller
public class HostController {
	
	@Autowired
	private CmtService cmtSerivce;
	
	@RequestMapping("host/profile.do")
	public void moveToProfilePage(HostVO hostId) { // 들어오는 파라미터 값은 hostId
		// 재완님 호스트 테이블 작성으로 vo 진행하면 받아서 진행하기
		
		// 해당 호스트 아이디를 멤버로 가져와서 권한 확인후
		
		// 1보다 크면
		
		// 호스트 내용 가져와서 뷰 페이지로 뿌려주기
		
		
		System.out.println("ContactController.moveToProfilePage");
		
	};
	
	
	// 호스트 프로필 페이지에서 댓글 저장
	@RequestMapping("host/saveCmt.do")
	@ResponseBody
	public List<HashMap<String, String>> saveCmt(String cmt, int hostId, HttpSession session) { // 들어오는 파라미터 값은 hostId
		System.out.println("ContactController.saveCmt 요청");
		
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
	
	// 호스트 프로필 페이지에서 댓글 조회
	@RequestMapping("host/getCmtList.do")
	@ResponseBody
	public List<HashMap<String, String>> getCmtList(String cmt, int hostId, HttpSession session) { // 들어오는 파라미터 값은 hostId
		System.out.println("ContactController.saveCmt 요청");
		
		CmtVO cmtVO = new CmtVO();
		
		
		// test 코드
		cmtVO.setHostId(hostId); // 호스트 아이디 담기
		return cmtSerivce.getCmtList(cmtVO);
		
//		// 로그인하지 않을시 댓글 못남김
//		if(session.getAttribute("member")!=null) {
//			System.out.println(hostId + " / " + cmt + " / " + session.getAttribute("member"));
//			
//			
//			return cmtSerivce.getCmtList(cmtVO);
//		}
//		
//		return null;
		
	};
}
