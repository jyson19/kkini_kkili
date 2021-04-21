package com.kk.dao;

import java.util.List;

import com.kk.domain.ContactVO;

// ContactDAOImpl에서 구현
public interface ContactDAO {
	
	// 컨택 리스트
	public List<ContactVO> getContactList(ContactVO vo);
}
