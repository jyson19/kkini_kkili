package com.kk.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.kk.domain.HostVO;

public interface AdminService {
	List<HostVO> getAdminMain(HostVO vo);

	List<HostVO> getStaff(HostVO vo);
	
	List<Map<String, String>> getHostup();
	
	HashMap<String, String> getAuth(HostVO vo);
	
	void levelup(HostVO vo);
	
	List<HostVO> getDormancy(HostVO vo);
	
	List<HostVO> getUsers(HostVO vo);
	
	List<HostVO> getMatch(HostVO vo);
	
	List<HostVO> getSales(HostVO vo);
	
	List<HostVO> getBook(HostVO vo);

	List<HashMap<String, String>> getAllContact();
}
