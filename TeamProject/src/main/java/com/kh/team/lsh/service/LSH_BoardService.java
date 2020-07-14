package com.kh.team.lsh.service;

import java.util.List;

import com.kh.team.domain.LshBoardVo;

public interface LSH_BoardService {

	public List<LshBoardVo> list() throws Exception;
	
	public LshBoardVo single(int p_num) throws Exception;
	
	public List<LshBoardVo> mainList(String p_main) throws Exception;
	
	public List<LshBoardVo> serveList(String p_serve) throws Exception;
	
}
