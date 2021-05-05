package com.kk.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kk.dao.impl.ProfileDAOImpl;
import com.kk.domain.HostVO;
import com.kk.service.ProfileService;

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
	
	// 프로필 전체 조회
	public List<HashMap<String, String>> getHostInfo() {
		return profileDAO.getHostInfo();
	}

	@Override
	public List<HashMap<String, String>> getMainHostInfo() {
		List<HashMap<String, String>> result = profileDAO.getHostInfo();
		for(int i = 0; i < result.size(); i++) {
			for(String key : result.get(i).keySet()) {
				result.get(i).replace(key, String.valueOf(result.get(i).get(key)));				
			}
		}
		return result;
	}
}
