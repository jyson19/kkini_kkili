package com.kk.service;

import java.util.List;
import java.util.Map;

import com.kk.domain.AdminVO;

public interface AdminService {
	List<AdminVO> getAdminMain(AdminVO vo);

	List<AdminVO> getStaff(AdminVO vo);
	
	List<Map<String, String>> getHostup();
	
	List<AdminVO> getDormancy(AdminVO vo);
	
	List<AdminVO> getUsers(AdminVO vo);
	
	List<AdminVO> getMatch(AdminVO vo);
	
	List<AdminVO> getSales(AdminVO vo);
	
	List<AdminVO> getBook(AdminVO vo);
}
