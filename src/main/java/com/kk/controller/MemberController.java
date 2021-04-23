package com.kk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kk.domain.MemberVO;
import com.kk.service.MemberService;

// 회원 관련 controller
@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	// id check를 위한 메서드
	@RequestMapping(value ="main/member/idCheck.do", produces="application/text; charset=utf8")
	@ResponseBody
	public String getEmail(String email) {
		System.out.println("MemberController : idCheck");
		String result = "1"; // 기본적으로 해당 메일 사용불가
		
		MemberVO vo = new MemberVO();
		
		vo.setEmail(email);
		
		if(memberService.getMember(vo) == null) { // DB에 없으면 해당 메일 사용 가능
			result = "0";
		}
		
		return result;
	}
}
