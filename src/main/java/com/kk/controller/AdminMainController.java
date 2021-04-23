package com.kk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kk.service.AdminMainService;
import com.kk.service.NoticeService;

@Controller
public class AdminMainController {
	
	@Autowired
	AdminMainService aminMainService;
	
	@RequestMapping("admin/adminMain.do")
	public void getAdminMain() {
		System.out.println("getAdminMain 실행");
	}
}
