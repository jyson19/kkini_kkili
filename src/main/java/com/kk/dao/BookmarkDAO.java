package com.kk.dao;

import java.util.HashMap;
import java.util.List;

import com.kk.domain.BookmarkVO;
import com.kk.domain.MemberVO;

public interface BookmarkDAO {
	
	public List<HashMap<String, String>> getMemberListByHostId(BookmarkVO user);

	public List<HashMap<String, String>> getMemberListByGuestId(BookmarkVO user);

	public int insertBookmark(BookmarkVO user);

	public int deleteBookmark(BookmarkVO user);
	
	public BookmarkVO selectBookmark(BookmarkVO user);
	
}
