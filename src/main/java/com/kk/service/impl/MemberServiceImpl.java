package com.kk.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kk.dao.impl.MemberDAOImpl;
import com.kk.domain.ContactVO;
import com.kk.domain.MemberVO;
import com.kk.service.MemberService;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAOImpl memberDAO;

	@Override
	public MemberVO memberSigninService(MemberVO member) {
		return memberDAO.memberSignin(member);
	}

	@Override
	public MemberVO getMember(MemberVO vo) {
		return memberDAO.getMember(vo);
	}

	@Override
	public List<MemberVO> getMemberList(MemberVO vo) {
		return memberDAO.getMemberList(vo);
	}

	@Override
	public int insertMember(MemberVO vo) {
		return memberDAO.insertMember(vo);
	}
	
	// 비밀번호 갱신
	@Override
	public int updatePassword(MemberVO vo) {
		return memberDAO.passwordUpdate(vo);
	}
	// 최근접속일 갱신
	@Override
	public int updateConnDate(int memberId) {
		return memberDAO.updateConnDate(memberId);
	}
}
