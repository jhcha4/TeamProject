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

	//	유저의 포인트 차감
	@Override
	public void usePoint(String u_id, int totalPrice) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("u_id", u_id);
		paramMap.put("totalPrice", totalPrice);
		sqlSession.update(NAMESPACE + "usePoint", paramMap);
	}

	//	유저의 포인트 적립
	@Override
	public void getPoint(String u_id, int totalPrice) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("u_id", u_id);
		paramMap.put("totalPrice", totalPrice * 0.1);
		sqlSession.update(NAMESPACE + "getPoint", paramMap);
	}
	
	//	결제시 포인트 차감
	@Override
	public void minusPoint(String u_id, int totalPrice) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("u_id", u_id);
		paramMap.put("totalPrice", totalPrice);
		sqlSession.selectOne(NAMESPACE + "minusPoint", paramMap);
	}

	//	결제시 포인트 적립
	@Override
	public void plusPoint(String u_id, int totalPrice) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("u_id", u_id);
		paramMap.put("totalPrice", totalPrice * 0.1);
		sqlSession.selectOne(NAMESPACE + "plusPoint", paramMap);
	}
}
