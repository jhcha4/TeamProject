package com.kh.team;



import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.domain.JmMemberVo;
import com.kh.team.domain.JmReviewVo;
import com.kh.team.jm.JmReviewDao;
import com.kh.team.jm.JmReviewService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class JmTestReview {

	@Inject
	private JmReviewDao jmReviewDao;
	
	@Inject
	private JmReviewService jmReviewService;
	
	//리뷰게시판 리스트 조회 테스트
	@Test
	public void selectReviewList() throws Exception{
		jmReviewDao.selectReviewList();
	}
	//info 조회 테스트
	@Test
	public void selectList() throws Exception{
		jmReviewService.selectReviewInfo(3);
	}
	
	//게시판 글쓰기
	@Test
	public void insertReview()throws Exception{
		JmReviewVo vo = new JmReviewVo();
		
		vo.setR_id("123");
		vo.setR_subject("123");
		vo.setR_contents("123");
		vo.setR_star(11);
		vo.setR_item(1073);
		
		jmReviewDao.insertReview(vo);
		
	}
	
	
	
	
}
