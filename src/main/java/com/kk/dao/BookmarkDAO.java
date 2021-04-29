package com.kk.dao;

import java.util.List;

import com.kk.domain.BookmarkVO;
import com.kk.domain.MemberVO;

public interface BookmarkDAO {
	
	public List<MemberVO> getMemberListByHostId(BookmarkVO user);

	public List<MemberVO> getMemberListByGuestId(BookmarkVO user);

	public int insertBookmark(BookmarkVO user);

	public int deleteBookmark(BookmarkVO user);
	
	public BookmarkVO selectBookmark(BookmarkVO user);
	
}
