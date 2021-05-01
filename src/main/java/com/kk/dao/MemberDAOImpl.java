package com.kk.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kk.domain.ContactVO;
import com.kk.domain.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	public SqlSessionTemplate mybatis;

	@Override
	public MemberVO memberSignin(MemberVO member) {
		System.out.println("memberSignin 메소드 호출");
		return mybatis.selectOne("member.emailCheck", member);
	}

	@Override
	public MemberVO getMember(MemberVO vo) {
		return mybatis.selectOne("member.getMember", vo);
	}

	@Override
	public List<MemberVO> getMemberList(MemberVO vo) {
		return mybatis.selectList("member.getMemberList", vo);
	}

	@Override
	public int insertMember(MemberVO vo) {
		int result = mybatis.insert("member.insertMember", vo);
		System.out.println(vo);
		System.out.println("MemberDAO: " + result);
		return result;
	}
}
