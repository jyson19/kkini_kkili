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
	public HashMap<String, String> getAuth(HostVO vo) {
		HashMap<String, String> result = AdminDAO.getAuth(vo);
		System.out.println(result);
//			result.replace("member_id", String.valueOf(result.get("member_id")));
//			result.replace("host_id", String.valueOf(result.get("host_id")));
//			result.replace("write_date", String.valueOf(result.get("write_date")));
//			result.replace("host_value", String.valueOf(result.get("host_value")));
//			result.replace("auth", String.valueOf(result.get("auth")));
//			result.replace("join_date", String.valueOf(result.get("join_date")));
//			result.replace("last_conn_date", String.valueOf(result.get("last_conn_date")));
//			result.replace("host_value", String.valueOf(result.get("host_value")));
		return result;
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

	
}
