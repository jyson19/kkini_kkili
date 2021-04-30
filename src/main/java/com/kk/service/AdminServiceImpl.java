package com.kk.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kk.dao.AdminDAOImpl;
import com.kk.domain.HostVO;

@Service("adminMainService")
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminDAOImpl AdminDAO;

	@Override
	// 관리자 메인 페이지
	public List<HostVO> getAdminMain(HostVO vo) {
		return null;
	}
	
	@Override
	//스탭 관리
	public List<HostVO> getStaff(HostVO vo) {
		return null;
	}

	@Override
	// 호스트 인증 관리
	public List<Map<String, String>> getHostup() {
		return AdminDAO.getHostup();
	}

	@Override
	// 호스트 인증 승인 페이지
	public HashMap<String, String> getAuth(HostVO vo) {
		return AdminDAO.getAuth(vo);
	}
	
	// 호스트 인증 실행
	public void levelup(HostVO vo) {
		AdminDAO.levelup(vo);
	}
	
	@Override
	// 휴먼 계정
	public List<HostVO> getDormancy(HostVO vo) {
		return null;
	}

	@Override
	// 이용자 수 조회
	public List<HostVO> getUsers(HostVO vo) {
		return null;
	}

	@Override
	// 매칭 현황 조회
	public List<HostVO> getMatch(HostVO vo) {
		return null;
	}

	@Override
	// 총 매출 조회
	public List<HostVO> getSales(HostVO vo) {
		return null;
	}

	@Override
	// 매출 장부 조회
	public List<HostVO> getBook(HostVO vo) {
		return null;
	}

	@Override
	public List<HashMap<String, String>> getAllContact() {
		return AdminDAO.getAllContact();
	}

	
}
