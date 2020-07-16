package com.kh.team.kys.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kh.team.domain.Kys_BoardDto;
import com.kh.team.domain.Kys_BoardVo;
import com.kh.team.kys.dao.KysBoardDao;

@Service
public class KysBoardServiceImpl implements KysBoardService {
	
	@Inject
	private KysBoardDao boardDao;
	//리스트
	@Override
	public List<Kys_BoardVo> boardList(Kys_BoardDto boardDto) throws Exception {
		List<Kys_BoardVo> list =  boardDao.boardList(boardDto);
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
	@Override
	public int getCount(Kys_BoardDto boardDto) throws Exception {
		
		return boardDao.getCount(boardDto);
	}
	@Override
	public List<Kys_BoardVo> pageList(Kys_BoardDto boardDto) throws Exception {
		return boardDao.boardListPage(boardDto);
	}
	@Override
	public List<Kys_BoardVo> deleteList(Kys_BoardDto boardDto) throws Exception {
		List<Kys_BoardVo> list = boardDao.deleteList(boardDto);
		return list;
	}
	@Override
	public int getDeleteCount(Kys_BoardDto boardDto) throws Exception {
		
		return boardDao.getDeleteCount(boardDto);
	}
	@Override
	public void boardRestoration(int p_num) throws Exception {
		boardDao.boardRestoration(p_num);
		
	}
	
}
