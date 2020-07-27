package com.kh.team.kys.dao;



import javax.inject.Inject;
import javax.swing.plaf.synth.SynthSeparatorUI;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.team.domain.KysVisitCountVo;

@Repository
public class VisitCountDaoImpl implements VisitCountDao {
	
	private final String NAMESPACE = "mappers.kysboard-mapper.";
	
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

}
