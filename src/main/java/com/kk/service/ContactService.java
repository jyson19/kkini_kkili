package com.kk.service;

import java.util.List;

import com.kk.domain.ContactVO;

// 컨택 서비스
public interface ContactService {

	List<ContactVO> getContactList(ContactVO vo);
	
}
