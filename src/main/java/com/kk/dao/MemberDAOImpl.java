package com.kk.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
}
