package com.kh.team.lsh.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kh.team.domain.LshBoardVo;
import com.kh.team.lsh.persistence.LSH_BoardDao;

@Service
public class LSH_BoardServiceImpl implements LSH_BoardService {

	@Inject
	private LSH_BoardDao boardDao;

	@Override
	public List<LshBoardVo> list() throws Exception {
		List<LshBoardVo> list = boardDao.list();
		return list;
	}

	@Override
	public LshBoardVo single(int p_num) throws Exception {
		LshBoardVo boardVo = boardDao.single(p_num);
		return boardVo;
	}

	@Override
	public List<LshBoardVo> mainList(String p_main) throws Exception {
		List<LshBoardVo> mainList = boardDao.mainList(p_main);
		return mainList;
	}

	@Override
	public List<LshBoardVo> serveList(String p_serve) throws Exception {
		List<LshBoardVo> serveList = boardDao.serveList(p_serve);
		return serveList;
	}
	
}
