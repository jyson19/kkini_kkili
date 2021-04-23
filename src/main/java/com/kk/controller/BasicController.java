package com.kk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main")
public class BasicController {
	
	// 관련 페이지로 이동
	@RequestMapping("{step}.do")
	public String movingPage(@PathVariable("step") String step) {
		System.out.println("BasicController : " + step + "페이지로 이동 요청");
		return "main/" + step;
	}
		
}
