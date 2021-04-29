package com.kk.service;

import java.util.HashMap;
import java.util.List;

import com.kk.domain.HostVO;

public interface ProfileService {
	// 프로필 등록
	void insertProfile(HostVO vo);
	
	// 프로필 수정
	void updateProfile(HostVO vo);
	
	// 프로필 삭제
	void deleteProfile(HostVO vo);
	
	// 프로필 상세 조회
	HostVO getProfile(HostVO vo);

	// 프로필 멤버 포함 전체 조회
	List<HashMap<String, String>> getHostInfo();
	
}
