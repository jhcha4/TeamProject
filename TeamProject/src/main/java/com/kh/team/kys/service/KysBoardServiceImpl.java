package com.kh.team.kys.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

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
		int p_num = boardDao.getNextVal();
		boardVo.setP_num(p_num);
		boardDao.boardInsert(boardVo);
		System.out.println("p_file : "+boardVo.getP_files());
		
		String[] files = boardVo.getP_files();
		for (String file_name : files) {
			boardDao.imgFile(file_name, p_num);
		}
	}
	//수정 처리
	@Override
	public void boardUpdate(Kys_BoardVo boardVo) throws Exception {
		boardDao.boardUpdate(boardVo);
	}

	@Override
	public void boardDelete(int p_num) throws Exception {
		boardDao.boardDelete(p_num);
	}
	//게시물 1개 불러오기
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
	
	@Override
	public void delete(int p_num) throws Exception {
		boardDao.delete(p_num);
		
	}
	@Override
	public List<Kys_BoardVo> imgSelectBy(int p_num) throws Exception {
		List<Kys_BoardVo> listImg = boardDao.imgSelectBy(p_num);
		return listImg;
	}
	
}
