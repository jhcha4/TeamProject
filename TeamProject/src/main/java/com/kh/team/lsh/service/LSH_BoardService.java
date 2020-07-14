package com.kh.team.lsh.service;

import java.util.List;

import com.kh.team.domain.LshBoardVo;

public interface LSH_BoardService {

	public List<LshBoardVo> list() throws Exception;
	
	public List<LshBoardVo> topList() throws Exception;
	
	public List<LshBoardVo> pantsList() throws Exception;
	
	public List<LshBoardVo> shoesList() throws Exception;
	
	public List<LshBoardVo> accList() throws Exception;
	
}
