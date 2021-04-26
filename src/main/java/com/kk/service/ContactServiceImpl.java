package com.kk.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kk.dao.ContactDAOImpl;

// 컨택 서비스
@Service("contactService")
public class ContactServiceImpl implements ContactService{
	
	@Autowired
	private ContactDAOImpl contactDAO;

	@Override
	public List<Map<String, String>> getContactList() {
		return contactDAO.getContactList();
	}

	@Override
	public List<Map<String, String>> searchContactList() {
		return contactDAO.searchContactList();
	}
}
