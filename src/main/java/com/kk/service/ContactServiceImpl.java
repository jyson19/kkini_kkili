package com.kk.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kk.dao.ContactDAO;
import com.kk.dao.ContactDAOImpl;
import com.kk.domain.ContactVO;
import com.kk.domain.PagingCriteria;

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
}
