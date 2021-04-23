package com.kk.dao;

import java.util.List;

import com.kk.domain.MemberVO;

public class AdminDAOImpl implements AdminDAO{

	@Override
	// 관리자 메인 페이지
	public List<MemberVO> getAdminMain(MemberVO vo) {
		return null;
	}
	
	@Override
	// 스탭 관리
	public List<MemberVO> getStaff(MemberVO vo) {
		return null;
	}

	@Override
	// 호스트 인증 관리
	public List<MemberVO> getHostup(MemberVO vo) {
		return null;
	}

	@Override
	// 휴먼 계정
	public List<MemberVO> getDormancy(MemberVO vo) {
		return null;
	}
}
