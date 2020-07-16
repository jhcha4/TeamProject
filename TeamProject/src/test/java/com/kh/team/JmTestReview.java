package com.kh.team;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import com.kh.team.jm.JmReviewDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class JmTestReview {

	@Inject
	private JmReviewDao jmReviewDao;
	
	//리뷰게시판 리스트 조회 테스트
	@Test
	public void selectReviewList() throws Exception{
		jmReviewDao.selectReviewList();
	}
	
	
	
}
