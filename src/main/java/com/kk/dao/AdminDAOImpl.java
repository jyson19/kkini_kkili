package com.kk.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kk.domain.MemberVO;

@Repository("AdminDAO")
public class AdminDAOImpl implements AdminDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	// 관리자 메인 페이지
	public List<MemberVO> getAdminMain(MemberVO vo) {
		return null;
	}
	
	@Override
	// 스탭 관리
	public List<MemberVO> getStaff(MemberVO vo) {
		return null;
	}

	@Override
	// 호스트 인증 관리
	public List<MemberVO> getHostup(MemberVO vo) {
		System.out.println("===> Mybatis getHostup() 호출");
		return mybatis.selectList("MemberDAO.getHostup", vo);
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
