package com.kh.team.kys.dao;

import java.util.List;

import com.kh.team.domain.Kys_BoardVo;


public interface KysBoardDao {
	//게시물 리스트
	public List<Kys_BoardVo> boardList() throws Exception;
	
	//등록 처리 폼
	public void boardInsert(Kys_BoardVo boardVo) throws Exception;
	
	//수정 처리폼
	public void boardUpdate(Kys_BoardVo boardVo) throws Exception;
	
	//삭제 
	public void boardDelete(int p_num) throws Exception;
	
	//게시물 보기
	public Kys_BoardVo boardSelectBy(int p_num) throws Exception;
}
