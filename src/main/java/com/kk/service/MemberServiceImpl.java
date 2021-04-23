package com.kk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kk.dao.MemberDAO;
import com.kk.domain.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDAO memberDAO;
	
	@Override
	public MemberVO getMember(MemberVO vo) {
		return memberDAO.getMember(vo);
	}

	@Override
	public List<MemberVO> getMemberList(MemberVO vo) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
