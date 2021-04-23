package com.kk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kk.service.AdminService;
import com.kk.service.NoticeService;

@Controller
public class AdminController {
	
	@Autowired
	AdminService aminMainService;
	
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
	public void getHostup() {
		System.out.println("getHostup 실행");
	}
	
	// 휴먼 계정
	@RequestMapping("admin/dormancy.do")
	public void getDormancy() {
		System.out.println("getDormancy 실행");
	}
}
