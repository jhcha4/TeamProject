package com.kh.team.jm;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.team.domain.JmReviewVo;

@Repository
public class JmReviewDaoImpl implements JmReviewDao {

	public static final String NAMESPACE ="mappers.review-mapper.";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<JmReviewVo> selectReviewList() throws Exception {
		
		return sqlSession.selectList(NAMESPACE+"selectReviewList");
	}

	@Override
	public JmReviewVo selectReviewInfo(int r_info) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+"selectReviewInfo",r_info);
	}

	@Override
	public void insertReview(JmReviewVo jmReviewVo) throws Exception {
		
		sqlSession.insert(NAMESPACE+"insertReview",jmReviewVo);
		
	}

}
