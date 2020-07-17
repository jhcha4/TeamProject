package com.kh.team.jm;

import java.util.List;

import com.kh.team.domain.JmReviewVo;

public interface JmReviewService {

	
	//리뷰 게시판 목록 조회
	public List<JmReviewVo> selectReviewList() throws Exception;
	
	//리뷰 게시판 info 조회	
	public JmReviewVo selectReviewInfo(int r_info) throws Exception;
	
	//게시판 글쓰기
	public void insertReview(JmReviewVo jmReviewVo)throws Exception;
}
