package com.kk.service;

import java.util.List;

import com.kk.domain.MemberVO;

public interface AdminService {
	List<MemberVO> getAdminMain(MemberVO vo);

	List<MemberVO> getStaff(MemberVO vo);
	
	List<MemberVO> getHostup(MemberVO vo);
	
	List<MemberVO> getDormancy(MemberVO vo);
}
