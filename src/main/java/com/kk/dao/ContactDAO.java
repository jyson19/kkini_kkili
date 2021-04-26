package com.kk.dao;

import java.util.List;
import java.util.Map;

import com.kk.domain.ContactVO;

// ContactDAOImpl에서 구현
public interface ContactDAO {
	
	// 컨택 리스트
	public List<Map<String, String>> getContactList();
	public List<Map<String, String>> searchContactList();
}
