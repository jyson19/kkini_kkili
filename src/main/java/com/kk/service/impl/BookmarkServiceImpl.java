package com.kk.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kk.dao.impl.BookmarkDAOImpl;
import com.kk.domain.BookmarkVO;
import com.kk.domain.MemberVO;
import com.kk.service.BookmarkService;

@Service("bookmarkService")
public class BookmarkServiceImpl implements BookmarkService{

	@Autowired
	private BookmarkDAOImpl bookmarkDAO;
	
	@Override
	public List<HashMap<String, String>> getMemberListByHostId(BookmarkVO bookmark) {
		return bookmarkDAO.getMemberListByHostId(bookmark);
	}

	@Override
	public List<HashMap<String, String>> getMemberListByGuestId(BookmarkVO bookmark) {
		return bookmarkDAO.getMemberListByGuestId(bookmark);
	}

	@Override
	public int insertBookmark(BookmarkVO bookmark) {
		return bookmarkDAO.insertBookmark(bookmark);
	}

	@Override
	public int deleteBookmark(BookmarkVO bookmark) {
		return bookmarkDAO.deleteBookmark(bookmark);
	}

	@Override
	public BookmarkVO selectBookmark(BookmarkVO bookmark) {
		return bookmarkDAO.selectBookmark(bookmark);
	}

}
