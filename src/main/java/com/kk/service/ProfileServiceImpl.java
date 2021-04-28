package com.kk.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kk.dao.ProfileDAOImpl;
import com.kk.domain.HostVO;

@Service("profileService")
public class ProfileServiceImpl implements ProfileService{
	
	@Autowired
	private ProfileDAOImpl profileDAO;
	
	// 프로필 등록
	public void insertProfile(HostVO vo) {
		profileDAO.insertProfile(vo);
	}
	
	// 프로필 수정
	public void updateProfile(HostVO vo) {
		profileDAO.updateProfile(vo);
	}
	
	// 프로필 삭제
	public void deleteProfile(HostVO vo) {
		profileDAO.deleteProfile(vo);
	}
	
	// 프로필 상세 조회
	public HostVO getProfile(HostVO vo) {
		return profileDAO.getProfile(vo);
		
	}
	
}
