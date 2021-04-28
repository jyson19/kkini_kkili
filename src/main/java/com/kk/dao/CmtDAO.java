package com.kk.dao;

import java.util.HashMap;
import java.util.List;

import com.kk.domain.CmtVO;

// CmtDAOImpl에서 구현 예정
public interface CmtDAO {

	// 컨택 리스트
	List<HashMap<String, String>> getCmtList(CmtVO cmtVO);
	
	int insertCmt(CmtVO cmtVO);

	int deleteCmt(CmtVO cmtVO);
		
}
