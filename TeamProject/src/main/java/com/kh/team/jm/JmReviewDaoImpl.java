package com.kh.team.jm;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.team.domain.JmPagingDto;
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

	@Override
	public void updateReview(JmReviewVo jmReviewVo) throws Exception {
		
		sqlSession.update(NAMESPACE+"updateReview",jmReviewVo);
		
	}

	@Override
	public void deleteReview(int r_info) throws Exception {
		sqlSession.delete(NAMESPACE+"deleteReview",r_info);
		
	}

	@Override
	public List<JmReviewVo> selectPaging(JmPagingDto jmPagingDto) throws Exception {
		System.out.println(jmPagingDto);
		List<JmReviewVo> list = sqlSession.selectList(NAMESPACE+"selectPaging",jmPagingDto);
		System.out.println("Dao, list:" + list);
		return list;
	}

	@Override
	public int selectCount(JmPagingDto jmPagingDto) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+"selectCount",jmPagingDto);
	}

	@Override
	public void updateViewCount(int r_info) throws Exception {
		 sqlSession.selectOne(NAMESPACE+"updateViewCount",r_info);
		
	}

}
