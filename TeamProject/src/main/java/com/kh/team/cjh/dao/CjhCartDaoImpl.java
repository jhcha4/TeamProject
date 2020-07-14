package com.kh.team.cjh.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.team.domain.CjhCartVo;

@Repository
public class CjhCartDaoImpl implements CjhCartDao {
	
	private static final String NAMESPACE = "mappers.cjhcart-mapper.";
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public List<CjhCartVo> getCart(String u_id) throws Exception {
		List<CjhCartVo> list = sqlSession.selectList(NAMESPACE + "getCart", u_id);
		return list;
	}

	@Override
	public void deleteCart(String u_id, int p_num) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("u_id", u_id);
		paramMap.put("p_num", p_num);
		sqlSession.delete(NAMESPACE + "deleteCart", paramMap);
	}

}
