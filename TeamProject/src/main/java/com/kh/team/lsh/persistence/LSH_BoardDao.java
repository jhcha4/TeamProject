package com.kh.team.lsh.persistence;

import java.util.List;

import com.kh.team.domain.LshBoardVo;

public interface LSH_BoardDao {

	public List<LshBoardVo> list() throws Exception;
}
