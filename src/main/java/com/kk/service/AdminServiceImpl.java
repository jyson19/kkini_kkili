package com.kk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kk.dao.AdminDAOImpl;
import com.kk.dao.MemberDAO;
import com.kk.domain.MemberVO;

@Service("adminMainService")
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminDAOImpl MemberDAO;

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
		return MemberDAO.getHostup(vo);
	}

	@Override
	// 휴먼 계정
	public List<MemberVO> getDormancy(MemberVO vo) {
		return null;
	}

	@Override
	// 이용자 수 조회
	public List<MemberVO> getUsers(MemberVO vo) {
		return null;
	}

	@Override
	// 매칭 현황 조회
	public List<MemberVO> getMatch(MemberVO vo) {
		return null;
	}

	@Override
	// 총 매출 조회
	public List<MemberVO> getSales(MemberVO vo) {
		return null;
	}

	@Override
	// 매출 장부 조회
	public List<MemberVO> getBook(MemberVO vo) {
		return null;
	}
}
