package com.kk.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kk.domain.HostVO;
import com.kk.domain.MemberVO;
import com.kk.service.AdminService;

@Controller
public class AdminController {
	
	private Logger log = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	AdminService adminService;
	
	// 관리자 메인 페이지
	@RequestMapping("admin/main.do")
	public String getAdminMain(HttpSession session) {
		log.info("AdminController.getAdminMain 함수 실행");
		
		if( session.getAttribute("member") != null && ((MemberVO) session.getAttribute("member")).getAuth() == 2) {
			log.debug("관리자 페이지 권한 확인");
			return "redirect: hostup.do";
		}
		return "sign/signin";
	}
	
	// 스탭 관리
	@RequestMapping("admin/staff.do")
	public String getStaff(HttpSession session) {
		
		log.info("AdminController.getStaff 함수 실행");
		
		if( session.getAttribute("member") != null && ((MemberVO) session.getAttribute("member")).getAuth() == 2) {
			log.debug("관리자 페이지 권한 확인");
			return "admin/staff";
		}
		
		return "sign/signin";
		
	}
	
	// 호스트 인증 관리
	@RequestMapping("admin/hostup.do")
	public String getHostup(Model m, HttpSession session) {
		log.info("AdminController.getHostup 함수 실행");
		
		if( session.getAttribute("member") != null && ((MemberVO) session.getAttribute("member")).getAuth() == 2) {
			log.debug("관리자 페이지 권한 확인");
			m.addAttribute("hostUpList", adminService.getHostup());
			return "admin/hostup";
		}
		
		return "sign/signin";
	}
	
	
	// 프로필 인증 페이지로 이동
	@RequestMapping("admin/auth.do")
	public String getAuth(HostVO vo, Model m, HttpSession session){
		
		log.info("AdminController.getAuth 함수 실행");
		log.debug(adminService.getAuth(vo) + "");
		
		if( session.getAttribute("member") != null && ((MemberVO) session.getAttribute("member")).getAuth() == 2) {
			log.debug("관리자 페이지 권한 확인");
			m.addAttribute("host", adminService.getAuth(vo));			
			return "admin/auth";
		}
		
		return "sign/signin";
	}
	
	@RequestMapping("admin/levelup.do")
	public String levelup(HostVO vo, Model m){
		log.info("AdminController.levelup 함수 실행");
		adminService.levelup(vo);
		return "redirect:hostup.do";
	}
	
	// 휴먼 계정
	@RequestMapping("admin/dormancy.do")
	public void getDormancy() {
		log.info("AdminController.getDormancy 함수 실행");
	}
	
	// 이용자 수 조회
	@RequestMapping("admin/users.do")
	public String getUsers(Model m, HttpSession session) {
		
		log.info("AdminController.getUsers 함수 실행");
		
		if( session.getAttribute("member") != null && ((MemberVO) session.getAttribute("member")).getAuth() == 2) {
			log.debug("관리자 페이지 권한 확인");
			m.addAttribute("numberOfMember", adminService.getChartNumberOfMember());
			log.debug("numberOfMember");
			m.addAttribute("numberOfContact", adminService.getChartNumberOfContact());
			log.debug("numberOfContact");
			m.addAttribute("numberOfSuccessContact", adminService.getChartNumberOfSuccessContact());
			log.debug("numberOfSuccessContact");
			m.addAttribute("makingContactUser", adminService.getChartMakingContactUser());
			log.debug("makingContactUser");
			m.addAttribute("reservation", adminService.getChartReservation());
			log.debug("reservation");			
			return "admin/users";
		}
		
		return "sign/signin";
		
	}
	
	// 매칭 현황 조회
	@RequestMapping("admin/match.do")
	public void getMatch(Model m, HttpSession session) {
		
		log.info("AdminController.getMatch 함수 실행");
		
		// 관리자면
		if( ((MemberVO) session.getAttribute("member")).getAuth() == 2) {
			log.debug("관리자 페이지 권한 확인");
			m.addAttribute("contactList", adminService.getAllContact());
		}
		
	}

	// 매출 장부 조회
	@RequestMapping("admin/book.do")
	public void getSalesHistory(Model m, HttpSession session) {
		
		log.info("AdminController.getSalesHistory 함수 실행");
		
		if( session.getAttribute("member") != null && ((MemberVO) session.getAttribute("member")).getAuth() == 2) {
			log.debug("관리자 페이지 권한 확인");
			m.addAttribute("totalSales", adminService.totalSales());
			m.addAttribute("salesHistory", adminService.getSalesHistory());			
		}

	}
	
	// 마이 페이지 클릭시 권한에 따라 분기 - 요약 페이지임으로 필요한 DB 전달하기
	@RequestMapping("admin/summary.do")
	public void summary() {
		
	}
}
