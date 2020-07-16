package com.kh.team.lsh.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kh.team.domain.LshBoardDto;
import com.kh.team.domain.LshBoardVo;
import com.kh.team.lsh.persistence.LSH_BoardDao;

@Service
public class LSH_BoardServiceImpl implements LSH_BoardService {

	@Inject
	private LSH_BoardDao boardDao;

	@Override
	public List<LshBoardVo> list(LshBoardDto lshBoardDto, String p_main, String p_serve) throws Exception {
		List<LshBoardVo> list = boardDao.list(lshBoardDto, p_main, p_serve);
		return list;
	}
// , String p_main, String p_serve
// , p_main, p_serve
	@Override
	public LshBoardVo single(int p_num) throws Exception {
		LshBoardVo boardVo = boardDao.single(p_num);
		return boardVo;
	}

}
