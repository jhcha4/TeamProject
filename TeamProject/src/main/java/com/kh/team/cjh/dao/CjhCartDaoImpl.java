package com.kh.team.cjh.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.team.domain.CjhUserVo;

@Repository
public class CjhCartDaoImpl implements CjhCartDao {
	
	private static final String NAMESPACE = "mappers.cjhcart-mapper.";
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public List<CjhUserVo> getCart(String u_id) throws Exception {
		List<CjhUserVo> list = sqlSession.selectList(NAMESPACE + "getCart", u_id);
		return list;
	}

}
