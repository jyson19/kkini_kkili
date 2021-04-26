package com.kk.service;

import java.util.List;

import com.kk.domain.ContactVO;
import com.kk.domain.MemberVO;

// 회원 서비스
// MemberServiceImpl로 구현 예정
public interface MemberService {

	public MemberVO memberSigninService(MemberVO member);

	MemberVO getMember(MemberVO vo);

	List<MemberVO> getMemberList(MemberVO vo);

	int insertMember(MemberVO vo);

}
