package com.kk.dao;

import java.util.HashMap;
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
	
	public List<Map<String, String>> getMyContactList(int memberId);
	
	// 컨택 생성-프로필
	Map<String, String> getHostProfile(int memberId);

	
	// 컨택 가치 확인
	List<Map<String, String>> contactValue(int memberId);


	// 컨택 비드 페이지
	Map<String, String> getBidView(int contactId);

	int bidUpdate(HashMap<String, String> map);

	// 컨택 최고가 체크
	int lastValueCheck(int contactId);
}
