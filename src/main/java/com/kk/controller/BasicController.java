package com.kk.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kk.domain.MemberVO;
import com.kk.domain.PageMaker;
import com.kk.domain.PagingCriteria;
import com.kk.service.ContactService;

@Controller
@RequestMapping("main")
public class BasicController {
	
	@Autowired
	private ContactService contactService;
	
	// 관련 페이지로 이동
	@RequestMapping("{step}.do")
	public String movingPage(@PathVariable("step") String step) {
		System.out.println("BasicController : " + step + "페이지로 이동 요청");
		return "main/" + step;
	}
	
	
	// 컨택 목록
	@RequestMapping("r/contactList.do")
	@ResponseBody
	public List<Map<String, String>> mainContactList(Model model) {
		System.out.println("BasicController.mainContactList");
		
		PagingCriteria cri = new PagingCriteria();
		
		cri.setPageNum(1);
		cri.setAmount(10);
		
		System.out.println(cri);
		
		List<Map<String, String>> boardList = contactService.getMainContactList(cri);
		
		return boardList;
	}
		
}
