package com.kk.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kk.domain.ContactVO;
import com.kk.domain.PagingCriteria;

@Repository("ContactDAO")
public class ContactDAOImpl implements ContactDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 컨택 리스트
	@Override
	public List<Map<String, String>> getContactList(PagingCriteria paging) {
		System.out.println("ContactDAOImpl.getContactList");
//		System.out.println("리스트 크기 : " + mybatis.selectList("contact.getContactList", vo).size());
		return mybatis.selectList("contact.getContactList", paging);
	}

	// 컨택 검색
	public List<Map<String, String>> searchContactList(Map m) {
		System.out.println(mybatis.selectList("contact.getSearchList", m).size());
		return mybatis.selectList("contact.getSearchList", m);
	}

	// 글 갯수
	public int totalCnt() {
		return mybatis.selectOne("contact.getTotalCnt");
	}
	
	// 컨택 1개 반환
	public Map<String, String> getContactOne(int memberId) {
		return mybatis.selectOne("contact.getContactOne", memberId);
	}
	
}
