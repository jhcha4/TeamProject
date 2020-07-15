package com.kh.team.kys.service;

import java.util.List;

import com.kh.team.domain.Kys_BoardDto;
import com.kh.team.domain.Kys_BoardVo;


public interface KysBoardService {
	
	//게시물 리스트
		
	public List<Kys_BoardVo> boardList() throws Exception;
		//등록  
		public void boardInsert(Kys_BoardVo boardVo) throws Exception;
		//수정 
		public void boardUpdate(Kys_BoardVo boardVo) throws Exception;
		//삭제 
		public void boardDelete(int p_num) throws Exception;
		//게시물 보기
		public Kys_BoardVo boardSelectBy(int p_num) throws Exception;
		//게시글 수
		public int getCount(Kys_BoardDto boardDto) throws Exception;
		//게시글 페이징
		public List<Kys_BoardVo> pageList(Kys_BoardDto boardDto) throws Exception;
}
