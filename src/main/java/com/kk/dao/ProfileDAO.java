package com.kk.dao;

import com.kk.domain.MemberVO;

public interface ProfileDAO {
	public void insertProfile(MemberVO vo);

	public void updateProfile(MemberVO vo);

	public void deleteProfile(MemberVO vo);

	public MemberVO getProfile(MemberVO vo);
}
