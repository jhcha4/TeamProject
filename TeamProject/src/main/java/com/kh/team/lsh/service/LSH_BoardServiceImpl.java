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
	
	@Override
	public LshBoardVo single(int p_num) throws Exception {
		boardDao.updateViewCnt(p_num);
		LshBoardVo boardVo = boardDao.single(p_num);
		return boardVo;
	}

	@Override
	public int getCount(LshBoardDto lshBoardDto, String p_main, String p_serve) throws Exception {
		return boardDao.getCount(lshBoardDto, p_main, p_serve);
	}

	@Override
	public List<LshBoardVo> MostList(String p_serve, int p_num) throws Exception {
		return boardDao.MostList(p_serve, p_num);
	}

	@Override
	public List<LshBoardVo> getImg(int p_num) throws Exception {
		List<LshBoardVo> getImgList = boardDao.getImg(p_num);
		return getImgList;
	}

}
