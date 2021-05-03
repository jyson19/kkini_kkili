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

	// 컨택 만남처리
	int qrCheckIn(ContactVO contact);

	// 컨택 수익배분
	int addRevenue(String contactId);

	// 마이페이지 내 입찰 내역조회
	List<Map<String, String>> getBidHistory(int memberId);

	// 컨택 입찰 페이지 내 최근입찰내역
	List<Map<String, String>> recentBidList(int contactId);
}
