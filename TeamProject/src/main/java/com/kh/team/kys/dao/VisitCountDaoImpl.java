package com.kh.team.kys.dao;



import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.team.domain.CjhCartVo;
import com.kh.team.domain.KysVisitCountVo;

@Repository
public class VisitCountDaoImpl implements VisitCountDao {
	

	private final String NAMESPACE = "mappers.kysVisit-mapper.";
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public void insertVisitor(KysVisitCountVo vo) throws Exception {
		sqlSession.insert(NAMESPACE+"insertVisitor",vo);
	}
	@Override
	public int visitNow() throws Exception {
		return sqlSession.selectOne(NAMESPACE+"visitNow");
		
	}
	@Override
	public int visitAll() throws Exception {
		int count = sqlSession.selectOne(NAMESPACE+"visitAll");
		return count;
		
	}
	@Override
	public List<KysVisitCountVo> rodChart() throws Exception {
		
		return sqlSession.selectList(NAMESPACE+"rodChart");
	}
	@Override
	public List<KysVisitCountVo> salesList() throws Exception {
		return sqlSession.selectList(NAMESPACE+"salesList");
	}
	@Override
	public List<KysVisitCountVo> orderList() throws Exception {
		return sqlSession.selectList(NAMESPACE+"orderList");
	}

}
