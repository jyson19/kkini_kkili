package com.kk.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kk.domain.NoticeVO;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService{

	@Override
	public List<NoticeVO> getNoticeList(NoticeVO vo) {
		
		return null;
	}
	
}
