package com.kk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
	public void getContactList(Model model) {
		System.out.println("ContactController.getContactList");
//		model.addAttribute("contactList", contactService.getContactList(conVO));
		model.addAttribute("contactList", contactService.getContactList());
	}
}
