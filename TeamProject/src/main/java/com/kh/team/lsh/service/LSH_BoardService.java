package com.kh.team.lsh.service;

import java.util.List;

import com.kh.team.domain.LshBoardDto;
import com.kh.team.domain.LshBoardVo;

public interface LSH_BoardService {

	public List<LshBoardVo> list(LshBoardDto lshBoardDto) throws Exception;
	
	public LshBoardVo single(int p_num) throws Exception;
	
	public List<LshBoardVo> mainList(LshBoardDto lshBoardDto, String p_main) throws Exception;
	
	public List<LshBoardVo> serveList(LshBoardDto lshBoardDto, String p_serve) throws Exception;
	
}
