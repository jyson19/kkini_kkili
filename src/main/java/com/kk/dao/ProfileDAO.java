package com.kk.dao;

import com.kk.domain.HostVO;

public interface ProfileDAO {
	public HostVO insertProfile(HostVO vo);

	public void updateProfile(HostVO vo);

	public void deleteProfile(HostVO vo);

	public HostVO getProfile(HostVO vo);
}
