package com.kk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kk.domain.ContactVO;
import com.kk.domain.MemberVO;
import com.kk.service.ContactService;

// 컨택 관련 controller

@Controller
public class ContactController {
	
	@Autowired
	private ContactService contactService;
	
	@RequestMapping("contact/list.do")
	public void getContactList(ContactVO vo) {
		System.out.println("ContactController.getContactList");
	}
}
