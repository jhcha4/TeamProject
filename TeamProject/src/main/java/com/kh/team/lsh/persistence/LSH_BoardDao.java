package com.kh.team.lsh.persistence;

import java.util.List;

import com.kh.team.domain.LshBoardDto;
import com.kh.team.domain.LshBoardVo;

public interface LSH_BoardDao {

	public List<LshBoardVo> list(LshBoardDto lshBoardDto, String p_main, String p_serve) throws Exception;
	
	public LshBoardVo single(int p_num) throws Exception;
	
	public int getCount(LshBoardDto lshBoardDto, String p_main, String p_serve) throws Exception;
}

