package com.kk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kk.domain.MemberVO;
import com.kk.service.AdminService;
import com.kk.service.NoticeService;

@Controller
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	// 관리자 메인 페이지
	@RequestMapping("admin/main.do")
	public void getAdminMain() {
		System.out.println("getAdminMain 실행");
	}
	
	// 스탭 관리
	@RequestMapping("admin/staff.do")
	public void getStaff() {
		System.out.println("getStaff 실행");
	}
	
	// 호스트 인증 관리
	@RequestMapping("admin/hostup.do")
	public void getHostup(MemberVO vo, Model m) {
		System.out.println("getHostup 실행");
//		m.addAttribute("", adminService.getHostup(vo));
	}
	
	// 휴먼 계정
	@RequestMapping("admin/dormancy.do")
	public void getDormancy() {
		System.out.println("getDormancy 실행");
	}
	
	// 이용자 수 조회
	@RequestMapping("admin/users.do")
	public void getUsers() {
		System.out.println("getUsers 실행");
	}
	
	// 매칭 현황 조회
	@RequestMapping("admin/match.do")
	public void getMatch() {
		System.out.println("getMatch 실행");
	}
	
	// 총 매출 조회
	@RequestMapping("admin/sales.do")
	public void getSales() {
		System.out.println("getSales 실행");
	}
	
	// 매출 장부 조회
	@RequestMapping("admin/book.do")
	public void getBook() {
		System.out.println("getBook 실행");
	}
}
