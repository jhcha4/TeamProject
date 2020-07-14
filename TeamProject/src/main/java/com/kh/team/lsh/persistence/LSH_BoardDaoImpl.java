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
	public List<LshBoardVo> topList() throws Exception {
		return sqlSession.selectList(NAMESPACE + "TopList");
	}

	@Override
	public List<LshBoardVo> pantsList() throws Exception {
		return sqlSession.selectList(NAMESPACE + "PantsList");
	}

	@Override
	public List<LshBoardVo> shoesList() throws Exception {
		return sqlSession.selectList(NAMESPACE + "ShoesList");
	}

	@Override
	public List<LshBoardVo> accList() throws Exception {
		return sqlSession.selectList(NAMESPACE + "AccList");
	}

	@Override
	public List<LshBoardVo> topServeList(String serve) throws Exception {
		return sqlSession.selectList(NAMESPACE + "ServeList", serve);
	}

	@Override
	public List<LshBoardVo> pantsServeList(String serve) throws Exception {
		return sqlSession.selectList(NAMESPACE + "ServeList", serve);
	}

	@Override
	public List<LshBoardVo> shoesServeList(String serve) throws Exception {
		return sqlSession.selectList(NAMESPACE + "ServeList", serve);
	}

	@Override
	public List<LshBoardVo> accServeList(String serve) throws Exception {
		return sqlSession.selectList(NAMESPACE + "ServeList", serve);
	}


}
