package com.kk.service;

import java.util.List;
import java.util.Map;

import com.kk.domain.HostVO;

public interface AdminService {
	List<HostVO> getAdminMain(HostVO vo);

	List<HostVO> getStaff(HostVO vo);
	
	List<Map<String, String>> getHostup();
	
	List<HostVO> getDormancy(HostVO vo);
	
	List<HostVO> getUsers(HostVO vo);
	
	List<HostVO> getMatch(HostVO vo);
	
	List<HostVO> getSales(HostVO vo);
	
	List<HostVO> getBook(HostVO vo);
}
