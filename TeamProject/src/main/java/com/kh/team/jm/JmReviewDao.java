package com.kh.team.jm;

import java.util.List;

import com.kh.team.domain.JmReviewVo;

public interface JmReviewDao {

	//리뷰 게시판 목록 조회
	public List<JmReviewVo> selectReviewList() throws Exception; 
	
	
	
	
}
