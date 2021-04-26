package com.kk.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kk.dao.MemberDAOImpl;
import com.kk.domain.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAOImpl memberDAO;  
	
	@Override
	public MemberVO memberSigninService(MemberVO member) {
		return memberDAO.memberSignin(member);
	}
	
}
