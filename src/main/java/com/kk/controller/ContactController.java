package com.kk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kk.domain.ContactVO;
import com.kk.domain.MemberVO;
import com.kk.service.ContactService;

// 컨택 관련 controller

@Controller
public class ContactController {
	
	@Autowired
	private ContactService contactService;
	
	// 컨택 목록
	@RequestMapping("contact/list.do")
	public void getContactList(Model model) {
		System.out.println("ContactController.getContactList");
		model.addAttribute("contactList", contactService.getContactList());
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
	public void searchContactList(
			@RequestParam("keyword") String keyword,
			@RequestParam("region") String region,
			@RequestParam("startdate") String startdate,
			@RequestParam("enddate") String enddate
			) {
		System.out.println("keyword : " + keyword);
		System.out.println("region : " + region);
		System.out.println("startdate : " + startdate);
		System.out.println("enddate : " + enddate);
		
		System.out.println("ContactController.searchContactList");
		
	}
	
	
	@RequestMapping("host/profile.do")
	public void temp() {
		System.out.println("임시 프로필 페이지 : 아직 미연동");
		System.out.println("ContactController.temp");
	};
}
