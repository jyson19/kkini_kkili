package com.kk.service;

import java.util.HashMap;
import java.util.List;

import com.kk.domain.CmtVO;

// 댓글 서비스
// CommentServiceImpl로 구현 예정
public interface CmtService {
	
	// 댓글 리스트 가져오기
	List<HashMap<String, String>> getCmtList(CmtVO cmtVO);
	
	// 댓글 삽입
	int insertCmt(CmtVO cmtVO);
	
	// 댓글 삭제
	int deleteCmt(CmtVO cmtVO);
}
