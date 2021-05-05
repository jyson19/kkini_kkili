package com.kk.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kk.dao.BookmarkDAO;
import com.kk.domain.BookmarkVO;
import com.kk.domain.MemberVO;

@Repository("BookmarkDAO")
public class BookmarkDAOImpl implements BookmarkDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<HashMap<String, String>> getMemberListByHostId(BookmarkVO user) {
		return mybatis.selectList("bookmark.getBookmarkListByHostId", user);
	}

	@Override
	public List<HashMap<String, String>> getMemberListByGuestId(BookmarkVO user) {
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
