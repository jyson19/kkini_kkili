package com.kk.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kk.domain.ContactVO;

@Repository("ContactDAO")
public class ContactDAOImpl implements ContactDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 컨택 리스트
	@Override
	public List<Map<String, String>> getContactList() {
		System.out.println("ContactDAOImpl.getContactList");
//		System.out.println("리스트 크기 : " + mybatis.selectList("contact.getContactList", vo).size());
		return mybatis.selectList("contact.getContactList");
	}

	// 컨택 검색
	public List<Map<String, String>> searchContactList() {
		System.out.println("ContactDAOImpl.searchContactList");
//		return mybatis.selectList("contact.searchContactList");
		return null;
	}
	
}
