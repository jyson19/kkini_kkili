package com.kk.service;

import java.util.List;
import java.util.Map;

import com.kk.domain.ContactVO;

// 컨택 서비스
public interface ContactService {

	List<Map<String, String>> getContactList();
	
}
