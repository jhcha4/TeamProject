package com.kh.team.kys.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.team.domain.Kys_ServeVo;

@Repository
public class KysServeDaoImpl implements KysServeDao {
	
	private final String NAMESPACE = "mappers.kysserve-mapper.";
	
	@Inject
	private SqlSession sqlSession;
	//리스트
	@Override
	public List<Kys_ServeVo> serveList() throws Exception {
		return sqlSession.selectList(NAMESPACE + "serveList");

	}
	//1개 가져오기
	@Override
	public Kys_ServeVo OenServeList(String serve_code) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"OenServeList",serve_code);
		

	}

}
