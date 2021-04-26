package com.kk.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kk.domain.EmailAuthVO;

@Repository("EmailAuthDAO")
public class EmailAuthDAOImpl implements EmailAuthDAO{

	@Autowired
	SqlSessionTemplate mybatis;
	
	@Override
	public EmailAuthVO getEmail(EmailAuthVO vo) {
		return mybatis.selectOne("emailAuth.getEmail", vo);
	}

	@Override
	public int insert(EmailAuthVO vo) {
		int result = mybatis.insert("emailAuth.insert", vo);
		return result;
	}

	@Override
	public int update(EmailAuthVO vo) {
		int result = mybatis.update("emailAuth.update", vo);
		return result;
	}

}
