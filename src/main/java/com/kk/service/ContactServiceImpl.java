package com.kk.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kk.dao.ContactDAOImpl;
import com.kk.domain.PagingCriteria;

// 컨택 서비스
@Service("contactService")
public class ContactServiceImpl implements ContactService {

	@Autowired
	private ContactDAOImpl contactDAO;

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
}
