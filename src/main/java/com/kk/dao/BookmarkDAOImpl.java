package com.kk.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kk.domain.BookmarkVO;
import com.kk.domain.MemberVO;

@Repository("BookmarkDAO")
public class BookmarkDAOImpl implements BookmarkDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<MemberVO> getMemberListByHostId(BookmarkVO user) {
		return mybatis.selectList("bookmark.getBookmarkListByHostId", user);
	}

	@Override
	public List<MemberVO> getMemberListByGuestId(BookmarkVO user) {
		return mybatis.selectList("bookmark.getBookmarkListByGuestId", user);
	}

	@Override
	public int insertBookmark(BookmarkVO user) {
		return mybatis.insert("bookmark.insertBookmark", user);
	}

	@Override
	public int deleteBookmark(BookmarkVO user) {
		return mybatis.insert("bookmark.deleteBookmark", user);
	}

	public BookmarkVO selectBookmark(BookmarkVO bookmark) {
		return mybatis.selectOne("bookmark.selectBookmark", bookmark);
	}

}
