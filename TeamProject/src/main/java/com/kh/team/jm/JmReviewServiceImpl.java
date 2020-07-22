package com.kh.team.jm;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kh.team.domain.JmMemberVo;
import com.kh.team.domain.JmPagingDto;
import com.kh.team.domain.JmReviewVo;

@Service
public class JmReviewServiceImpl implements JmReviewService {

	@Inject
	private JmReviewDao jmReviewDao;
	
	
	
	@Override
	public List<JmReviewVo> selectReviewList() throws Exception {
		List<JmReviewVo> list = jmReviewDao.selectReviewList();
		return list;
	}



	@Override
	public JmReviewVo selectReviewInfo(int r_info) throws Exception {
		JmReviewVo jmReviewVo = jmReviewDao.selectReviewInfo(r_info);
		return jmReviewVo;
	}



	@Override
	public void insertReview(JmReviewVo jmReviewVo) throws Exception {
		jmReviewDao.insertReview(jmReviewVo);
		
	}



	@Override
	public void updateReview(JmReviewVo jmReviewVo) throws Exception {
		jmReviewDao.updateReview(jmReviewVo);
		
	}



	@Override
	public void deleteReview(int r_info) throws Exception {
		jmReviewDao.deleteReview(r_info);
		
	}



	@Override
	public List<JmReviewVo> selectPaging(JmPagingDto jmPagingDto) throws Exception {
		List<JmReviewVo> list = jmReviewDao.selectPaging(jmPagingDto);
		return list;
	}



	@Override
	public int selectCount(JmPagingDto jmPagingDto) throws Exception {
		
		return jmReviewDao.selectCount(jmPagingDto);
	}



	

}
