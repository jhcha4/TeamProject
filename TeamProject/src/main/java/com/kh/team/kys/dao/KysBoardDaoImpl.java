package com.kh.team.kys.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.team.domain.Kys_BoardVo;


@Repository
public class KysBoardDaoImpl implements KysBoardDao {
	
	private final String NAMESPACE = "mappers.kysboard-mapper.";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<Kys_BoardVo> boardList() throws Exception {
		
		return sqlSession.selectList(NAMESPACE +"boardList");
	}

	//등록
	@Override
	public void boardInsert(Kys_BoardVo boardVo) throws Exception {
		sqlSession.insert(NAMESPACE + "boardInsert", boardVo);
		

	}
	//수정
	@Override
	public void boardUpdate(Kys_BoardVo boardVo) throws Exception {
		sqlSession.update(NAMESPACE+"boardUpdate",boardVo);

	}
	// 삭제
	@Override
	public void boardDelete(int raiment_num) throws Exception {
		sqlSession.delete(NAMESPACE + "boardDelete",raiment_num);

	}
	//게시물 내용 보기
	@Override
	public Kys_BoardVo boardSelectBy(int raiment_num) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+"boardSelectBy",raiment_num);
	}

	

}
