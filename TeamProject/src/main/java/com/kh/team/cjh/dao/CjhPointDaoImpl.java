package com.kh.team.cjh.dao;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CjhPointDaoImpl implements CjhPointDao {
	
	private static final String NAMESPACE = "mappers.cjhpoint-mapper.";
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public void usePoint(String u_id, int totalPrice) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("u_id", u_id);
		paramMap.put("totalPrice", totalPrice);
		sqlSession.update(NAMESPACE + "usePoint", paramMap);
	}

}
