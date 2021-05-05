package com.kk.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kk.dao.ContactDAO;
import com.kk.dao.impl.ContactDAOImpl;
import com.kk.domain.ContactVO;
import com.kk.domain.PagingCriteria;
import com.kk.service.ContactService;

// 컨택 서비스
@Service("contactService")
public class ContactServiceImpl implements ContactService {

	@Autowired
	private ContactDAO contactDAO;

	// 컨택 목록
	@Override
	public List<Map<String, String>> getContactList(PagingCriteria cri) {
		return contactDAO.getContactList(cri);
	}

	// 컨택 검색
	@Override
	public List<Map<String, String>> searchContactList(Map m) {
		return contactDAO.searchContactList(m);
	}

	// 컨택 글 갯수
	@Override
	public int totalCnt() {
		return contactDAO.totalCnt();
	}

	// 컨택 1개 반환
	@Override
	public Map<String, String> getContactOne(int memberId) {
		return (Map<String, String>) contactDAO.getContactOne(memberId);
	}

	// 컨택 생성
	@Override
	public int insertContact(ContactVO vo) {
		return contactDAO.insertContact(vo);
	}

	// 컨택생성-프로필
	@Override
	public Map<String, String> getHostProfile(int memberId) {
		return contactDAO.getHostProfile(memberId);
	}

	// 나의 컨택 정보 가져오기
	@Override
	public List<Map<String, String>> getMyContactList(int memberId) {
		return contactDAO.getMyContactList(memberId);
	}

	// 컨택 가치 가져오기
	@Override
	public List<Map<String, String>> contactValue(int memberId) {
		return contactDAO.contactValue(memberId);

	}
	// 컨택 비드 페이지
	@Override
	public Map<String, String> getBidView(int contactId) {
		return contactDAO.getBidView(contactId);

	}

	// 컨택 입찰
	@Override
	public int bidUpdate(HashMap<String, String> map) {
		return contactDAO.bidUpdate(map);
	}

	// 컨택 최고가 금액 확인
	@Override
	public int lastValueCheck(int contactId) {
		return contactDAO.lastValueCheck(contactId);
	}

	@Override
	public List<Map<String, String>> getMainContactList(PagingCriteria cri) {
		List<Map<String, String>> result = contactDAO.getContactList(cri);
		for(int i = 0; i < result.size(); i++) {
			for(String key : result.get(i).keySet()) {
				result.get(i).replace(key, String.valueOf(result.get(i).get(key)));				
			}
		}
		return result;
	}

	// 컨택 만남처리
	@Override
	public int qrCheckIn(ContactVO contact) {
		return contactDAO.qrCheckIn(contact);
	}

	// 컨택 수익배분
	@Override
	public int addRevenue(String contactId) {
		return contactDAO.addRevenue(contactId);
	}

	// 마이페이지 내 입찰 내역조회
	@Override
	public List<Map<String, String>> getBidHistory(int memberId) {
		return contactDAO.getBidHistory(memberId);
	}

	// 컨택 입찰 페이지 내 최근입찰내역
	@Override
	public List<Map<String, String>> recentBidList(int contactId) {
		return contactDAO.recentBidList(contactId);
	}
}
