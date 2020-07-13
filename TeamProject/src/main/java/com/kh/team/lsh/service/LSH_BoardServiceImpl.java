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
	public List<LshBoardVo> TH_List() throws Exception {
		List<LshBoardVo> TH_List = boardDao.TH_List();
		return TH_List;
	}

}
