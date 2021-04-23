package com.kk.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kk.domain.MemberVO;

@Repository("MemberDAO")
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	@Override
	public MemberVO getMember(MemberVO vo) {
		return mybatis.selectOne("member.getMember", vo);
	}

}
