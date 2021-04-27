package com.kk.service;

import com.kk.domain.MemberVO;

public interface ProfileService {
	// 프로필 등록
	void insertProfile(MemberVO vo);
	
	// 프로필 수정
	void updateProfile(MemberVO vo);
	
	// 프로필 삭제
	void deleteProfile(MemberVO vo);
	
	// 프로필 상세 조회
	MemberVO getProfile(MemberVO vo);
	
}
