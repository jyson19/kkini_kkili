package com.kk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kk.dao.ContactDAOImpl;
import com.kk.domain.ContactVO;

// 컨택 서비스
@Service("contactService")
public class ContactServiceImpl implements ContactService{
	
	@Autowired
	private ContactDAOImpl contactDAO;

	@Override
	public List<ContactVO> getContactList(ContactVO vo) {
		return contactDAO.getContactList(vo);
	}
}
