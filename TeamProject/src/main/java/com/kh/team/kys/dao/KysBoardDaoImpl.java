package com.kh.team.kys.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.team.domain.Kys_BoardDto;
import com.kh.team.domain.Kys_BoardVo;


@Repository
public class KysBoardDaoImpl implements KysBoardDao {
	
	private final String NAMESPACE = "mappers.kysboard-mapper.";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<Kys_BoardVo> boardList(Kys_BoardDto boardDto) throws Exception {
		
		return sqlSession.selectList(NAMESPACE +"boardList");
	}

	//등록
	@Override
	public void boardInsert(Kys_BoardVo boardVo) throws Exception {
		sqlSession.insert(NAMESPACE + "boardInsert", boardVo);
		

	}

	@Override
	public void boardUpdate(Kys_BoardVo boardVo) throws Exception {
		sqlSession.update(NAMESPACE+"boardUpdate",boardVo);

	}
	// 삭제
	@Override
	public void boardDelete(int p_num) throws Exception {
		sqlSession.update(NAMESPACE + "boardDelete",p_num);

	}
	//게시물 내용 보기
	@Override
	public Kys_BoardVo boardSelectBy(int p_num) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"boardSelectBy",p_num);

	}

	@Override
	public void selectByTow(String p_main, String p_serve) throws Exception {
		Map<String, Object> paraMap = new HashMap<>();
		paraMap.put("p_main", p_main);
		paraMap.put("p_serve", p_serve);
		sqlSession.selectList(NAMESPACE+"selectByTow",paraMap);
	
	}


	//게시물 페이징
	@Override
	public List<Kys_BoardVo> boardListPage(Kys_BoardDto boardDto) throws Exception {
		List<Kys_BoardVo> pageList = sqlSession.selectList(NAMESPACE+"boardListPage",boardDto);
		return pageList;
	}
	
	//삭제처리된 게시물 복구
	@Override
	public List<Kys_BoardVo> deleteList(Kys_BoardDto boardDto) throws Exception {
		return sqlSession.selectList(NAMESPACE+"deleteList",boardDto);
		
	}
	//게시된 게시글 수
		@Override
		public int getCount(Kys_BoardDto boardDto) throws Exception {
			return sqlSession.selectOne(NAMESPACE+"getCount",boardDto);
		
		}
		//삭제된 게시글 수
		@Override
		public int getDeleteCount(Kys_BoardDto boardDto) throws Exception {
			return sqlSession.selectOne(NAMESPACE+"getDeleteCount",boardDto);
		}
		//삭제 복구
		@Override
		public void boardRestoration(int p_num) throws Exception {
			sqlSession.update(NAMESPACE+"boardRestoration",p_num);
		}
		//완전 삭제
		@Override
		public void delete(int p_num) throws Exception {
			sqlSession.delete(NAMESPACE+"delete",p_num);
			
		}
		

}
