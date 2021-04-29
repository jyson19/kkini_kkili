package com.kk.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kk.domain.HostVO;
import com.kk.domain.MemberVO;
import com.kk.service.AdminService;
import com.kk.service.ProfileService;

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
	public void getHostup(Model m) {
		System.out.println("getHostup 실행");
		m.addAttribute("hostUpList", adminService.getHostup());
	}
	// 프로필 인증 페이지로 이동
	@RequestMapping("admin/auth.do")
	public String getAuth(HostVO vo, Model m){
		System.out.println("pageMoveUpdate 실행" + vo);
		System.out.println(adminService.getAuth(vo));
		
		m.addAttribute("host", adminService.getAuth(vo));
		return "admin/auth";
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
