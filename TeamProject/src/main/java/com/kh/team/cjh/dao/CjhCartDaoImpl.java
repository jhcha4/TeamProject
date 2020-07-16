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

	//	장바구니 불러오기
	@Override
	public List<CjhCartVo> getCart(String u_id) throws Exception {
		List<CjhCartVo> list = sqlSession.selectList(NAMESPACE + "getCart", u_id);
		return list;
	}

	//	장바구니 삭제
	@Override
	public void deleteCart(String u_id, int p_num) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("u_id", u_id);
		paramMap.put("p_num", p_num);
		sqlSession.delete(NAMESPACE + "deleteCart", paramMap);
	}

	//	장바구니 갯수 불러오기
	@Override
	public int getCountCart(String u_id) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getCountCart", u_id);
	}

	//	장바구니 갱신
	@Override
	public void updateCart(String u_id, int p_num, int p_count) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("u_id", u_id);
		paramMap.put("p_num", p_num);
		paramMap.put("p_count", p_count);
		sqlSession.update(NAMESPACE + "updateCart", paramMap);
	}

}
