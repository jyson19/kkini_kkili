package com.kk.dao;

import java.util.List;
import java.util.Map;

import com.kk.domain.ContactVO;
import com.kk.domain.PagingCriteria;

// ContactDAOImpl에서 구현
public interface ContactDAO {
	
	// 컨택 리스트
	List<Map<String, String>> getContactList(PagingCriteria cri);
	
	List<Map<String, String>> searchContactList(Map m);
	
	int totalCnt();
	
	Map<String, String> getContactOne(int memberId);
	
	// 컨택 생성
	int insertContact(ContactVO vo);
}
