package com.kk.dao;

import java.util.List;

import com.kk.domain.MemberVO;

// MemberDAOImpl에서 구현 예정
public interface MemberDAO {

	MemberVO getMember(MemberVO vo);
	List<MemberVO> getMemberList(MemberVO vo);
	int insertMember(MemberVO vo);
	
}
