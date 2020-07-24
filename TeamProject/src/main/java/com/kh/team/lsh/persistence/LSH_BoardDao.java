package com.kh.team.lsh.persistence;

import java.util.List;

import com.kh.team.domain.LshBoardDto;
import com.kh.team.domain.LshBoardVo;

public interface LSH_BoardDao {

	// 전체상품 리스트
	public List<LshBoardVo> list(LshBoardDto lshBoardDto, String p_main, String p_serve) throws Exception;
	
	// 상품 한개 화면
	public LshBoardVo single(int p_num) throws Exception;
	
	// 상품별 갯수 얻기
	public int getCount(LshBoardDto lshBoardDto, String p_main, String p_serve) throws Exception;
	
	// 조회수 얻기
	public void updateViewCnt(int p_num) throws Exception;
	
	// 관련 상품 리스트
	public List<LshBoardVo> MostList(String p_serve, int p_num) throws Exception;
	
	// 이미지 불러오기
	public List<LshBoardVo> getImg(int p_num) throws Exception;
	
}

