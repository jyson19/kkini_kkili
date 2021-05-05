package com.kk.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kk.dao.AdminDAO;
import com.kk.domain.HostVO;

@Repository("AdminDAO")
public class AdminDAOImpl implements AdminDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	// 관리자 메인 페이지
	public List<HostVO> getAdminMain(HostVO vo) {
		return null;
	}
	
	@Override
	// 스탭 관리
	public List<HostVO> getStaff(HostVO vo) {
		return null;
	}

	@Override
	// 호스트 인증 관리
	public List<Map<String, String>> getHostup() {
		System.out.println("===> Mybatis getHostup() 호출");
		System.out.println(mybatis.selectList("admin.getHostup").size());
		return mybatis.selectList("admin.getHostup");
	}
	
	@Override
	// 호스트 인증 승인 페이지
	public HashMap<String, String> getAuth(HostVO vo) {
		System.out.println("===> Mybatis getAuth() 호출");
		return mybatis.selectOne("admin.getAuth", vo);
	}
	
	@Override
	// 호스트 인증 승인
	public void levelup(HostVO vo) {
		System.out.println("===> Mybatis levelup() 호출");
		mybatis.update("admin.levelup1", vo);
		mybatis.update("admin.levelup2", vo);
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


	

	public List<HashMap<String, String>> getAllContact() {
		return mybatis.selectList("admin.getAllContact");
	}

	public List<HashMap<String, String>> getChartNumberOfMember() {
		return mybatis.selectList("admin.getChartNumberOfMember");
	}

	public List<HashMap<String, String>> getChartNumberOfContact() {
		return mybatis.selectList("admin.getChartNumberOfContact");

	}

	public List<HashMap<String, String>> getChartNumberOfSuccessContact() {
		return mybatis.selectList("admin.getChartNumberOfSuccessContact");

	}

	public List<HashMap<String, String>> getChartMakingContactUser() {
		return mybatis.selectList("admin.getChartMakingContactUser");

	}

	public List<HashMap<String, String>> getChartReservation() {
		return mybatis.selectList("admin.getChartReservation");
	}

	public int totalSales() {
		return mybatis.selectOne("admin.totalSales");
	}

	public List<HashMap<String, String>> getSalesHistory() {
		return mybatis.selectList("admin.getSalesHistory");
	}



}