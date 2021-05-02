package com.kk.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kk.domain.ContactVO;
import com.kk.domain.PagingCriteria;

@Repository("ContactDAO")
public class ContactDAOImpl implements ContactDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	// 컨택 리스트
	@Override
	public List<Map<String, String>> getContactList(PagingCriteria paging) {
		System.out.println("ContactDAOImpl.getContactList");
		return mybatis.selectList("contact.getContactList", paging);
	}

	// 컨택 검색
	public List<Map<String, String>> searchContactList(Map m) {
		System.out.println("검색 결과 수 : " + mybatis.selectList("contact.getSearchList", m).size());
		return mybatis.selectList("contact.getSearchList", m);
	}

	// 글 갯수
	public int totalCnt() {
		return mybatis.selectOne("contact.getTotalCnt");
	}

	// 컨택 1개 반환
	public Map<String, String> getContactOne(int memberId) {
		return mybatis.selectOne("contact.getContactOne", memberId);
	}

	// 컨택 생성
	public int insertContact(ContactVO vo) {
		return mybatis.insert("contact.insertContact", vo);
	}

	// 컨택 생성-프로필
	public Map<String, String> getHostProfile(int memberId) {
		return mybatis.selectOne("contact.getHostProfile", memberId);
	}

	// 나의 컨택 정보 가져오기
	public List<Map<String, String>> getMyContactList(int memberId) {
		return mybatis.selectList("contact.getMyContactList", memberId);
	}

	// 컨택 가치 확인
	public List<Map<String, String>> contactValue(int memberId) {
		return mybatis.selectList("contact.contactValue", memberId);
	}

	// 컨택 비드 페이지
	@Override
	public Map<String, String> getBidView(int contactId) {
		return mybatis.selectOne("contact.getBidView", contactId);

	}

	// 컨택 입찰
	@Override
	public int bidUpdate(HashMap<String, String> map) {
		int bidResult = mybatis.update("contact.bidUpdate", map);
		int hisResult = mybatis.insert("contact.insertHistory", map);
		return (bidResult + hisResult);
	}

	// 컨택 최고가 확인
	@Override
	public int lastValueCheck(int contactId) {
		return mybatis.selectOne("contact.lastValueCheck", contactId);
	}

	// 컨택 만남처리
	@Override
	public int qrCheckIn(ContactVO contact) {
		return mybatis.update("contact.qrCheckIn", contact);
	}

	// 컨택 수익배분
	@Override
	public int addRevenue(String contactId) {
		int hostResult = mybatis.update("contact.updateHostRevenue", Integer.parseInt(contactId));
		System.out.println("컨택 수익배분 호스트 결과(1:성공, 0:실패) : " + hostResult);
		int AdminResult = mybatis.insert("contact.addAdminRevenue", Integer.parseInt(contactId));
		System.out.println("컨택 수익배분 관리자 결과(1:성공, 0:실패) : " + AdminResult);
		return (hostResult + AdminResult);
	}
}
