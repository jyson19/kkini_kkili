package com.kk.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kk.dao.CmtDAO;
import com.kk.domain.CmtVO;

@Service
public class CmtServiceImpl implements CmtService {

	@Autowired
	CmtDAO cmtDAO;
	
	@Override
	public List<HashMap<String, String>> getCmtList(CmtVO cmtVO) {
		List<HashMap<String, String>> result = cmtDAO.getCmtList(cmtVO);
		for(int i = 0; i < result.size(); i++) {
			result.get(i).replace("HOST_ID", String.valueOf(result.get(i).get("HOST_ID")));
			result.get(i).replace("CMT_ID", String.valueOf(result.get(i).get("CMT_ID")));
			result.get(i).replace("WRITE_DATE", String.valueOf(result.get(i).get("WRITE_DATE")));
			result.get(i).replace("GUEST_ID", String.valueOf(result.get(i).get("GUEST_ID")));
		}
		return result;
	}

	@Override
	public int insertCmt(CmtVO cmtVO) {
		return cmtDAO.insertCmt(cmtVO);
	}

	@Override
	public int deleteCmt(CmtVO cmtVO) {
		return cmtDAO.deleteCmt(cmtVO);
	}

}
