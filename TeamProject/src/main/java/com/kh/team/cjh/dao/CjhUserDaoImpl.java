package com.kh.team.cjh.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.team.domain.CjhUserVo;


@Repository
public class CjhUserDaoImpl implements CjhUserDao {

	private static final String NAMESPACE = "mappers.cjhuser-mapper.";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public CjhUserVo selectUser(String u_id) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "selectUser", u_id);
	}
	
	@Override
	public void updateUser(CjhUserVo userVo) throws Exception {
		sqlSession.update(NAMESPACE + "updateUser", userVo);
	}

	@Override
	public CjhUserVo selectMemberByIdAndPw(String u_id, String u_pw) {
		Map<String, String> paramMap = new HashMap<>();
		paramMap.put("u_id", u_id);
		paramMap.put("u_pw", u_pw);
		return sqlSession.selectOne(NAMESPACE + "selectMemberByIdAndPw", paramMap);
	}

	@Override
	public CjhUserVo selectMemberById(String u_id) {
		CjhUserVo vo = sqlSession.selectOne(NAMESPACE + "selectMemberById", u_id);
		return vo;
	}

	

}
