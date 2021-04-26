package com.kk.dao;

import java.util.List;
import java.util.Map;

import com.kk.domain.AdminVO;

public interface AdminDAO {
	List<AdminVO> getAdminMain(AdminVO vo);
	
	List<AdminVO> getStaff(AdminVO vo);
	
	List<Map<String, String>> getHostup();
	
	List<AdminVO> getDormancy(AdminVO vo);
	
	List<AdminVO> getUsers(AdminVO vo);
	
	List<AdminVO> getMatch(AdminVO vo);
	
	List<AdminVO> getSales(AdminVO vo);
	
	List<AdminVO> getBook(AdminVO vo);
}
