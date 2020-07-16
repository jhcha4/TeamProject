package com.kh.team.jm;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

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

}
