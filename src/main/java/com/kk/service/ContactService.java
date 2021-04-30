package com.kk.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.kk.domain.ContactVO;
import com.kk.domain.PagingCriteria;

// 컨택 서비스
public interface ContactService {

	List<Map<String, String>> getContactList(PagingCriteria cri);
	List<Map<String, String>> searchContactList(Map m);
	int totalCnt();
	Map<String, String> getContactOne(int memberId);
	int insertContact(ContactVO vo);
	Map<String, String> getHostProfile(int memberId);
	List<Map<String, String>> getMyContactList(int memberId);
	List<Map<String, String>> contactValue(int memberId);
	Map<String, String> getBidView(int contactId);
	int bidUpdate(HashMap<String, String> map);
	int lastValueCheck(int contactId);
}
