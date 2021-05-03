package com.kk.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kk.domain.PagingCriteria;
import com.kk.service.ContactService;
import com.kk.service.ProfileService;

@Controller
@RequestMapping("main")
public class BasicController {

	private Logger log = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	private ContactService contactService;
	
	@Autowired
	private ProfileService profileService;

	// 관련 페이지로 이동
	@RequestMapping("{step}.do")
	public String movingPage(@PathVariable("step") String step) {
		log.info("BasicController : " + step + "페이지로 이동 요청");
		return "main/" + step;
	}

	// 컨택 목록
	@RequestMapping("r/contactList.do")
	@ResponseBody
	public List<Map<String, String>> mainContactList(Model model) {
		log.info("BasicController.mainContactList");

		PagingCriteria cri = new PagingCriteria();

		cri.setPageNum(1);
		cri.setAmount(10);

		List<Map<String, String>> boardList = contactService.getMainContactList(cri);

		return boardList;
	}

	// 프로필 목록
	@RequestMapping("r/profileList.do")
	@ResponseBody
	public List<HashMap<String, String>> mainProfileList() {
		log.info("BasicController.mainProfileList");
		return profileService.getMainHostInfo();
	}

}
