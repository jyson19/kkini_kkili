package com.kk.service;

import java.util.List;

import com.kk.domain.NoticeVO;

public interface NoticeService {
	List<NoticeVO> getNoticeList(NoticeVO vo);
}
