package com.kh.team.jm;

import java.util.List;

import com.kh.team.domain.JmReviewVo;

public interface JmReviewDao {

	//리뷰 게시판 목록 조회
	public List<JmReviewVo> selectReviewList() throws Exception; 
	
	//리뷰 게시판 info 조회	
	public JmReviewVo selectReviewInfo(int r_info) throws Exception;
	
	//게시판 글쓰기
	public void insertReview(JmReviewVo jmReviewVo)throws Exception;
	
	// 리뷰 게시판 업데이트 //받는거//파라미터(아규먼트)
	public void updateReview(JmReviewVo jmReviewVo)throws Exception;
	
	//리뷰 게시판 삭제기능
	public void deleteReview(int r_info)throws Exception;
}
