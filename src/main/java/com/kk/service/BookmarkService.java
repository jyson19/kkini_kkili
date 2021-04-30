package com.kk.service;

import java.util.HashMap;
import java.util.List;

import com.kk.domain.BookmarkVO;
import com.kk.domain.MemberVO;

public interface BookmarkService {
	List<HashMap<String, String>> getMemberListByHostId(BookmarkVO bookmark);
	List<HashMap<String, String>> getMemberListByGuestId(BookmarkVO bookmark);
	
	BookmarkVO selectBookmark(BookmarkVO bookmark);
	
	int insertBookmark(BookmarkVO bookmark);
	
	// 게스트가 호스트를 일방향으로 추가하는 경우 이기 때문에, 삭제시에 호스트와 게스트 id를 둘다 얻어서 일치하면 삭제
	int deleteBookmark(BookmarkVO bookmark);
}
