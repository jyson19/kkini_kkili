package com.kk.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kk.domain.ContactVO;
import com.kk.domain.MemberVO;
import com.kk.domain.PageMaker;
import com.kk.domain.PagingCriteria;
import com.kk.service.ContactService;

// 컨택 관련 controller

@Controller
public class ContactController {

	@Autowired
	private ContactService contactService;

//private static final Logger logger = LoggerFactory.getLogger(ContactController.class);
//	
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String kakaoMap() {
//		return "map/testMap";
//	}

	// 컨택 목록
	@RequestMapping("contact/list.do")
	public void getContactList(PagingCriteria cri, Model model, HttpSession session) {
		System.out.println("ContactController.getContactList");

		List<Map<String, String>> boardList = contactService.getContactList(cri);

		int total = contactService.totalCnt();
		System.out.println("컨택 글 갯수 : " + total);

		model.addAttribute("contactList", boardList);
		model.addAttribute("paging", new PageMaker(cri, total));

		// 로그인 시
		if (session.getAttribute("member") != null) {
			int memberId = ((MemberVO) session.getAttribute("member")).getMemberId();
			System.out.println("memberId : " + memberId);
			// 유저가 호스트일 때
			if (memberId >= 1) {
				Map<String, String> someContact = contactService.getContactOne(memberId);
//				if (someContact.containsKey("HOST_ID")) {
//					System.out.println("매핑 갯수 : " + someContact.size());
				model.addAttribute("contactOne", someContact);
			}
		}
	}

	// 컨택 검색(키워드 + 지역 + 날짜)
	// 0 : null
	// 1 : 서울 / 경기 / 인천
	// 2 : 강원
	// 3 : 대전 / 세종 / 충북 / 충남
	// 4 : 광주 / 전북 / 전남
	// 5 : 부산 / 대구 / 울산 / 경북 / 경남
	// 6 : 제주
	@RequestMapping("contact/search.do")
	public void searchContactList(Model model, //
			@RequestParam("keyword") String keyword, //
			@RequestParam("region") String region, //
			@RequestParam("startdate") String startdate, //
			@RequestParam("enddate") String enddate) {
		System.out.println("keyword : " + keyword);
		System.out.println("region : " + region);
		System.out.println("startdate : " + startdate);
		System.out.println("enddate : " + enddate);

		HashMap<String, String> map = new HashMap<String, String>();

		map.put("keyword", keyword);
		map.put("region", region);
		map.put("startdate", startdate);
		map.put("enddate", enddate);
		model.addAttribute("contactList", contactService.searchContactList(map));
	}

	// 컨택 생성
	@RequestMapping("contact/insert.do")
	public void insertContact(ContactVO vo, HttpSession session, Model model) {
		System.out.println("ContactController.insertContact() 실행");

		// 호스트 프로필 전달
		int memberId = ((MemberVO) session.getAttribute("member")).getMemberId();
		model.addAttribute("hostProfile", contactService.getHostProfile(memberId));
	}

	// 컨택 생성확인
	@RequestMapping("contact/insertCheck.do")
	public String insertCheck(ContactVO vo, HttpSession session) {
		System.out.println("ContactController.insertCheck() 실행");
		if (contactService.insertContact(vo) == 1) {
			return "redirect:/contact/list.do";
		}
		return "redirect:/contact/insert.do";
	}

	@RequestMapping("contact/bid.do")
	public void bidContact(HttpServletRequest request, Model model) {
		System.out.println("ContactController.bidContact() 실행");
		int contactId = Integer.parseInt(request.getParameter("contact_id"));
		System.out.println("컨택 번호: " + contactId);
		model.addAttribute("bidView", contactService.getBidView(contactId));
//		, String lvc, String lastValue, String hostId
//		System.out.println(lvc + " : " + lastValue + " : " + hostId);
	}

	@RequestMapping(value = "contact/bid_after.do", produces="application/text; charset=utf-8")
	@ResponseBody
	public String bidAfter(
			String lvc, 
			String lastValue, 
			String hostId, 
			String memberId, 
			String bidPrice,
			String contactId,
			String loginFlag,
			Model model) {
		System.out.println("ContactController.bidAfter() 실행");
		System.out.println(
				"lvc : " + lvc 
				+ "\nlastValue : " + lastValue 
				+ "\nhostId : " + hostId 
				+ "\nmemberId : " + memberId 
				+ "\ncontactId : " + contactId 
				+ "\nbidPrice : " + bidPrice);
		
		// 입찰 금액이 없을시(null)
		if(bidPrice.isEmpty()) {
			return "입찰 금액을 입력해주세요.";
		// 로그인 상태가 아닐시
		} else if(loginFlag.equals("false")) {
			return "로그인 이후 이용 가능합니다.";
		// 현재 최고가보다 낮거나 같은 금액일시
		} else if(Integer.parseInt(lastValue) >= Integer.parseInt(bidPrice)) {
			// 같은 시간에 누군가 최고금액 입찰시 해당 데이터 변경
			int f_lastValue = contactService.lastValueCheck(Integer.parseInt(contactId));
			return "최고가보다 높은 금액을 입력해주세요.:" + f_lastValue;
		// 마감완료 됐을시
		} else if(lvc.equals("마감 완료")) {
			return "해당 컨택은 마감 완료되었습니다.";
		// 개최한 호스트와 같은 사람일시
		}else if (hostId.equals(memberId)) {
			return "개최자는 입찰에 참여할 수 없습니다.";
		// 정상처리
		} else {
			// 1. 컨택 테이블 입찰자 변경
			// 2. 컨택 테이블 last_value 변경
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("memberId", memberId);
			map.put("bidPrice", bidPrice);
			map.put("contactId", contactId);
			int resultInt = contactService.bidUpdate(map);
			System.out.println("resultInt : " + resultInt);
			if(resultInt == 1) {
				return "입찰이 완료되었습니다!";
			}
			
			// 추후 추가 : 컨택 history
			return "입찰 실패.. 이유는.. 음..";
		}
	}
	
	// 만남확인 (qr check)
	@RequestMapping("contact/qr_check.do")
	public void qrCheck() {
		System.out.println("ContactController.qrCheck() 실행");
		
	}
}
