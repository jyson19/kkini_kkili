package com.kk.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kk.service.NoticeService;

@Controller
public class NoticeController {
	
	private Logger log = LoggerFactory.getLogger(MypageController.class);
	
	@Autowired
	NoticeService noticeService;
	
	@RequestMapping("notice/list.do")
	public void getNoticeList() {
		log.info("NoticeController.getNoticeList 실행");
	}
}
