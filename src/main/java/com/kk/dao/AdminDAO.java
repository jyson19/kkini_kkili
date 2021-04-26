package com.kk.dao;

import java.util.List;

import com.kk.domain.MemberVO;

public interface AdminDAO {
	List<MemberVO> getAdminMain(MemberVO vo);
	
	List<MemberVO> getStaff(MemberVO vo);
	
	List<MemberVO> getHostup(MemberVO vo);
	
	List<MemberVO> getDormancy(MemberVO vo);
	
	List<MemberVO> getUsers(MemberVO vo);
	
	List<MemberVO> getMatch(MemberVO vo);
	
	List<MemberVO> getSales(MemberVO vo);
	
	List<MemberVO> getBook(MemberVO vo);
}
