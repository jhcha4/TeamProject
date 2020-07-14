package com.kh.team.kys.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kh.team.domain.Kys_BoardVo;
import com.kh.team.kys.dao.KysBoardDao;

@Service
public class KysBoardServiceImpl implements KysBoardService {
	
	@Inject
	private KysBoardDao boardDao;
	//리스트
	@Override
	public List<Kys_BoardVo> boardList() throws Exception {
		List<Kys_BoardVo> list =  boardDao.boardList();
		return list;
	}
	//등록
	@Override
	public void boardInsert(Kys_BoardVo boardVo) throws Exception {
		boardDao.boardInsert(boardVo);
		
	}

	@Override
	public void boardUpdate(Kys_BoardVo boardVo) throws Exception {
		boardDao.boardUpdate(boardVo);
		
	}

	@Override
	public void boardDelete(int p_num) throws Exception {
		boardDao.boardDelete(p_num);
	}

	@Override
	public Kys_BoardVo boardSelectBy(int p_num) throws Exception {
			return boardDao.boardSelectBy(p_num);
		
	}

}
