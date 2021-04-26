package com.kk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kk.service.NoticeService;

@Controller
public class MypageController {
	
	@RequestMapping("mypage/enter.do")
	public String enterPage() {
		System.out.println("MypageController : enterPage 실행");
		return "mypage/summary";
	}
}
