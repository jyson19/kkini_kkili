package com.kk.dao;

import com.kk.domain.EmailAuthVO;

public interface EmailAuthDAO {
	EmailAuthVO getEmail(EmailAuthVO vo);
	int insert(EmailAuthVO vo);
	int update(EmailAuthVO vo);
}
