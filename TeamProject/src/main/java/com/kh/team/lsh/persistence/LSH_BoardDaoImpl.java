package com.kh.team.lsh.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.team.domain.LshBoardVo;

@Repository
public class LSH_BoardDaoImpl implements LSH_BoardDao {

	private static final String NAMESPACE = "mappers.lshboard-mapper.";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<LshBoardVo> list() throws Exception {
		return sqlSession.selectList(NAMESPACE + "list");
	}
	
	@Override
	public LshBoardVo single(int p_num) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "single", p_num);
	}

	@Override
	public List<LshBoardVo> mainList(String p_main) throws Exception {
		return sqlSession.selectList(NAMESPACE + "MainList", p_main);
	}

	@Override
	public List<LshBoardVo> serveList(String p_serve) throws Exception {
		return sqlSession.selectList(NAMESPACE + "ServeList", p_serve);
	}


}
