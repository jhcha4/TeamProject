package com.kh.team.jm;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class JmMemberDaoImpl implements JmMemberDao {

	
	public static final String NAMESPACE = "mappers.member-mapper.";
	
	@Inject
	private SqlSession SqlSession;
	
	
	@Override
	public JmMemberVo selectMemberUserIdPw(JmMemberVo vo) {
		JmMemberVo vos = SqlSession.selectOne(NAMESPACE+"selectMemberUserIdPw" ,vo);
		return vos;
	}

	@Override
	public void insertMember(JmMemberVo vo) {
		SqlSession.insert(NAMESPACE+"insertMember" ,vo);
		
	}

}
