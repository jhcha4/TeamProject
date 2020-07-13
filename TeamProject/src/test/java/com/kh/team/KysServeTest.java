package com.kh.team;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.kys.dao.KysServeDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class KysServeTest {
	
	@Inject
	private KysServeDao Dao;
	
	//게시판 소주제 리스트
	@Test
	public void serveList() throws Exception{
		Dao.serveList();
		
	}
	
	//소주제 항목 1개 가져오기
	@Test
	public void OenServeList() throws Exception{
		Dao.OenServeList("TH");
	}
}
