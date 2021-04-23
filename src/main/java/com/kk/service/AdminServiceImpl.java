package com.kk.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kk.domain.MemberVO;

@Service("adminMainService")
public class AdminServiceImpl implements AdminService{

	@Override
	// 관리자 메인 페이지
	public List<MemberVO> getAdminMain(MemberVO vo) {
		return null;
	}
	
	@Override
	//스탭 관리
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
