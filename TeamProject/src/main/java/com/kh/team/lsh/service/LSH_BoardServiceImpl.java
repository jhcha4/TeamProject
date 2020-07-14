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
	public List<LshBoardVo> topList() throws Exception {
		List<LshBoardVo> topList = boardDao.topList();
		return topList;
	}

	@Override
	public List<LshBoardVo> pantsList() throws Exception {
		List<LshBoardVo> pantsList = boardDao.pantsList();
		return pantsList;
	}

	@Override
	public List<LshBoardVo> shoesList() throws Exception {
		List<LshBoardVo> shoesList = boardDao.shoesList();
		return shoesList;
	}

	@Override
	public List<LshBoardVo> accList() throws Exception {
		List<LshBoardVo> accList = boardDao.accList();
		return accList;
	}

	@Override
	public List<LshBoardVo> topServeList(String serve) throws Exception {
		List<LshBoardVo> topServeList = boardDao.topServeList(serve);
		return topServeList;
	}

	@Override
	public List<LshBoardVo> pantsServeList(String serve) throws Exception {
		List<LshBoardVo> pantsServeList = boardDao.pantsServeList(serve);
		return pantsServeList;
	}

	@Override
	public List<LshBoardVo> shoesServeList(String serve) throws Exception {
		List<LshBoardVo> shoesServeList = boardDao.shoesServeList(serve);
		return shoesServeList;
	}

	@Override
	public List<LshBoardVo> accServeList(String serve) throws Exception {
		List<LshBoardVo> accServeList = boardDao.accServeList(serve);
		return accServeList;
	}

}
