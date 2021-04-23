package com.kk.dao;

import java.util.List;

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
	public List<ContactVO> getContactList(ContactVO vo) {
		System.out.println("ContactDAOImpl.getContactList");
		System.out.println("리스트 크기 : " + mybatis.selectList("contact.getContactList", vo).size());
		return mybatis.selectList("contact.getContactList", vo);
	}
	
}
