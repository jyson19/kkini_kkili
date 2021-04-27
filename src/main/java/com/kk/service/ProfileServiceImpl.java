package com.kk.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kk.dao.ProfileDAOImpl;
import com.kk.domain.MemberVO;

@Service("profileService")
public class ProfileServiceImpl implements ProfileService{
	
	@Autowired
	private ProfileDAOImpl profileDAO;
	
	// 프로필 등록
	public void insertProfile(MemberVO vo) {
		profileDAO.insertProfile(vo);
	}
	
	// 프로필 수정
	public void updateProfile(MemberVO vo) {
		profileDAO.updateProfile(vo);
	}
	
	// 프로필 삭제
	public void deleteProfile(MemberVO vo) {
		profileDAO.deleteProfile(vo);
	}
	
	// 프로필 상세 조회
	public MemberVO getProfile(MemberVO vo) {
		return profileDAO.getProfile(vo);
		
	}
	
}
