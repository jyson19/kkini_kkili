package com.kk.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kk.domain.CmtVO;

@Repository("CmtDAO")
public class CmtDAOImpl implements CmtDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<HashMap<String,String>> getCmtList(CmtVO cmtVO) {
		return mybatis.selectList("cmtDAO.getCmtList", cmtVO);
	}

	@Override
	public int insertCmt(CmtVO cmtVO) {
		return mybatis.insert("cmtDAO.insertCmt", cmtVO);
	}

	@Override
	public int deleteCmt(CmtVO cmtVO) {
		return mybatis.delete("cmtDAO.deleteCmt", cmtVO);
	}

}
